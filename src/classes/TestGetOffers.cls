@isTest
private class TestGetOffers {
	static testMethod void testDoGet() {

		CALC.ApexTesting();
		Application app = new Application();

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
		app.SourceSystem = 'B2C';
		app.ExternalID = 'ExtID10001';
		app.MerchantID = 'Merchant 2000';

		Opportunity opp = Biz2CreditUtils.createOpportunity(app);

		Oppr_Offer__c opprOffer = Biz2CreditUtils.createOpprOffer(opp.Id);
		OpportunityOffer oppOff = new OpportunityOffer();

		// Correctly Entered data should give successful resp
		oppOff.OfferID = '100333r0';
		oppOff.Amount = 1000;
		oppOff.DailyCollection = 1000;
		oppOff.Duration = 5;
		oppOff.ProductName = 'Product 1';
		oppOff.DailyPayment = 1000;
		oppOff.NumOfPayments = 6;
		oppOff.ExternalID = 'ExtID10001';
		oppOff.Source = 'Biz2Credit';

		RestRequest req = new RestRequest();
		RestResponse res = new RestResponse();
		req.addHeader('Content-Type', 'application/x-www-form-urlencoded');

		//  SendAcceptedOffers.ReturnSendOfferDetails resp1 = SendAcceptedOffers.doPost(oppOff);        

		RestRequest req2 = new RestRequest();
		RestResponse res2 = new RestResponse();

		req2.addParameter('id', opp.External_ID__c);
		req2.addParameter('SourceSystem', 'Biz2Credit');
		String instanceUrl = Biz2CreditUtils.getInstanceURL();
		req2.requestURI = 'https://' + instanceUrl + '/services/apexrest/GetOffers';
		req2.httpMethod = 'GET';
		RestContext.request = req2;
		RestContext.response = res2;

		opp.Status__c = 'Qualified Offer';
		update opp;

		// request 1 
		GetOffers.doGet();


		req.addParameter('id', opp.External_ID__c);
		req.addParameter('source', 'Biz2Credit');
		req.requestURI = 'https://' + instanceUrl + '/services/apexrest/rest/GetOffers';
		req.httpMethod = 'GET';
		RestContext.request = req;
		RestContext.response = res;

		opp.Status__c = 'Processing';
		update opp;

		// request 2 
		GetOffers.doGet();


	}
}