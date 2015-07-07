@isTest
public with sharing class TestRADoc_Ctrl 
{
    static testMethod void testMethod1()
    {
        Test.startTest(); 
        CALC.ApexTesting();
        Account acc = TestUtils.createAccount();
        Campaign cm = TestUtils.createCampaign();
        Opportunity opp = TestUtils.createOpportunity(acc, cm); 
        Quote Quo = TestUtils.createQuote(opp);
                
        PageReference ref = new PageReference('/apex/RADoc_Custom'); 
        Test.setCurrentPage(ref); 
        ApexPages.currentPage().getParameters().put('retURL','oppId='+opp.Id);
        
        ApexPages.StandardController controller =new ApexPages.StandardController(opp);
        RADoc_Ctrl radocObj1 = new RADoc_Ctrl(controller);
        radocObj1.cancel();
        radocObj1.save();
        
        ApexPages.currentPage().getParameters().put('Id', opp.Id);
        RADoc_Ctrl radocObj = new RADoc_Ctrl(controller);
        radocObj.cancel();
        radocObj.save();
        
        /*       
        RADoc_Ctrl radocObj1 = new RADoc_Ctrl(controller);
        radocObj1.genDynamicQuery(Quo.id);
        radocObj1.cancel();
        radocObj1.save();
        */
        Test.stopTest();
    }
}