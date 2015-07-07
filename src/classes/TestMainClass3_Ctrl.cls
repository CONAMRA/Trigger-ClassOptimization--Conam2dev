@isTest(SeeAllData = true)
private class TestMainClass3_Ctrl {

	static testMethod void mainClass3_UnitTest() {
        
		CALC.ApexTesting();
		Test.startTest();
		Account acc = TestUtils.createAccount();
		Campaign cm = TestUtils.createCampaign();
		Opportunity opp = TestUtils.createOpportunity(acc, cm);
        
		ApexPages.currentPage().getParameters().put('Id', opp.Id);
		ApexPages.currentPage().getParameters().put('oppId', opp.Id);
        
        Opportunity opp1 = new Opportunity();
		opp1.Name = 'testOpportunity';
		opp1.LeadSource = 'web';
		opp1.StageName = 'Prospecting';
		opp1.CloseDate = System.today() + 20;
		opp1.CampaignId = cm.Id;
		opp1.Current_Processor__c = 'Abanco INTERNATIONAL';
		opp1.CloseDate = System.today() + 50;
		opp1.AccountId = acc.id;
		insert opp1;
        
		MainClass3 mc = new MainClass3();
       
		ApexPages.StandardController std = new ApexPages.StandardController(opp);
		MainClass3 mc3 = new MainClass3(std);
		Profile p = [SELECT Id FROM Profile WHERE Name = 'System Administrator'];

		User u = [SELECT Id, name FROM user WHERE IsActive = true AND ProfileId = : p.Id LIMIT 1];

		System.runAs(u) {
			List<PermissionSet> pSet = [SELECT Id, Label FROM PermissionSet WHERE Label = : 'Operations - Pre-Qual'];
			PermissionSetAssignment psa = new PermissionSetAssignment();
			psa.PermissionSetId = pset[0].id;
			psa.AssigneeId = u.ID;
			insert psa;
            
			MainClass3 mc1 = new MainClass3();
			MainClass3 mc4 = new MainClass3(std);
            
			List<PermissionSet> pSet1 = [SELECT Id, Label FROM PermissionSet Where Label = : 'Operations - Processing'];
            
			PermissionSetAssignment psa1 = new PermissionSetAssignment();
			psa1.PermissionSetId = pset1[0].id;
			psa1.AssigneeId = u.ID;
			insert psa1;
			MainClass3 mc5 = new MainClass3();
			MainClass3 mc6 = new MainClass3(std);
			List<PermissionSet> pSet2 = [Select Id, Label FROM PermissionSet WHERE Label = : 'Operations - QC'];
			PermissionSetAssignment psa2 = new PermissionSetAssignment();
			psa2.PermissionSetId = pset2[0].id;
			psa2.AssigneeId = u.ID;
			insert psa2;
            
			MainClass3 mc7 = new MainClass3();
			MainClass3 mc8 = new MainClass3(std);
            
			List<PermissionSet> pSet3 = [SELECT Id, Label FROM PermissionSet WHERE Label = : 'Operations - UW'];
            
			PermissionSetAssignment psa3 = new PermissionSetAssignment();
			psa3.PermissionSetId = pset3[0].id;
			psa3.AssigneeId = u.ID;
			insert psa3;
            
			MainClass3 mc9 = new MainClass3();
			MainClass3 mc10 = new MainClass3(std);
           
		}
		Test.stopTest();
	}
}