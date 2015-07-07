@isTest
public with sharing class TestMainClass {
	static testMethod void RuntestCase() {
		CALC.apexTesting();
		Profile p = [SELECT Id From Profile WHERE Name = 'System Administrator'];
		User u2 = new User(alias = 'u1', email = 'u1@testorg.com',
		emailencodingkey = 'UTF-8', lastname = 'Testing', languagelocalekey = 'en_US',
		localesidkey = 'en_US', profileid = p.Id, country = 'United States',
		timezonesidkey = 'America/Los_Angeles', username = 'u_new@testorg.com');

		System.runAs(u2) {
			Account ac1 = new Account();
			ac1.name = 'testcase';
			insert ac1;


			String name = 'testcase1';
			String BillingState = 'AZ';
			String billingCity = 'noida';
			String billingCountry = 'India';
			String billingStreet = 'sec63';
			String billingPostalCode = '201301';
			String fax = '1234567';
			String dateBusinessStarted = String.valueof(System.today());
			String phone = '123455666';
			String federalTaxID = '123456789';
			String monthsWithCurrentProcessor = '3';
			String numberOfLocations = '2';
			String numberOfTerminalsAtLocation = '1';
			String ownedBusinessSince = String.valueOf(system.today());


			Campaign cp = new Campaign();
			cp.name = 'cppname';
			insert cp;

			Opportunity opp = new Opportunity();
			opp.name = 'oppname';
			opp.accountid = ac1.id;
			opp.ForecastCategoryName = 'Commit';
			opp.LeadSource = 'A001';
			opp.Campaignid = cp.id;
			opp.CloseDate = system.today();
			opp.Current_Processor__c = '1st federal financial';
			opp.StageName = 'closed';
			insert opp;
            
            

			Note__c nt = new Note__c();
			nt.Note_Content__c = 'testnoteconbtent';
			insert nt;

			ApexPages.StandardController sc = new ApexPages.standardController(nt);
			MainClass nc = new MainClass(sc);

			List<String> selectedNotesRT = new List<String> {
				'Approved With Conditions', 'Archived Credit Bureau', 'Business Bankruptcies', 'Underwriting', 'Funding', 'Individual Bankrupties', 'Internal QC', 'Internal UnderWriting', 'Pre Qual', 'Pre Qual Loss', 'Prefunding Call', 'Processing', 'Quancor', 'Renewal', 'Risk Alert', 'Risk Notes', 'SA Internal', 'Sales Check List', 'Sales to UW Processing', 'Site', 'Split change', 'UW Processing'
			};

			list<RecordType> allRecordsType = [SELECT 
                                               		Id, Name 
                                               FROM 
                                               		RecordType 
                                               WHERE Name IN: selectedNotesRT AND IsActive = true];
			apexpages.currentpage().getparameters().put('Id', opp.id);

			MainClass mclass = new MainClass();
			MainClass.createNote(nt.Note_Content__c, allRecordsType[5].id, opp.Id);
			MainClass.updateAccount(name, billingCity, billingCountry, billingState, billingStreet, billingPostalCode, fax, dateBusinessStarted, phone, federalTaxID, monthsWithCurrentProcessor, numberOfLocations, numberOfTerminalsAtLocation, ownedBusinessSince, ac1.id);
			mclass.createNote1(nt.Note_Content__c, allRecordsType[5].id, opp.Id);

		}

	}

}