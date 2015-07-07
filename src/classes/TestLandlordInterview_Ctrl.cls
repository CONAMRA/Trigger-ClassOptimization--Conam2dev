@isTest 
private class TestLandlordInterview_Ctrl  {
    static testMethod void oppLandlordInterview_UnitTest() {
        
        CALC.ApexTesting();
        Test.startTest(); 
        Account acc = TestUtils.createAccount();
        Campaign cm = TestUtils.createCampaign();
        Opportunity opp = TestUtils.createOpportunity(acc, cm); 
        
        LandlordInterview_Ctrl landInterviewObj = new LandlordInterview_Ctrl();
        landInterviewObj.doSave();
        BusinessReview_Ctrl bussObj = new BusinessReview_Ctrl();
        bussObj.doSave();
        ContractValidation_Ctrl  ctObj = new ContractValidation_Ctrl();
        ctObj.doSave();
        
        Contact con = TestUtils.createContact(acc);
        Merchant__c  mc = TestUtils.createMerchant(opp);
        ApexPages.currentPage().getParameters().put('Id', opp.Id);
        ApexPages.currentPage().getParameters().put('oppId', opp.Id);
        LandlordInterview_Ctrl landObj = new LandlordInterview_Ctrl();
        landObj.doSave();
        
        BusinessReview_Ctrl reviewObj = new BusinessReview_Ctrl(); 
        reviewObj.doSave();
        
        ContractValidation_Ctrl  ctvObj = new ContractValidation_Ctrl();
        ctObj.doSave();
        Test.stopTest();
    }
}