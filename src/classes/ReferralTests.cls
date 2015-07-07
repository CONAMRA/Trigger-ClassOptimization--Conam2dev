@isTest
private class ReferralTests {

   static testMethod void leadReferral() {
      CALC.ApexTesting();
      Database.SaveResult sr;
      
      User u = new User();
      u.Alias = 'reftest';
      u.Username = 'referraltest@test.com';
      u.FirstName = 'Test';
      u.LastName = 'Testo';
      u.Email = 'referraltest@test.com';
      u.EmailEncodingKey = 'UTF-8';
      u.LanguageLocaleKey = 'en_US';
      u.LocaleSidKey = 'en_US';
      u.TimeZoneSidKey = 'America/New_York';
      u.ProfileId='00e30000000h0BsAAI';
      u.UserPermissionsMarketingUser = true;
      u.UserPermissionsOfflineUser = true;
      u.IsActive = true;
      sr = Database.insert(u);
      String userId = sr.getId();
      
      Account testA = new Account();
      testA.Name = 'Test Account';
      sr = Database.insert(testA);
      String AccountId = sr.getId();
      
      Lead noOpp = new Lead();
      noOpp.Company = 'Active Test';
      noOpp.FirstName = 'Tester';
      noOpp.LastName = 'Testofferson';
      noOpp.Email = 'activelead@test.com';
      noOpp.Referral_Merchant_ID__c = AccountId;
      sr = Database.insert(noOpp);
      String noOppId = sr.getId();

      List<Lead> query = [SELECT 
      							Id,OwnerId 
      					FROM 
      							Lead 
      					WHERE 
      							Id =: NoOppId];
      System.assertEquals(UserInfo.getUserId(),query[0].OwnerId);

      Opportunity testO = new Opportunity();
      testO.AccountId = AccountId;
      testO.OwnerId = UserId;
      testO.Name = 'TestOpp';
      testO.StageName = 'Open';
      testO.CloseDate = Date.today();
      sr = Database.insert(testO);
      String oppId = sr.getId();
      
      Lead activeTest = new Lead();
      activeTest.Company = 'Active Test';
      activeTest.FirstName = 'Tester';
      activeTest.LastName = 'Testofferson';
      activeTest.Email = 'activelead2@test.com';
      activeTest.Referral_Merchant_ID__c = AccountId;
      sr = Database.insert(activeTest);
      String activeTestId = sr.getId();

      query = [SELECT 
      				Id,OwnerId 
      			FROM 
      				Lead 
      			WHERE 
      				Id =: activeTestId];
      System.assertEquals(UserId,query[0].OwnerId);
      
      // Bulk test
      List<Lead> multiLeads = new List<Lead>();
      for (Integer c = 1 ; c == 500; c++) {
         Lead freshTest = new Lead();
         freshTest.Company = 'Fresh ' + c.format();
         freshTest.FirstName = 'Freshee';
         freshTest.LastName = 'McFreshStein';
         freshTest.Email = 'fresh' + c.format() + '@fresh.com';
         freshTest.Referral_Merchant_ID__c = AccountId;
         multiLeads.add(freshTest);
      }
      insert multiLeads;
           
      System.runAs ( new User(Id = UserInfo.getUserId()) ) {
         u.IsActive = false;
         update u;
      }

      Lead inactiveTest = new Lead();
      inactiveTest.Company = 'Inactive Test';
      inactiveTest.FirstName = 'Tester';
      inactiveTest.LastName = 'Testofferson';
      inactiveTest.Email = 'inactivelead@test.com';
      inactiveTest.Referral_Merchant_ID__c = AccountId;
      sr = Database.insert(inactiveTest);
      String inactiveTestId = sr.getId();

      query = [SELECT 
      				Id,OwnerId 
      			FROM 
      				Lead 
      			WHERE 
      				Id =: inactiveTestId];
      System.assertEquals(UserInfo.getUserId(),query[0].OwnerId);
   }
}