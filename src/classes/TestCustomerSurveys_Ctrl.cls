@isTest
private class TestCustomerSurveys_Ctrl {
	static testMethod void customerSurveys_UnitTest() {
        
		CALC.ApexTesting();
		Test.startTest();
		Account acc = TestUtils.createAccount();
		Campaign cm = TestUtils.createCampaign();
		Opportunity opp = TestUtils.createOpportunity(acc, cm);
		Customer_Survey__c cs = TestUtils.createCustomerSurvey(opp, acc);

		PageReference ref = new PageReference('/apex/CustomerSurveysCustom');
		Test.setCurrentPage(ref);

		ApexPages.StandardController std = new ApexPages.StandardController(cs);
		CustomerSurveys_Ctrl survey1Obj1 = new CustomerSurveys_Ctrl(std);
		survey1Obj1.save();
		survey1Obj1.cancel();

		ApexPages.currentPage().getParameters().put('retURL', 'oppId=' + opp.Id);

		CustomerSurveys_Ctrl survey1Obj = new CustomerSurveys_Ctrl(std);
		survey1Obj.save();
		survey1Obj.cancel();

		ApexPages.currentPage().getParameters().put('Id', cs.Id);

		CustomerSurveys_Ctrl surveyObj = new CustomerSurveys_Ctrl(std);
		surveyObj.save();
		surveyObj.cancel();

		Test.stopTest();
	}
}