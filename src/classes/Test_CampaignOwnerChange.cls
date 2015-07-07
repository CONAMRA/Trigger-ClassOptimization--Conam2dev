@isTest (SeeAllData=true)
public class Test_CampaignOwnerChange {

   static testMethod void OwnerChange() {
      // Get a few admins to work with
      User[] admins = [SELECT Id,Email FROM User WHERE ProfileId = '00e30000000h0Bs' AND IsActive=true
                       AND Email!= NULL LIMIT 5];

      Campaign c = new Campaign();
      c.Name = 'Test Campaign';
      System.debug('+++ ' + admins[0].Id);
      c.OwnerId = admins[0].Id;
      Database.SaveResult sr = Database.insert(c);
      Id checkId = sr.GetID();
      Campaign[] campaignCheck = [SELECT Id,BD_Send_Cmpn_Owner__c FROM Campaign WHERE Id=: checkId];
      System.assertEquals(admins[0].Email,campaignCheck[0].BD_Send_Cmpn_Owner__c);
      
      // Test Additional Owner Assignment
      c.Additional_Owner__c = admins[1].Id;
      update c;
      campaignCheck = [SELECT Id,BD_Send_Addtl_Owner__c FROM Campaign WHERE Id=: checkId];
      System.assertEquals(admins[1].Email,campaignCheck[0].BD_Send_Addtl_Owner__c);
   }

} // end class