@isTest
public class TestAccountMainBusiness {
	static testMethod void runTestMethod() {
		CALC.ApexTesting();
		editTest();
		cancelTest();
		mainbusinessTest();
		variableInit();

	}
	static void variableInit() {
		AccountMainBusiness am = new AccountMainBusiness();
		am.isVisible = true;
		am.btnText = 'Edit';
	}

	static void editTest() {
		AccountMainBusiness am = new AccountMainBusiness();
		//Variableinit();
		am.onEdit();
		am.btnText = 'notEdit';
		am.onEdit();
	}
	static void cancelTest() {
		AccountMainBusiness am = new AccountMainBusiness();
		variableInit();
		am.onCancel();
	}
	static void mainbusinessTest() {
		AccountMainBusiness am = new AccountMainBusiness();
		//TestUtils ts= new TestUtils();
		Account acc = TestUtils.createAccount();
        am.btnText = 'Edit';
		am.isVisible = false;
		Campaign cm = TestUtils.createCampaign();
		Opportunity opp = TestUtils.createOpportunity(acc, cm);
		variableInit();
		ApexPages.currentPage().getParameters().put('id', opp.id);
	
	}
}