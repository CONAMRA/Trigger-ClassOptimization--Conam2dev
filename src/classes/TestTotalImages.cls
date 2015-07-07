@isTest
public with sharing class TestTotalImages {

    public static testMethod void totalImages_UnitTest() {
    
        CALC.ApexTesting();
        Test.startTest();
        Account acc = TestUtils.createAccount();
        Campaign cam = TestUtils.createCampaign();
        Opportunity opp = TestUtils.createOpportunity(acc, cam);
        Site_Survey__c surveyObj = TestUtils.createSiteSurvey(opp);
        ApexPages.StandardController controller = new ApexPages.StandardController(surveyObj);
        TotalImages imageObj = new TotalImages(controller);

        Attachment attachment = new Attachment();
        attachment.Body = Blob.valueOf('Test Attatchment on Class');
        attachment.Name = String.valueOf('test.txt');
        attachment.ParentId = surveyObj.Id;
        insert attachment;

        Attachment attachment2 = new Attachment();
        attachment2.Body = Blob.valueOf('Test Attatchment on Class');
        attachment2.Name = String.valueOf('test.txt');
        attachment2.ParentId = surveyObj.Id;
        insert attachment2;

        surveyObj.Viewing_Status__c = attachment.Id + ',' + attachment2.Id;
        update surveyObj;
        Apexpages.currentPage().getParameters().put('id', surveyObj.Id);
        TotalImages imagesObj = new TotalImages(controller);
        delete attachment;
        Test.stopTest();
    }
}