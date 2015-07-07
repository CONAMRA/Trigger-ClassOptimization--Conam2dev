@istest

public class TestSubmitApplication
{
    static testMethod void testDoPost() {
        
        Test.startTest();
        CALC.ApexTesting();
        Application app = new Application();

        // Using unique identifier of source system for Acct and opportunity Name
        //Get List Of required fields - contact     
        app.FirstName = 'James';
        app.LastName = 'Jones';
        app.HomeCity = 'Washington';
        app.LegalBusName = 'Test Business Merchant';

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
        app.ExternalID = 'ExtID 10001';
        app.MerchantID = 'Merchant 2000';

        app.Product = 'ACH';
        app.BusinessZip = '20716';
        app.AgeOfBusinessYrs = '20130404';

        app.HomeZip = '20716';
        app.DateOfBirth = '20130404';

        app.CloseDate = '20130404';

        app.HomeState = 'MD';
        app.ResidenceStatus = 'Yes';

        RestRequest req = new RestRequest();
        RestResponse res = new RestResponse();
        req.addHeader('Content-Type', 'application/x-www-form-urlencoded');
        
        Application app2 = new Application();

        // Using unique identifier of source system for Acct and opportunity Name
        //Get List Of required fields - contact     
        app2.FirstName = 'James2';
        app2.LastName = 'Jone2s';
        app2.HomeCity = 'Washington2';
        app2.LegalBusName = 'Test Business Merchant2';

        //Get List Of required fields - account
        app2.BusinessCity = 'Washington DC';
        app2.FederalTaxId = '111165555';

        //Get List Of required fields - opportunity
        app2.AvgMonthSales = 50000;
        app2.MajorCreditCardsProc = 'Visa';
        app2.AvgMonthTrans = 45000;
        app2.CCSalesLastMonth = 100000;
        app2.CCSalesLast1Month = 45000;
        app2.CCSalesLast2Month = 55000;
        app2.CCSalesLast3Month = 65000;
        app2.NumOfTransLastMonth = 300;
        app2.NumOfTrans1Month = 250;
        app2.NumOfTrans2Month = 350;
        app2.NumOfTrans3Month = 450;
        app2.SourceSystem = 'Biz2Credit';
        app2.ExternalID = 'ExtID 10001';
        app2.MerchantID = 'Merchant 2000';

        app2.Product = 'ABP';
        app2.BusinessZip = '20716';
        app2.AgeOfBusinessYrs = '20130404';

        app2.HomeZip = '20716';
        app2.DateOfBirth = '20130404';

        app2.CloseDate = '20130504';

        app2.HomeState = 'MD';
        app2.ResidenceStatus = 'No';
        
        Opportunity opp = new Opportunity();
        opp.Name = 'Opportunity New';
        opp.StageName = 'Approved';
        opp.CloseDate = System.today();
        opp.Current_Processor__c = 'ABC Global Systems';
        insert opp;
        
        Oppr_Document__c od3 = new Oppr_Document__c();
        od3.document_name__c = 'Four Months of Credit Statements (For MCA Products)';
        od3.Opportunity__c = opp.Id;
        od3.status__c = 'Requested';
        od3.RequiredDoc__c = true;
        insert od3;

        Oppr_Document__c od4 = new Oppr_Document__c();
        od4.document_name__c = 'Two Months of Bank Statements (For MCA Products)';
        od4.Opportunity__c = opp.Id;
        od4.status__c = 'Requested';
        od4.RequiredDoc__c = true;
        insert od4;

        Campaign cm = new Campaign();
        cm.Name = 'Biz2Credit';
        insert cm;

        SubmitApplication.ReturnSubmitAppDetails resp = SubmitApplication.doPost(app);
        SubmitApplication.ReturnSubmitAppDetails resp2 = SubmitApplication.doPost(app2);
        Test.stopTest();
    }
}