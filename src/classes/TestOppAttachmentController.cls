@isTest
public with sharing class TestOppAttachmentController {
	
	Static TestMethod Void testMethod1() {
		
		Test.startTest();
		CALC.ApexTesting();
		Account acc = TestUtils.createAccount();
		Campaign cm = TestUtils.createCampaign();
		Opportunity opp = TestUtils.createOpportunity(acc, cm);
		OppAttachmentController oppAttchObj = new OppAttachmentController();
		oppAttchObj.cancel();
		oppAttchObj.validateFields();
		oppAttchObj.save();

		ApexPages.currentPage().getParameters().put('Id', opp.Id);
		ApexPages.currentPage().getParameters().put('oppId', opp.Id);

		OppAttachmentController oppAttchObj1 = new OppAttachmentController();
		oppAttchObj1.cancel();
		oppAttchObj1.validateFields();
		oppAttchObj1.save();

		Test.stopTest();
	}

	Static TestMethod Void testMethod2() {
		
		Test.startTest();
		CALC.ApexTesting();
		Account acc = TestUtils.createAccount();
		Campaign cm = TestUtils.createCampaign();
		Opportunity opp = TestUtils.createOpportunity(acc, cm);
		OppAttachmentController oppAttchObj = new OppAttachmentController();
		oppAttchObj.cancel();
		oppAttchObj.validateFields();
		oppAttchObj.save();

		ApexPages.currentPage().getParameters().put('Id', opp.Id);
		ApexPages.currentPage().getParameters().put('oppId', opp.Id);

		OppAttachmentController oppAttchObj1 = new OppAttachmentController();
		oppAttchObj1.cancel();
		oppAttchObj1.oppAttachment.Name = 'test';
		oppAttchObj1.oppAttachment.Body = Blob.valueOf('test');
		oppAttchObj1.validateFields();
		oppAttchObj1.save();

		Test.stopTest();
	}
}