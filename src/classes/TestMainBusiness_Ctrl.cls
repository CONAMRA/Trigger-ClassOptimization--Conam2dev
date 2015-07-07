@isTest 
private class TestMainBusiness_Ctrl {
    static testMethod void mainBusiness_UnitTest() {
        CALC.apexTesting();
        Test.startTest(); 
        Account acc = TestUtils.createAccount();
        Campaign cm = TestUtils.createCampaign();
        Opportunity opp = TestUtils.createOpportunity(acc, cm);
        ProcessorInformation_Ctrl proObj = new ProcessorInformation_Ctrl();
        proObj.doSave();
        Previous_Balance_Ctrl  balObj1 = new Previous_Balance_Ctrl();
        balObj1.doSave();
        MainBusiness_Ctrl bussObj1 = new MainBusiness_Ctrl();
        bussObj1.doSave();
        ApexPages.currentPage().getParameters().put('Id', opp.Id);
        MainBusiness_Ctrl bussObj = new MainBusiness_Ctrl();
        bussObj.doSave();
        Previous_Balance_Ctrl  balObj = new Previous_Balance_Ctrl();
        balObj.doSave();
        ProcessorInformation_Ctrl proObj1 = new ProcessorInformation_Ctrl();
        proObj1.doSave();
        Test.stopTest();
    }
}