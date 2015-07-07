@isTest

public class TestChangePasswordController {
	
	public static testMethod void testChangePasswordController() {
		
	    Test.startTest();
		// Instantiate a new controller with all parameters in the page
		ChangePasswordController controller = new ChangePasswordController();
		controller.oldPassword = '123456';
		controller.newPassword = 'qwerty1';
		controller.verifyNewPassword = 'qwerty1';

		System.assertEquals(controller.changePassword(), null);
		
		Test.stopTest();
	}
}