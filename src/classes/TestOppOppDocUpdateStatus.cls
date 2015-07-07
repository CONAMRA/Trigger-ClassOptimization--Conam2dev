@istest

public class TestOppOppDocUpdateStatus
{
    static testMethod void testDoGet()  {
    	
    	Test.startTest();
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
        app.SourceSystem = 'Biz2Credit';
        app.ExternalID = 'ExtID10001';
        app.MerchantID = 'Merchant 2000';
        
        Opportunity opp = Biz2CreditUtils.createOpportunity(app);
        opp.status__c = 'Reviewing Documents';
        update opp;
        
        Oppr_Document__c od = new Oppr_Document__c();
        od.document_name__c = 'Contract';
        od.Opportunity__c = opp.Id;
        insert od;
        
        Attachment at1 = new Attachment();
        at1.Name = 'Contract';
        at1.body = blob.valueof('attachment body');
        at1.parentid = od.id;
            
        insert at1;         
        
        List<Opportunity> oppList = new List<Opportunity>();
        List<Oppr_Document__c> oppDocList = new List<Oppr_Document__c>();
        
        oppDocList.add(od);
                    
        OppOppDocUpdateStatus.updateFromOppDocument(oppDocList);        
        Test.stopTest();
    }  
}