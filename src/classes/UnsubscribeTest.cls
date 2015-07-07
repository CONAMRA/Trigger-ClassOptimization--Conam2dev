@isTest
public with sharing class UnsubscribeTest {
	static testMethod void testUnsubscribe() {

		// Create a new email and envelope object
		Messaging.InboundEmail email = new Messaging.InboundEmail();
		Messaging.InboundEnvelope env = new Messaging.InboundEnvelope();

		// Create a new test Lead and insert it in the Test Method        
		Lead l = new Lead(firstName = 'Rasmus',
		LastName = 'Mencke',
		Company = 'Salesforce',
		Email = 'rmencke@salesforce.com',
		Phone = '111-111-1111',
		HasOptedOutOfEmail = false);
		insert l;

		// Create a new test Contact and insert it in the Test Method  
		Contact c = new Contact(firstName = 'Rasmus',
		LastName = 'Mencke',
		Email = 'rmencke@salesforce.com',
		Phone = '111-111-1111',
		HasOptedOutOfEmail = false);
		try {
			insert c;
		} 
		catch (Exception e) {}

		// test with subject that matches the unsubscribe statement
		email.subject = 'test unsubscribe test';
		env.fromAddress = 'rmencke@salesforce.com';

		// call the class and test it with the data in the testMethod
		unsubscribe unsubscribeObj = new unsubscribe();
		unsubscribeObj.handleInboundEmail(email, env);

	}

	static testMethod void testUnsubscribe2() {

		// Create a new email and envelope object
		Messaging.InboundEmail email = new Messaging.InboundEmail();
		Messaging.InboundEnvelope env = new Messaging.InboundEnvelope();

		// Create a new test Lead and insert it in the Test Method        
		Lead l = new lead(firstName = 'Rasmus',
		LastName = 'Mencke',
		Company = 'Salesforce',
		Phone = '111-111-1111',
		Email = 'rmencke@salesforce.com',
		HasOptedOutOfEmail = false);
		insert l;

		// Create a new test Contact and insert it in the Test Method    
		Contact c = new Contact(firstName = 'Rasmus',
		LastName = 'Mencke',
		Email = 'rmencke@salesforce.com',
		Phone = '111-111-1111',
		HasOptedOutOfEmail = false);
		try {
			insert c;
		} 
		catch (Exception e) {}

		// Test with a subject that does Not contain Unsubscribe
		email.subject = 'test';
		env.fromAddress = 'rmencke@salesforce.com';

		// call the class and test it with the data in the testMethod
		Unsubscribe unsubscribeObj = new Unsubscribe();
		unsubscribeObj.handleInboundEmail(email, env);
	}

}