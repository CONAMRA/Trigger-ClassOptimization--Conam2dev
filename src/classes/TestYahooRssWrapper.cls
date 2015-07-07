@isTest
public with sharing class TestYahooRssWrapper {
	static testMethod void RSSTest() {
		Test.StartTest();
        YahooRssWrapper.channel chan = YahooRssWrapper.getRSSData('test');
        Date pDate = chan.items[0].getPublishedDate();
        DateTime pDateTime = chan.items[0].getPublishedDateTime();
        Test.StopTest();
    }

}