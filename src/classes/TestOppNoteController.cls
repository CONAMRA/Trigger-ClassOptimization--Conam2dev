@isTest
public with sharing class TestOppNoteController {
    
    static testMethod void testMethod1()
    {
        Test.startTest();
        CALC.ApexTesting();
        Account acc = TestUtils.createAccount();
        Campaign cam =  TestUtils.createCampaign();
        Opportunity opp = TestUtils.createOpportunity(acc, cam);
        Note__c noteObj = TestUtils.createNote(opp);
        
        ApexPages.currentPage().getParameters().put('oppid', opp.Id);
        ApexPages.currentPage().getParameters().put('id', noteObj.Id);
        
        OppNoteController oppNoteObj = new OppNoteController();
        oppNoteObj.validateFields();
        oppNoteObj.cancel();
        oppNoteObj.save();
        ApexPages.currentPage().getParameters().put('id', null);
        OppNoteController oppNoteObj_NEW = new OppNoteController();
        Test.stopTest();
    }
    
    static testMethod void testMethod2()
    {
        Test.startTest();
        CALC.ApexTesting();
        Account acc = TestUtils.createAccount();
        Campaign cam =  TestUtils.createCampaign();
        Opportunity opp = TestUtils.createOpportunity(acc, cam);
        
        ApexPages.currentPage().getParameters().put('retURL', opp.Id);
        ApexPages.currentPage().getParameters().put('oppid', opp.Id);
        
        OppNoteController oppNoteObj = new OppNoteController();
        oppNoteObj.oppNote.Title = 'testTitle';
        oppNoteObj.save();
        oppNoteObj.cancel();
        Test.stopTest();
    }
}