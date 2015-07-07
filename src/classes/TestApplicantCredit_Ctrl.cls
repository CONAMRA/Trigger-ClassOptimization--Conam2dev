@isTest
private class TestApplicantCredit_Ctrl {
	static testMethod void applicantCredit_UnitTest() {

		CALC.ApexTesting();
		Test.startTest();
		Account acc = TestUtils.createAccount();
		Campaign cm = TestUtils.createCampaign();
		Opportunity opp = TestUtils.createOpportunity(acc, cm);
		Contact con = TestUtils.createContact(acc);
		OpportunityContactRole oppRole = TestUtils.createOpportunityContactRole(con, opp);

		OpportunityContactRole oppRole2 = new OpportunityContactRole();
		oppRole2.ContactId = con.Id;
		oppRole2.OpportunityId = opp.Id;
		oppRole2.Role = 'Principal 2';
		insert oppRole2;

		PageReference p = Page.ApplicantCreditPage;
		Test.setCurrentPage(p);
		ApexPages.currentPage().getParameters().put('Id', opp.Id);
		ApexPages.currentPage().getParameters().put('oppId', opp.Id);
		ApplicantCredit_Ctrl appObj = new ApplicantCredit_Ctrl();
		appObj.doSave();
		Test.stopTest();
	}

}