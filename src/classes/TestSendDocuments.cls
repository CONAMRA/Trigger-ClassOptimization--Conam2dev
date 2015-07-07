@isTest 
public class TestSendDocuments {

   static testMethod void testSendDocumentsMethod() {
    
        Test.startTest();
        CALC.ApexTesting();
        Opportunity opp = Biz2CreditUtils.createOpportunity();
        Oppr_Document__c OppDoc = Biz2CreditUtils.createOppDoc(opp);
        Attachment att = Biz2CreditUtils.createAttachment(OppDoc);
        // request 1 
        sendDocuments.sendDocuments(opp.External_ID__c, opp.Source_System__c, att.Id, att.Name, att.Body, 'txt');
        // request 2
        sendDocuments.sendDocuments(opp.External_ID__c, '', att.Id, att.Name, att.Body, 'txt');
        Test.stopTest();
   }
}