@istest

public class TestSiteLoginController
{
    public static testMethod void testSiteLoginController() {
    	
    	Test.startTest();
		// Instantiate a new controller with all parameters in the page
		SiteLoginController controller = new SiteLoginController();
		controller.userName = 'test@salesforce.com';
		controller.password = '123456';

		System.assertEquals(controller.login(), null);
		Test.stoptest();
	}
}