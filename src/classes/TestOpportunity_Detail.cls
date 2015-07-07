@isTest
public class TestOpportunity_Detail {

    public static testMethod void testMethod1() {
    
    Test.startTest();
    
    Campaign cmObj = new Campaign();
    cmObj.Name = 'Test';
    cmObj.Type = 'Internet';
    insert cmObj;
    
    User u = new User();
    u.Alias = 'rc';
    u.Username = 'rc@test.com';
    u.FirstName = 'Test';
    u.LastName = 'Testo';
    u.Email = 'rc@test.com';
    u.EmailEncodingKey = 'UTF-8';
    u.LanguageLocaleKey = 'en_US';
    u.LocaleSidKey = 'en_US';
    u.TimeZoneSidKey = 'America/New_York';
    u.ProfileId = '00e30000000h0BsAAI';
    u.UserPermissionsMarketingUser = true;
    u.UserPermissionsOfflineUser = true;
    u.IsActive = true;
    insert u;
    
    Account testAccount = new Account();
    testAccount.name = 'Test Account1';
    testAccount.OwnerId = u.Id;
    testAccount.BusinessType__c = 'testBusibess';
    insert testAccount; 
        
    Opportunity opp = new Opportunity();
    opp.Name = 'test Opportunity';
    opp.StageName = 'Approved';
    opp.CloseDate = System.today();
    opp.CampaignId = cmObj.Id;
    opp.LeadSource = 'web';
    opp.Current_Processor__c = 'Abanco INTERNATIONAL';
    opp.AccountId = testAccount.id;
    insert opp;
    
    Opportunity_Detail objOpp1 = new Opportunity_Detail('oop','2343');
    Opportunity_Detail objOpp2 = new Opportunity_Detail('oop','2343','1234');
    Opportunity_Detail objOpp4 = new Opportunity_Detail('oop','2343','1234','2345');
    Opportunity_Detail objOpp5 = new Opportunity_Detail('oop','2343','1234','2345','3456');
    Opportunity_Detail objOpp6 = new Opportunity_Detail(opp);
    
    Test.stopTest();
    }
}