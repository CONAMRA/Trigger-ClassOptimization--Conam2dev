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
 */
@isTest
private class TestGetContact {

    static testMethod void GetContract_UnitTest() {                  
 		CALC.ApexTesting();
        Opportunity opp2 = Biz2CreditUtils.createOpportunity_new();
       System.debug(opp2);
       Oppr_Document__c oppDoc = Biz2CreditUtils.createOppDoc(opp2);
       Attachment att = Biz2CreditUtils.createAttachment(OppDoc);
       
       String instanceUrl = Biz2CreditUtils.getInstanceURL();
        Account acc = new Account();
        acc.Name = 'Test';
        insert acc;
        Opportunity opp = new Opportunity();
        opp.Name ='Test';
        opp.AccountId = acc.id;
        opp.StageName = 'Contract Available';
        opp.LeadSource = 'Partner';
        opp.CloseDate = system.today();
      
        insert opp;
           
        RestRequest req = new RestRequest(); 
        RestResponse res = new RestResponse();
        
        req.addParameter('id', opp2.External_ID__c);
        req.addParameter('SourceSystem', 'B2C');
    
        req.requestURI = 'https://'+instanceUrl+'/services/apexrest/GetContract';  
        req.httpMethod = 'GET';
        RestContext.request = req;
        RestContext.response = res;
          // request 1
        GetContract.getContracts();
        // request 1
        req.addParameter('id', opp2.External_ID__c);
        req.addParameter('SourceSystem', '');
        GetContract.getContracts();
         // request 3
        req.addParameter('id', '');
        req.addParameter('SourceSystem', 'Biz2Credit');
        GetContract.getContracts();
        }        
    
}