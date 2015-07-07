public class MainBusiness_Ctrl {

	public Opportunity oppRecord { get; set;}
	public Account accRecord { get; set;}

	public MainBusiness_Ctrl() {
		String oppId = ApexPages.currentPage().getParameters().get('Id');

		if (oppId != null && oppId.trim() != '') {
			List <Opportunity> oppList = [SELECT 
												Id, AccountId, Type_of_Entity__c, Purpose_of_Funds__c, Partner_Email_1__c, 
												Renewal_Number__c,
												Business_Category__c, Confirmed_additional_business_1_address__c, 
												Partner_Email_2__c, Partner_Email_3__c,
												EC_X4_consecutive_months_of_processing__c, 
												X4_consecutive_months_of_Bank_Statements__c,
												Current_Balance_Sheet__c, EC_X12_separate_daily_deposits_per_month__c,
												//X2_years_in_business__c,
												BA_X2_years_in_business__c,
												Partner_Email_4__c,
												EC_Criteria_Decision__c, Partner_Email_5__c, Partner_Email_6__c,
												EC_Company_in_business_6_months__c,
												Approved_With_Conditions__c, Best_Number_To_Call__c, Processor_Name__c, 
												Current_Processor__c
											FROM 
												Opportunity 
											WHERE 
												Id = : oppId LIMIT 1];

			if (!oppList.isEmpty()) {
				oppRecord = oppList.get(0);
				List <Account> accountList = [SELECT 
													Id, Name, Legal_Name__c,
													BillingStreet, BillingCity, BillingState, BillingPostalCode,
													Phone, Fax, Email_Address__c,
													FederalTaxID__c, Number_of_Locations__c,
													Number_of_Terminals_at_Location__c,
													DateBusinessStarted__c, Owned_Business_Since__c,
													Does_the_Merchant_Own_the_Building__c,
													Landlord_Agent_Name__c, Landlord_Agent_Phone__c,
													Time_Remaining_On_Lease__c, Federal_or_State_Tax_Liens__c,
													Location_2_DBA_NAME__c, Location_2_Address__c,
													Location_3_DBA_NAME__c, Location_3_Address__c,
													Location_4_DBA_NAME__c, Location_4_Address__c,
													Location_1_DBA_NAME__c, Location_1_Address__c
												FROM 
													Account 
												WHERE 
													Id = : oppRecord.AccountId];
													
				if (!accountList.isEmpty()) {
					accRecord = accountList.get(0);
				} 
				else {
					accRecord = new Account();
				}
			}
		} else {
			ApexPages.addMessage(new ApexPages.Message(ApexPages.Severity.ERROR, 'Opportunity Id Does not Exist!'));
		}
	}

	public PageReference doSave() {
		Savepoint sp = Database.setSavepoint();
		try {
			if (accRecord != null) {
				upsert accRecord;
				if (accRecord.Id != null) {
					oppRecord.AccountId = accRecord.Id;
				}
			}
			if(oppRecord != null){
				upsert oppRecord;
				ApexPages.addMessage(new ApexPages.Message(ApexPages.Severity.confirm, 'Main Business Information Saved Successfully!'));
			}
		} 
		catch (Exception e) {
			Database.rollback(sp);
			ApexPages.addMessage(new ApexPages.Message(ApexPages.Severity.ERROR, e.getMessage()));
		}
		return null;
	}

}