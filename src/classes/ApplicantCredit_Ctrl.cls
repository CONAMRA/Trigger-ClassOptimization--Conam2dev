public class ApplicantCredit_Ctrl {

	public Opportunity oppRecord{get; set;}
     public Contact conRecord{get; set;}
     public Contact pricipal1Record{get; set;}
     public Contact pricipal2Record{get; set;}
     public Decimal applicant1FICO{get; private set;}
     public Decimal applicant1PrevFICO{get; private set;}
     public String creditBureauSummary{get; private set;}
     public String equityInHome{get; private set;}

	public ApplicantCredit_Ctrl() {
		String oppId = ApexPages.currentPage().getParameters().get('Id');
		conRecord = new Contact();

		if (oppId != null && oppId.trim() != '') {
			List<Opportunity> oppList = [SELECT 
												Id, AccountId, Confirmed_Contact_Phone_Number__c, 
												Confirmed_Contact_Mobile_Number__c, Confirmed_Add_l_Signer_Phone_Number__c,
											    Confirmed_Add_l_Signer_Mobile_Number__c, Mortgage_Delinquent__c, 
											    Tax_Liens_Open__c, Judgements_Open__c, Individual_Bankruptcies__c, 
											    Individual_Bankruptcies_Additional_Notes__c,
												//Does_the_Merchant_Own_Their_Home__c, 
												Does_the_Merchant__c, What_is_the_value_of_their_home__c,
												Home_value_confirmed_through__c, What_is_their_home_mortgage_balance__c,
												Are_there_any_Odd_Large_Deposits__c, Are_there_any_Competitor_Debits__c,
												Bank_Statement_LegalDBA_Voided_Check__c, Bank_Statement_Legal_DBA_FRSA__c,
												Bank_Name__c, Account_Number_For_Funding__c, Routing_Number__c,
												Business_name_check_match_contract__c, Are_there_special_wiring_instructions__c,
												Previous_FICO__c, Previous_Applicant_2_FICO__c, Confirmed_Information_From_QC__c,
												Address_on_Check_Match_FRSA__c, Address_on_Check_Match_Bank_Statement__c,
												AddressOnCheckIf_no_please_explain__c, Called_Confirmed_Contact_Email__c,
												Confirmed_primary_signer_fax_number__c, Confirmed_primary_signer_e_mail__c,
												Confirmed_additional_signer_phone_s__c, Confirmed_additional_signer_fax_number__c,
												Confirmed_additional_signer_e_mail__c, CRR__c, Contact__c, Applicant_2_FICO__c,
												Previous_Opportunity__r.Applicant_2_FICO__c, Sales_Check_List_Notes__c,
												Contact__r.Name, ContactID__c, Eligible_Photo_ID__c, SA_Internal_Notes__c,
												Manual_Applicant_1_FICO_Score__c, Manual_Applicant_2_FICO_Score__c,
												Sales_Note_to_UW_Processing__c
											FROM 
												Opportunity 
											WHERE 
												Id = : oppId LIMIT 1];

			if (!oppList.isEmpty()) {
				oppRecord = oppList.get(0);
				Map<ID, String> contactRoleMap = new Map <ID, String> ();
				Set<String> roleSet = new Set<String> ();

				List<OpportunityContactRole> oppRoleList = [SELECT 
																	ContactId, Role 
																FROM
																	OpportunityContactRole 
																WHERE 
																	OpportunityId = : oppRecord.Id
																	AND Contact.IsDeleted = false
																	AND(Role = 'Principal 1'
																	or Role = 'Principal 2')];


				for (OpportunityContactRole opprole: oppRoleList) {
					if ((!roleSet.contains(opprole.Role)) && (!contactRoleMap.containsKey(opprole.ContactId))) {
						contactRoleMap.put(opprole.ContactId, opprole.Role);
						roleSet.add(opprole.Role);
					}
				}

				if (!contactRoleMap.IsEmpty()) {

					List<Contact> contactList = [SELECT 
														c.Id, c.Name, c.ContactID__c, c.AccountId,
														c.Principal_Home_Phone__c,
														c.Principal_2_Mobile__c, c.OwnershipPercentage__c,
														c.MobilePhone, c.MailingStreet,
														c.MailingState, c.MailingPostalCode,
														c.MailingCity, c.Fax, c.Email, c.Date_of_Birth__c
													FROM 
														Contact c 
													WHERE 
														Id IN: contactRoleMap.keySet()];
					if (!contactList.isEmpty()) {
						for (Contact c: contactList) {
							if (contactRoleMap.get(c.Id) == 'Principal 1') {
                                System.debug('========== contactRoleMap.get(c.Id) ' +contactRoleMap.get(c.Id));
                               
								pricipal1Record = c;
							} else if (contactRoleMap.get(c.Id) == 'Principal 2') {
								pricipal2Record = c;
							}
						}
					}
				}

				applicant1FICO = FormulaFieldUtility.ccApplicant1FICO;
				applicant1PrevFICO = FormulaFieldUtility.applicant1PrevFICO;
				creditBureauSummary = FormulaFieldUtility.creditBureauSummary;
				equityInHome = FormulaFieldUtility.equityInHome;
			}
		} else {
			ApexPages.addMessage(new ApexPages.Message(ApexPages.Severity.ERROR, 'Opportunity Id Does not Exist!'));
		}
	}

	public PageReference doSave() {

		try {
			/* if(conRecord != null && conRecord.AccountId == null) {
                conRecord.AccountId = oppRecord.AccountId;  
            }
            System.debug('>>>>' + conRecord.Principal_2_First_Name__c);
            upsert conRecord;  
            
            if(conRecord.Id != null && oppRecord.Contact__c == null) {
                oppRecord.Contact__c = conRecord.Id;   
            }*/
			if(oppRecord != NULL){
				upsert oppRecord;
			}
			ApexPages.addMessage(new ApexPages.Message(ApexPages.Severity.confirm, 'Applicant & Credit Information Saved Successfully!'));
		} catch (Exception e) {
			ApexPages.addMessage(new ApexPages.Message(ApexPages.Severity.ERROR, e.getMessage()));
		}
		return null;
	}

}