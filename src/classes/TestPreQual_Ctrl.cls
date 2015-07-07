@isTest 
private class TestPreQual_Ctrl  {
	
    static testMethod void preQual_UnitTest() {
    	
        Test.startTest(); 
        CALC.ApexTesting();
        Account testAccount = new Account();
        testAccount.name = 'Test Account1';
        testAccount.BusinessType__c = 'testBusibess';
        insert testAccount;
        
        Campaign cmObj = new Campaign();
        cmObj.Name = 'Test';
        cmObj.Type = 'Internet';
        insert cmObj;
        
        Opportunity opp = new Opportunity();
        opp.Name = 'testOpportunity';
        opp.LeadSource = 'web';
        opp.StageName = 'Prospecting';
        opp.CloseDate = System.today() + 20;
        opp.CampaignId = cmObj.Id;
        opp.Current_Processor__c = 'Abanco INTERNATIONAL';
        opp.CloseDate = System.today() + 50;
        opp.AccountId = testAccount.id;
        insert opp;
        
        preQual_Ctrl prq_ctrl = new preQual_Ctrl();
        prq_ctrl.doSave();
        CBRTesting_Ctrl cbrObj = new CBRTesting_Ctrl();
        cbrObj.doSave();
        //cbrObj.doCBRIntegration();
        
        ApexPages.currentPage().getParameters().put('Id', opp.Id);
        ApexPages.currentPage().getParameters().put('oppId', opp.Id);
        
        preQual_Ctrl preq_ctrl = new preQual_Ctrl();
        prq_ctrl.doSave();
        
        CBRTesting_Ctrl cbrtestObj = new CBRTesting_Ctrl();
        cbrObj.doSave();
       // cbrObj.doCBRIntegration();
        Test.stopTest(); 
    }
}