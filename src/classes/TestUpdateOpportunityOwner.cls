@isTest
private class TestUpdateOpportunityOwner {

	static testMethod void myUnitTest() {
		
		Test.startTest();
		CALC.ApexTesting();
		User u = [SELECT Id FROM User WHERE Profile.Name = 'System Administrator' AND isActive = true Limit 1];
		Campaign cTest = new Campaign(Name = 'Test Campagin', Type = 'Internet', Default_opportunity_owner__c = u.id);
		insert cTest;

		Profile p = [SELECT Id FROM Profile WHERE Name = 'system administrator'];
		User uNew = new User(Alias = 'standt', Email = 'standarduser@ra.com',
							 	EmailEncodingKey = 'UTF-8', LastName = 'Testing', LanguageLocaleKey = 'en_US',
								LocaleSidKey = 'en_US', ProfileId = p.Id,
								TimeZoneSidKey = 'America/Los_Angeles', UserName = 'standarduser@ra.com');

		System.runAs(uNew) {

			Opportunity opp = new Opportunity();
			opp.Name = 'testopp';
			opp.StageName = 'Open';
			opp.CloseDate = Date.today();
			opp.Submit_to_UW_Processing__c = System.now();
			opp.Product__c = 'Loan';
			opp.Percent_Paid_Off__c = 55;
			opp.State_Of_Location__c = 'CT';
			opp.CampaignId = ctest.id;
			insert opp;
		}
	}
}