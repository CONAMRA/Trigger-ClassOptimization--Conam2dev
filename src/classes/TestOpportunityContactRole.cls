@isTest
public with sharing class TestOpportunityContactRole {
	
    public static testMethod void testOpportunityContactRole_Method() {
    	
    	Test.startTest();
    	CALC.ApexTesting();
        Account acc = TestUtils.createAccount();
        Campaign cam =  TestUtils.createCampaign();
        Opportunity opp = TestUtils.createOpportunity(acc, cam);
        Contact con = TestUtils.createContact(acc);
        OpportunityContactRole role = TestUtils.createOpportunityContactRole(con, opp);
        
        OpportunityContactRoleCtlr opprole = new OpportunityContactRoleCtlr();
        opprole.save();
        opprole.cancel();
        
        ApexPages.currentPage().getParameters().put('oppId', opp.Id);
        ApexPages.currentPage().getParameters().put('retURL', opp.Id);
        
        OpportunityContactRoleCtlr oppConRole = new OpportunityContactRoleCtlr();
        oppConRole.save();
        oppConRole.cancel();
        Test.stopTest();
    }    
}