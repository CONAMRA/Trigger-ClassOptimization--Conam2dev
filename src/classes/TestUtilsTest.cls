@isTest
public class TestUtilsTest {

    static testMethod void testUtil_UnitTest() {
        
        Test.startTest();
        
        CALC.ApexTesting();
        Account acc = TestUtils.createAccount();
        Campaign ca = TestUtils.createCampaign();
        Opportunity opp = TestUtils.createOpportunity(acc, ca);
        Quote q = TestUtils.createQuote(opp);
        Customer_Survey__c cs = TestUtils.createCustomerSurvey(opp, acc);
        TestUtils.createAttachment(opp);
        TestUtils.createAdditionalLocation(acc);
        TestUtils.createMerchant(opp);
        TestUtils.createNote(opp);
        Contact con = TestUtils.createContact(acc);
        TestUtils.createOpportunityContactRole(con, opp);
        TestUtils.createNote_New(opp);
        TestUtils.createSiteSurvey(opp);
        
        Test.stopTest();
    }
}