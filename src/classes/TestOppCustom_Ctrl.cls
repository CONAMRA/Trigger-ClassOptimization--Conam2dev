@isTest
public class TestOppCustom_Ctrl{

    static testMethod void runTestCase(){
    
    	Test.startTest();
    	CALC.ApexTesting();
        Account ac= new Account();
        ac.name='testcase';
        insert ac;
        Campaign cp= new Campaign();
        cp.name='cppname';
        insert cp;
       
        Opportunity opp = new Opportunity();
        opp.name='oppname';
        opp.accountid=ac.id;
        opp.ForecastCategoryName='Commit';
        opp.LeadSource='A001';
        opp.Campaignid=cp.id;
        opp.CloseDate= System.today();
        opp.Current_Processor__c='1st federal financial';
        opp.StageName='closed';
        insert opp;
        
        ApexPages.StandardController sc = new ApexPages.StandardController(opp);
        OppCustom_Ctrl nc= new OppCustom_Ctrl(sc);
        nc.save();
        nc.cancel();
         
        ApexPages.currentPage().getParameters().put('Id',opp.id);
        OppCustom_Ctrl nc1= new OppCustom_Ctrl(sc);
        Test.stopTest();
    }
}