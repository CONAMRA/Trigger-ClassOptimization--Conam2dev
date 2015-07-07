/*
Created Date: April 26th, 2010
Developer Name: Ralph Callaway
Case Number: 03461744

Description:
Maintain a one-to-one relationship between the opportunity and underwriting object.

Mirror certain underwriting fields on the opportunity without using formulas

Functional Logic:
Whenever an underwriting is created, populate the underwriting lookup field on the related Opportunity.

Whenever any of the following underwriting fields change update the corresponding fields on the Opportunity Object:
•   UCC Filings
•   UCC Request Date
•   UCC Filing Reason
•   Decision Date
•   Re-Decision Date
•   Underwriting Decision
*/
/*

Modified
DS-CONAM - 03/04/2015
Version 16 to 32
*/

@isTest
private class TestSyncUnderwritingAndOpportunity {

    private static final Id OPPORTUNITY_ID;
    private static final String TEST_STRING = 'IIEndjPP';
    private static final Date TEST_DATE = System.today();
    private static final DateTime TEST_DATETIME;

    static {
        // decrease precision to avoid issues with rounding on database commit
        TEST_DATETIME = DateTime.newInstance(TEST_DATE.year(), TEST_DATE.month(), TEST_DATE.day());

        // create test opportunity
        Opportunity testOpportunity = new Opportunity(stageName = TEST_STRING, name = TEST_STRING, closeDate = TEST_DATE);
        insert testOpportunity;
        OPPORTUNITY_ID = testOpportunity.id;
    }

    static testMethod void testInsert() {

        Test.startTest();
        // insert a new underwriting
        try {

            CALC.ApexTesting();
            Underwriting__c testUnderwriting = getTestUnderwriting();
            insert testUnderwriting;
        } 
        catch (Exception e) {
            System.assert(e.getMessage().contains('REQUIRED_FIELD_MISSING'), 'Code Failure: Opportunity not linked to underwriting on underwriting creation');
        }
        Test.stopTest();
    }

    static testMethod void testUpdate() {
        // insert a new underwriting
        Test.startTest();
        CALC.ApexTesting();
        Underwriting__c testUnderwriting;
        try {

            CALC.ApexTesting();
            testUnderwriting = getTestUnderwriting();
            insert testUnderwriting;
        } 
        catch (Exception e) {
            System.assert(e.getMessage().contains('REQUIRED_FIELD_MISSING'), 'Code Failure: Opportunity not linked to underwriting on underwriting creation');

        }

        // add fields that need to get synced with opportunity
        testUnderwriting.ucc_filings__c = TEST_STRING;
        testUnderwriting.UCC_Request_Date__c = TEST_DATE;
        testUnderwriting.ucc_filing_reason__c = TEST_STRING;
        testUnderwriting.decision_date__c = TEST_DATETIME;
        testUnderwriting.Underwriting_Decision__c = TEST_STRING;
        testUnderwriting.Re_decision_date__c = TEST_DATETIME;

        // update underwriting

        update testUnderwriting;


        // verify fields are copied over to the opportunity
        Opportunity testOpportunity = [SELECT 
                                           underwriting__c, ucc_filing__c, UCC_Date__c, ucc_filing_reason__c,
                                           Re_Decision_Date__c, Decision_Date__c, Underwriting_Approval__c
                                       FROM 
                                            Opportunity 
                                       WHERE 
                                            id = : OPPORTUNITY_ID];
                                       
        system.assert(testOpportunity.ucc_filing__c == testUnderwriting.ucc_filings__c,
            'Code Failure: UCC Filings not synced to opportunity when underwriting update. Expected: ' + testUnderwriting.ucc_filings__c + ', Found: ' + testOpportunity.ucc_filing__c);
        system.assert(testOpportunity.UCC_Date__c == testUnderwriting.UCC_Request_Date__c,
            'Code Failure: UCC Request Date not synced to opportunity when underwriting update. Expected: ' + testUnderwriting.UCC_Request_Date__c + ', Found: ' + testOpportunity.UCC_Date__c);
        system.assert(testOpportunity.ucc_filing_reason__c == testUnderwriting.ucc_filing_reason__c,
            'Code Failure: UCC Filing Reason not synced to opportunity when underwriting update. Expected: ' + testUnderwriting.ucc_filing_reason__c + ', Found: ' + testOpportunity.ucc_filing_reason__c);
        system.assert(testOpportunity.Decision_Date__c == testUnderwriting.decision_date__c,
            'Code Failure: Decision Date not synced to opportunity when underwriting update. Expected: ' + testUnderwriting.decision_date__c.getTime() + ', Found: ' + testOpportunity.Decision_Date__c.getTime());
        system.assert(testOpportunity.Underwriting_Approval__c == testUnderwriting.Underwriting_Decision__c,
            'Code Failure: Underwriting Decision not synced to opportunity when underwriting update. Expected: ' + testUnderwriting.Underwriting_Decision__c + ', Found: ' + testOpportunity.Underwriting_Approval__c);
        system.assert(testOpportunity.Re_Decision_Date__c == testUnderwriting.Re_decision_date__c,
            'Code Failure: Re-Decision Date not synced to opportunity when underwriting update. Expected: ' + testUnderwriting.Re_decision_date__c + ', Found: ' + testOpportunity.Re_Decision_Date__c);

        Test.stopTest();
    }

    private static Underwriting__c getTestUnderwriting() {
        return new Underwriting__c(opportunity__c = OPPORTUNITY_ID);
    }
}