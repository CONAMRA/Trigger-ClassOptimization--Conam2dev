@isTest 
private class TestRSSNewsReader {
    
    static testMethod void RSSNewsReader_UnitTest() {
        CALC.ApexTesting();
        Test.startTest(); 
        Account acc = TestUtils.createAccount();
        ApexPages.currentPage().getParameters().put('Id', acc.Id);
        ApexPages.StandardController controller = new ApexPages.StandardController(acc);
        RSSNewsReader rssObj = new RSSNewsReader(controller);
        rssObj.getRSSFeed2();
        Test.stopTest();
        
     }
}