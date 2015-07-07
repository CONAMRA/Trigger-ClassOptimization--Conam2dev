@isTest
public class TestCheckApplicationStatus{
    
    public static void doGet() {
        
        Test.startTest();
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
        app.SourceSystem = 'Biz2Credit';
        app.ExternalID = 'ExtID10001';
        app.MerchantID = 'Merchant 2000';

        Opportunity opp = Biz2CreditUtils.createOpportunity(app);

        RestRequest req = new RestRequest();
        RestResponse res = new RestResponse();

        req.addParameter('id', opp.External_ID__c);
        req.addParameter('SourceSystem', 'Biz2Credit');
        String instanceUrl = Biz2CreditUtils.getInstanceURL();
        req.requestURI = 'https://' + instanceUrl + '/services/apexrest/CheckApplicationStatus';
        req.httpMethod = 'GET';
        RestContext.request = req;
        RestContext.response = res;
        // request 1 
        CheckApplicationStatus.doGet();


        req.addParameter('id', opp.External_ID__c);
        req.addParameter('source', 'Biz2edit');
        req.requestURI = 'https://' + instanceUrl + '/services/apexrest/CheckApplicationStatus';
        req.httpMethod = 'GET';
        RestContext.request = req;
        RestContext.response = res;
        // request 1 
        CheckApplicationStatus.doGet();
        Test.stopTest();        

    }
}