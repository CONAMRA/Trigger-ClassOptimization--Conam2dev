/*

Modified
DS-CONAM - 03/04/2015
Version 10 to 32
Added @istest Annotation
Added Test.startTest() and Test.stopTest() to both methods
*/


@istest
public class TestTrigger {
    
    static testMethod void myTest() {

        Test.startTest();
        testOppDates();
        testRenewalClone();
        Test.stopTest();
    }

    static void testRenewalClone() {

        CALC.ApexTesting();
        User u = [SELECT id FROM User WHERE isActive = true limit 1];
        
        Opportunity o = new Opportunity(Name = 'Test Opportunity 12345', 
                                        CloseDate = System.today(), 
                                        StageName = 'Closed Deal', 
                                        Calculate_Due_Dates__c = System.now(), 
                                        Manager_s_Override__c = 0);
        insert o;

        OpportunityTeamMember newotm = new OpportunityTeamMember();
        newotm.OpportunityId = o.id;
        newotm.UserId = u.id;
        newotm.TeamMemberRole = 'Partner Sales Representative';
        //newotm.OpportunityAccessLevel = otm.OpportunityAccessLevel;
        insert newotm;

        Opportunity o2 = new Opportunity(Name = 'Test Opportunity 12345', 
                                         CloseDate = System.today(), 
                                         StageName = 'Closed Deal', 
                                         Calculate_Due_Dates__c = System.now(), 
                                         Manager_s_Override__c = 0);
        o2.previous_opportunity__c = o.id;
        insert o2;

    }
    
    static void testOppDates() {
        
        CALC.ApexTesting();
        User u = [SELECT id FROM User WHERE isActive = true limit 1];
        
        Campaign c = new Campaign();
        c.Name = 'test';
        c.Sales_Team_Member_1__c = u.id;
        c.Sales_Team_Member_2__c = u.id;
        c.Sales_Team_Member_3__c = u.id;
        c.Sales_Team_Member_4__c = u.id;
        c.Sales_Team_Member_5__c = u.id;
        c.Sales_Team_Member_6__c = u.id;
        insert c;

        Opportunity o = new Opportunity(Name = 'Test Opportunity 12345', 
                                        Closedate = System.today(), 
                                        StageName = 'Closed Deal', 
                                        Calculate_Due_Dates__c = System.now(), 
                                        Manager_s_Override__c = 0);
                                        
        o.CampaignId = c.id;
        o.Decision_Date__c = System.now();
        o.Submit_To_Sales_Assistant__c = System.now();
        o.Re_Decision_Date__c = System.now();
        o.Notified_NxGen_of_Approval__c = System.now();
        insert o;

        ApexServices.CountBusinessDays(System.now(), System.now());

        o.Split_Fund_Set_Up__c = 'GPS - Rocky Mountain';
        update o;

        o.Split_Fund_Set_Up__c = 'Rapid Advance Chooses';
        update o;

        o.Split_Fund_Set_Up__c = 'xxx';
        o.Current_Processor__c = 'Nova';
        o.Processor_Name__c = 'Nova';
        update o;

        o.Current_Processor__c = 'Nova';
        o.Processor_Name__c = 'xxy';
        update o;

        o.Renewal__c = true;
        update o;

        o.Underwriting_Approval__c = 'Declined';
        update o;

        o.Underwriting_Approval__c = 'Auto Declined';
        update o;

        O.QC_Issue_Return_to_Sales_Assistant__c = 'TEST qc';
        update o;

        o.Processing_Re_Set__c = system.now();
        update o;
    }
}