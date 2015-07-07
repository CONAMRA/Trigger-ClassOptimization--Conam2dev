@isTest 
private class TestSiteSurveys_Ctrl {

    static testMethod void SiteSurveys_UnitTest() {
    
        Test.startTest();
        CALC.ApexTesting(); 
        Account acc = TestUtils.createAccount();
        Campaign cm = TestUtils.createCampaign();
        Opportunity opp = TestUtils.createOpportunity(acc, cm);

        ApexPages.currentPage().getParameters().put('oppId', opp.Id);
        
        Site_Survey__c siteObj = new  Site_Survey__c();
        siteObj.Name = 'xyz';
        siteObj.Site_Survey_Type__c = 'Merchant Site 72';
        siteObj.Opportunity__c = opp.Id;
        insert  siteObj;       
        ApexPages.currentPage().getParameters().put('Id', siteObj.Id);
        ApexPages.StandardController siteController = new ApexPages.standardController(siteObj);
        SiteSurveys_Ctrl siteS = new SiteSurveys_Ctrl(siteController);
       
        siteS.Save();
        siteS.cancel();
        
        Test.stopTest();
    }
    
     static testMethod void SiteSurveys_UnitTest1() {
     
        Test.startTest(); 
        CALC.ApexTesting();
        Account acc = TestUtils.createAccount();
        Campaign cm = TestUtils.createCampaign();
        Opportunity opp = TestUtils.createOpportunity(acc, cm);
        ApexPages.currentPage().getParameters().put('Id', opp.Id);
        ApexPages.currentPage().getParameters().put('oppId', opp.Id);
        ApexPages.currentPage().getParameters().put('retURL', 'oppId=');
        Site_Survey__c siteObj = new  Site_Survey__c();
        siteObj.Name = 'xyz';
        siteObj.Site_Survey_Type__c = 'Merchant Site 72';
        siteObj.Opportunity__c = opp.Id;
      //  insert  siteObj;       
        
        ApexPages.currentPage().getParameters().put('Id', null);        
        ApexPages.StandardController siteController = new ApexPages.standardController(siteObj);
        SiteSurveys_Ctrl siteS = new SiteSurveys_Ctrl(siteController);
       
        siteS.Save();
        siteS.cancel();
        
        Test.stopTest();
    }
    
    static testMethod void SiteSurveys_UnitTest2() {
        
        Test.startTest();
        CALC.ApexTesting(); 
        Account acc = TestUtils.createAccount();
        Campaign cm = TestUtils.createCampaign();
        Opportunity opp = TestUtils.createOpportunity(acc, cm);
        ApexPages.currentPage().getParameters().put('Id', opp.Id);
        ApexPages.currentPage().getParameters().put('oppId', opp.Id);
        ApexPages.currentPage().getParameters().put('retURL', 'testId');
        Site_Survey__c siteObj = new  Site_Survey__c();
        siteObj.Name = 'xyz';
        siteObj.Site_Survey_Type__c = 'Merchant Site 72';
        siteObj.Opportunity__c = opp.Id;
      //  insert  siteObj;       
        
        ApexPages.currentPage().getParameters().put('Id', null);        
        ApexPages.StandardController siteController = new ApexPages.standardController(siteObj);
        SiteSurveys_Ctrl siteS = new SiteSurveys_Ctrl(siteController);
       
        siteS.Save();
        siteS.cancel();
        
        Test.stopTest();
    } 
}