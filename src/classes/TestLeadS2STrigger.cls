/**
 * This class contains unit tests for validating the behavior of Apex classes
 * and triggers.
 *
 * Unit tests are class methods that verify whether a particular piece
 * of code is working properly. Unit test methods take no arguments,
 * commit no data to the database, and are flagged with the testMethod
 * keyword in the method definition.
 *
 * All test methods in an organization are executed whenever Apex code is deployed
 * to a production organization to confirm correctness, ensure code
 * coverage, and prevent regressions. All Apex classes are
 * required to have at least 75% code coverage in order to be deployed
 * to a production organization. In addition, all triggers must have some code coverage.
 * 
 * The @isTest class annotation indicates this class only contains test
 * methods. Classes defined with the @isTest annotation do not count against
 * the organization size limit for all Apex scripts.
 *
 * See the Apex Language Reference for more information about Testing and Code Coverage.
 */@istest(seeAllData = True)

private class TestLeadS2STrigger {

	static testMethod void runTest() {
		Test.startTest();
		List<PartnerNetworkConnection> pncList = [SELECT
														id, connectionname 
													FROM 
														PartnerNetworkConnection 
													WHERE 
														connectionname = 'Rock Connections'
														AND ConnectionStatus = 'Accepted'];

		Lead lTemp = new Lead();
		CALC.ApexTesting();

		lTemp.Status = 'Calling - No Contact Made';
		lTemp.LeadSource = 'Radio';
		lTemp.Company = 'test company';
		lTemp.Phone = '415789415';
		lTemp.Lastname = 'lastname';
		lTemp.RC_Lead_Type__c = 'RAFF';
		insert lTemp;

		List<PartnerNetworkRecordConnection> lstShareRecords = new List<PartnerNetworkRecordConnection> ();

		for (PartnerNetworkConnection network: pncList) {

			PartnerNetworkRecordConnection newrecord = new PartnerNetworkRecordConnection();

			newrecord.ConnectionId = network.Id;
			newrecord.LocalRecordId = lTemp.id;
			// newrecord.RelatedRecords = 'Lead';
			newrecord.SendClosedTasks = false;
			newrecord.SendOpenTasks = false;
			newrecord.SendEmails = false;

			lstShareRecords.add(newrecord);

			Test.stopTest();
		}

	}

	static testMethod void runTestforException() {
		try {
			Test.startTest();
			List<PartnerNetworkConnection> pncList = [select id, connectionname from PartnerNetworkConnection where connectionname = 'Rock Connections'
			and ConnectionStatus = 'Accepted'];

			Lead lTemp = new Lead();
			CALC.ApexTesting();

			CALC.ApexTesting();
			lTemp.Status = 'Calling - No Contact Made';
			lTemp.LeadSource = 'Radio';
			lTemp.Company = 'test company';
			lTemp.Phone = '415789415';
			lTemp.RC_Lead_Type__c = 'RAFF';
			insert lTemp;
			
			List<PartnerNetworkRecordConnection> lstShareRecords = new List<PartnerNetworkRecordConnection> ();
			for (PartnerNetworkConnection network: pncList) {

				PartnerNetworkRecordConnection newrecord = new PartnerNetworkRecordConnection();

				newrecord.ConnectionId = network.Id;
				newrecord.LocalRecordId = lTemp.id;
				// newrecord.RelatedRecords = 'Lead';
				newrecord.SendClosedTasks = false;
				newrecord.SendOpenTasks = false;
				newrecord.SendEmails = false;

				lstShareRecords.add(newrecord);

				Test.stopTest();
			}

		} catch (Exception e) {
			System.assert(e.getMessage().contains('Insert failed. First exception on'), e.getMessage());

		}

	}


}