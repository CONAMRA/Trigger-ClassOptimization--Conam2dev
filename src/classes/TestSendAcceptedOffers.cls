@isTest
public with sharing class TestSendAcceptedOffers {

    static testMethod void testDoPost() {
        
        Test.startTest();
        CALC.ApexTesting();
        Application app = new Application();
        String instanceUrl = Biz2CreditUtils.getInstanceURL();
        
        // Using unique identifier of source system for Acct and opportunity Name
        //Get List Of required fields - contact     
        app.FirstName = 'James';
        app.LastName = 'Jones';
        app.HomeCity = 'Washington';
        
        //Get List Of required fields - account
        app.BusinessCity = 'Washington DC';
        app.FederalTaxId = '111155555';
        
        //Get List Of required fields - opportunity
        app.AvgMonthSales = 50000;
        app.MajorCreditCardsProc = 'Visa';
        app.AvgMonthTrans = 45000;
        app.CCSalesLastMonth = 100000;
        app.CCSalesLast1Month = 45000;
        app.CCSalesLast2Month = 55000;
        app.CCSalesLast3Month = 65000;
        app.NumOfTransLastMonth = 300;
        app.NumOfTrans1Month = 250;
        app.NumOfTrans2Month = 350;
        app.NumOfTrans3Month = 450;
        app.SourceSystem = 'Biz2Credit';
        app.ExternalID = 'ExtID10001';
        app.MerchantID = 'Merchant 2000';
        
        Opportunity opp = Biz2CreditUtils.createOpportunity(app);  
        Oppr_Offer__c opprOffer = Biz2CreditUtils.createOpprOffer(opp.Id);
        
        Oppr_Document__c OppDoc = new Oppr_Document__c();
        OppDoc.Document_Name__c = 'testDoc';
        OppDoc.Additional_Notes__c = 'testDoc';
        OppDoc.Opportunity__c = opp.Id;
        OppDoc.Status__c = 'Requested';
        OppDoc.RequiredDoc__c = true;
        insert OppDoc;
        
        List<Oppr_Document__c> odcList = [SELECT id FROM Oppr_Document__c WHERE RequiredDoc__c = true AND status__c in ('Requested','Rejected') AND  Opportunity__c = : opp.id AND Id =: OppDoc.Id];
            
        OpportunityOffer oppOff = new OpportunityOffer();
        
        System.debug('opprOffer.Name....'+opprOffer.Name);
        // Correctly Entered data should give successful resp
        oppOff.OfferID = opprOffer.Name;
        oppOff.Amount = 1000;
        oppOff.DailyCollection = 1000;
        oppOff.Duration = 5;
        oppOff.ProductName = 'Product 1';
        oppOff.DailyPayment = 1000;
        oppOff.NumOfPayments = 6;
        oppOff.ExternalID = 'ExtID10001';
        oppOff.Source = 'B2C';
 
        RestRequest req = new RestRequest(); 
        RestResponse res = new RestResponse();
        
        req.addHeader('Content-Type','application/x-www-form-urlencoded'); 
        req.requestURI = 'https://'+instanceUrl+'/services/apexrest/SendAcceptedOffers';  
        req.httpMethod = 'POST';
        RestContext.request = req;
        RestContext.response = res;
         
        
        SendAcceptedOffers.ReturnSendOfferDetails resp1 = SendAcceptedOffers.doPost(oppOff);
        
        // Incorrectly ExternalID entered data should give error resp
        //oppOff.ExternalID = 'ExtID100';
        oppOff.ExternalID = 'ExtID10001';
        SendAcceptedOffers.ReturnSendOfferDetails resp2 = SendAcceptedOffers.doPost(oppOff);       
        
        // Incorrectly source entered data should give error resp
       // oppOff.Source = 'Biz2Cred';
       
        
        OpportunityOffer oppOff1 = new OpportunityOffer();
        // Correctly Entered data should give successful resp
        oppOff1.OfferID = opprOffer.Name;
        oppOff1.Amount = 1000;
        oppOff1.DailyCollection = 1000;
        oppOff1.Duration = 5;
        oppOff1.ProductName = 'Product 1';
        oppOff1.DailyPayment = 1000;
        oppOff1.NumOfPayments = 6;
        oppOff1.ExternalID = 'ExtID10001';
        oppOff1.Source = 'test';
        SendAcceptedOffers.ReturnSendOfferDetails resp3 = SendAcceptedOffers.doPost(oppOff1);
        
        opp.Status__c = 'Qualified Offer';
        update opp;
        
        SendAcceptedOffers.ReturnSendOfferDetails resp4 = SendAcceptedOffers.doPost(oppOff);
        Test.stopTest();
    }
}