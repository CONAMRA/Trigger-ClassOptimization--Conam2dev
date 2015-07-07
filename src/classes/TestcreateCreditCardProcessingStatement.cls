@isTest
public with sharing class TestcreateCreditCardProcessingStatement {
	Static TestMethod Void testMethod1() {
        
		CALC.ApexTesting();
		Test.startTest();
		Account acc = TestUtils.createAccount();
		Campaign cm = TestUtils.createCampaign();
		Opportunity opp = TestUtils.createOpportunity(acc, cm);

		ApexPages.StandardController controller = new ApexPages.StandardController(opp);
		createCreditCardProcessingStatement CreditCardObj = new createCreditCardProcessingStatement(controller);
		CreditCardObj.doSave();
		CreditCardObj.Save();
		CreditCardObj.doSave1();

		ApexPages.currentPage().getParameters().put('Id', opp.Id);
		ApexPages.currentPage().getParameters().put('oppId', opp.Id);
		createCreditCardProcessingStatement CreditCardObj1 = new createCreditCardProcessingStatement(controller);
		CreditCardObj1.doSave();
		CreditCardObj1.Save();
		CreditCardObj1.doSave1();
		Test.stopTest();
	}
}