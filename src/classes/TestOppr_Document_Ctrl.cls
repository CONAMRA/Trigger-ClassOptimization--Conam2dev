@isTest
public class TestOppr_Document_Ctrl{
   
     static testMethod void oppr_Document_Ctrltest(){
        
         CALC.ApexTesting();
         Account acc = TestUtils.createAccount();
         Campaign cm = TestUtils.createCampaign();
         Opportunity opp = TestUtils.createOpportunity(acc,cm);
         Oppr_Document__c od = New Oppr_Document__c();
         od.Opportunity__c = opp.Id;
         od.Status__c = 'Received';
         od.Description__c = 'Test Desc';
         od.Document_Name__c = 'Test Doc';
         od.RequiredDoc__c = true;
         od.Additional_Notes__c = 'Additional Notes';
         insert od;
         
         PageReference ref = Page.Oppr_DocumentCustom;
         Test.setCurrentPage(ref);
         ApexPages.currentPage().getParameters().put('retURL','oppId='+opp.Id);
         ApexPages.StandardController sc = new ApexPages.standardController(opp);
         
         test.StartTest();
         Oppr_Document_Ctrl Odc = new Oppr_Document_Ctrl(sc);
         Odc.genDynamicQuery(od.Id);
         Odc.Save();
         Odc.Cancel();
         ApexPages.currentPage().getParameters().put('id',od.id);
         Oppr_Document_Ctrl Odc1 = new Oppr_Document_Ctrl(sc);
         Odc1.genDynamicQuery(null);
         Test.StopTest();
    
     }
    
}