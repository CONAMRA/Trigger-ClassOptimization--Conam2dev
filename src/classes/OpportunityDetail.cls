global class OpportunityDetail {

	public OpportunityDetail(ApexPages.StandardController controller) {
		
		try {
			isVisible = false;
			String op = ApexPages.currentPage().getParameters().get('id');
			
			if (op != null && op.trim() != '') {
				opp = [SELECT 
						   Renewal_Number__c, Renewal__c, campaign.name, Confirmed_business_DBA_name__c, 
						   Account_Database_Entry_Due_Date__c, Account_Database_Entry__c, Id, Name, StageName, Type, AccountId, 
						   Account.BillingCity, Account.BillingCountry, Account.BillingState,
						   Account.BillingStreet, Account.BillingPostalCode, Account.Roll_up_Approved__c, Account.Fax, 
						   Account.DateBusinessStarted__c, Account.Phone,
						   Account.Name, Account.FederalTaxID__c, Account.First_Funding_Date__c, 
						   Account.Most_Recent_Funded_Renewal_Date__c, Time_For_Renewal_Date__c, Account.Last_Renewal_Date__c,
						   CreatedDate, Account.Last_Created_Opportunity__c, Account.Legal_Name__c, 
						   Account.Months_with_Current_Processor__c,
						   Account.Number_of_Locations__c, Account.Number_of_Terminals_at_Location__c, Syndication_Amount__c, 
						   Product__c,
						   PrimaryCampaignSource__c, OwnerId, LastModifiedById, CreatedById, Amount, Advance_ID__c, 
						   Account_In_Risk__c,
						   Account.Owned_Business_Since__c, Account.BusinessType__c, Pay_Back_Amount__c, Percent_Payback__c, 
						   Loan_Term_Days__c,
						   Account.ownerId, Account.Type, Purchase_Amount__c, Underwriter_Assigned__c, 
						   Processing_Representative__c, Auto_Decisioned_By__c, Opportunity_Number__c, Processing_Rep_Assigned__c, 
						   Submit_to_UW_Processing__c, CALC_Link__c, Notes_Link__c 
					   FROM 
					       Opportunity 
					   WHERE 
					       Id = : op];
				
				EstimatedDailyTransactions = ((Decimal.valueof(FormulaFieldUtility.estimatedDailyRepay)).setScale(2)) + '';
			} 
			else {
				ApexPages.Message msg = new ApexPages.Message(ApexPages.Severity.Error, 'Please provide Opportunity ID');
				ApexPages.addMessage(msg);
			}
		} 
		catch (Exception ex) {
			ApexPages.Message msg = new ApexPages.Message(ApexPages.Severity.Error, 'An exception occurred' + ex.getMessage());
			ApexPages.addMessage(msg);
		}
	}

	global boolean isVisible {get; set;}
    global String btntext {get; set;}
    global Opportunity opp {get; set;}
    global String EstimatedDailyTransactions {get; private set;}

	global OpportunityDetail() {
		
		btnText = 'Edit';
		try {
			isVisible = false;
			String op = ApexPages.currentPage().getParameters().get('id');
			
			if (op != null && op.trim() != '') {
				opp = [SELECT 
					   	Renewal_Number__c, Renewal__c, campaign.name, Confirmed_business_DBA_name__c, 
					   	Account_Database_Entry_Due_Date__c, Account_Database_Entry__c, Id, Name, StageName, Type, AccountId, 
					   	Account.BillingCity, Account.BillingCountry, Account.BillingState,
					   	Account.BillingStreet, Account.BillingPostalCode, Account.Roll_up_Approved__c, Account.Fax, 
					   	Account.DateBusinessStarted__c, Account.Phone,
					   	Account.Name, Account.FederalTaxID__c, Account.First_Funding_Date__c, 
					   	Account.Most_Recent_Funded_Renewal_Date__c, Time_For_Renewal_Date__c, Account.Last_Renewal_Date__c,
					   	CreatedDate, Account.Last_Created_Opportunity__c, Account.Legal_Name__c, 
					   	Account.Months_with_Current_Processor__c,
					   	Account.Number_of_Locations__c, Account.Number_of_Terminals_at_Location__c, Syndication_Amount__c, 
					   	Product__c,
					   	PrimaryCampaignSource__c, OwnerId, LastModifiedById, CreatedById, Amount, Advance_ID__c, 
					   	Account_In_Risk__c,
					   	Account.Owned_Business_Since__c, Account.BusinessType__c, Pay_Back_Amount__c, Percent_Payback__c, 
					   	Loan_Term_Days__c,
					   	Account.ownerId, Account.Type, Purchase_Amount__c, Underwriter_Assigned__c, 
					   	Processing_Representative__c, Auto_Decisioned_By__c, Opportunity_Number__c, Processing_Rep_Assigned__c, 
					   	Submit_to_UW_Processing__c, CALC_Link__c, Notes_Link__c 
					   FROM 
					   	Opportunity 
					   WHERE 
					   	Id = : op];
					   
				EstimatedDailyTransactions = ((Decimal.valueof(FormulaFieldUtility.estimatedDailyRepay)).setScale(2)) + '';
			} 
			else {
				ApexPages.Message msg = new ApexPages.Message(ApexPages.Severity.Error, 'Please provide Opportunity ID');
				ApexPages.addMessage(msg);
			}
		} 
		catch (Exception ex) {
			ApexPages.Message msg = new ApexPages.Message(ApexPages.Severity.Error, 'An exception occurred' + ex.getMessage());
			ApexPages.addMessage(msg);
		}
	}
	
	global PageReference onEdit11() {
		isVisible = true;
		return null;
	}

	global PageReference onEdit() {

		try {
			//if(btntext=='Edit'){
			//    isVisible = true;
			//   btntext='Save';
			//    }
			//    else{
			if(opp != null){
				update opp;
				update opp.Account;
				update opp.Campaign;
			//    btntext='Edit';
			//    isVisible = false;
			// }
			}
		} 
		catch (Exception ex) {
			ApexPages.Message msg = new ApexPages.Message(ApexPages.Severity.Error, 'An exception occurred');
			ApexPages.addMessage(msg);
		}

		return null;
	}
	
	global PageReference onCancel() {
		
		btntext = 'Edit';
		isVisible = false;
		return null;
	}
}