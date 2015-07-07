@isTest
private class TestDealTerms_Ctrl {
    static testMethod void dealTerms_UnitTest() {
        CALC.ApexTesting();
        Test.startTest();
        Account acc = TestUtils.createAccount();
        Campaign cm = TestUtils.createCampaign();
        Opportunity opp = TestUtils.createOpportunity(acc, cm);
        Sales_Check_List__c slsclist = new Sales_Check_List__c();
        slsclist.Opportunity__c = opp.Id;
        insert slsclist;
        ApexPages.currentPage().getParameters().put('Id', opp.Id);
        ApexPages.currentPage().getParameters().put('oppId', opp.Id);
        DealTerms_Ctrl dealObj = new DealTerms_Ctrl();
        dealObj.doSave();
        Test.stopTest();
    }
}