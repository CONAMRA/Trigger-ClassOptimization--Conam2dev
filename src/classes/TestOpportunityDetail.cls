@isTest

public class TestOpportunityDetail {

    static testMethod void RunTestMethod() {
   
        CALC.ApexTesting();
        EditTest();
        canceltest();
        
        try {
            OpportunityDetailtest();
        } 
        catch (Exception ex) {
            ApexPages.Message msg = new ApexPages.Message(ApexPages.Severity.Error, 'An exception occurred');
            ApexPages.addMessage(msg);
        }
    }

    static void EditTest() {
        
        OpportunityDetail Od = new OpportunityDetail();
        Od.btnText = 'Edit';
        Od.isVisible = false;
        Od.onEdit();
        Od.btntext = 'notEdit';
        Od.onEdit();
    }
    
    static void canceltest() {
        
        OpportunityDetail Od = new OpportunityDetail();
        Od.btnText = 'Edit';
        Od.isVisible = false;
        Od.onEdit11();
        Od.onCancel();
    }
    
    static void OpportunityDetailtest() {
    
        CALC.ApexTesting();
        Account acc = TestUtils.createAccount();
        Campaign cm = TestUtils.createCampaign();
        Opportunity opp = TestUtils.createOpportunity(acc, cm);
        ApexPages.currentPage().getParameters().put('id', opp.id);
        try {
            OpportunityDetail Od = new OpportunityDetail();

        } 
        catch (Exception ex) {
            ApexPages.Message msg = new ApexPages.Message(ApexPages.Severity.Error, 'An exception occurred');
            ApexPages.addMessage(msg);
        }
    }
}