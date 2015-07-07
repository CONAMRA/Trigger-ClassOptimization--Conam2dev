@isTest
private class TestEligibility_Criteria_Ctrl{
    static testMethod void eligibility_Criteria_UnitTest() {
        
        CALC.ApexTesting();
        Test.startTest(); 
        Account acc = TestUtils.createAccount();
        Campaign cm = TestUtils.createCampaign();
        Opportunity opp = TestUtils.createOpportunity(acc, cm);
        
        ApexPages.currentPage().getParameters().put('Id', opp.Id);
        Eligibility_Criteria_Ctrl bussObj = new Eligibility_Criteria_Ctrl();
        bussObj.doSave();       
        Test.stopTest();
    }
    
     static testMethod void eligibility_Criteria_UnitTest1() {
         
        CALC.ApexTesting();
        Test.startTest(); 
        Account acc = TestUtils.createAccount();
        Campaign cm = TestUtils.createCampaign();
        Opportunity opp = TestUtils.createOpportunity(acc, cm);        
       
        Eligibility_Criteria_Ctrl bussObj = new Eligibility_Criteria_Ctrl();
        bussObj.doSave();       
        Test.stopTest();
    }
}