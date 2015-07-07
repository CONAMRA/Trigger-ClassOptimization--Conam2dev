@isTest

// Test class for Priority Queue

private class QueueTests {

   // Test the Lead trigger/sync, attempt to convert the Lead. Add tasks too.
   private static testMethod void testLeadQueue() {
      LeadUtils.setTesting();   // Mark this is an Apex test
      
      Lead l = new Lead(
         FirstName = 'Test',
         LastName  = 'Testofferson',
         Company   = 'Test Industries LLC',
         Email     = 'test@test.com',
         Phone     = '1-800-555-TEST'
      );
      Database.SaveResult sr = Database.insert(l);
      String LeadId = sr.getId();
      
      Priority_Queue__c pq1 = new Priority_Queue__c(Name = l.Company,Lead__c=LeadId,Priority__c = 1);
      insert pq1;
      
      List<Priority_Queue__c> q_query = [SELECT Id,Lead__c,Last_Activity_Date__c FROM Priority_Queue__c WHERE id=:pq1.id ];
      
      System.debug('LeadId'+LeadId);
      System.debug('q_query[0]'+q_query[0]);
      System.debug('q_query[0].Lead__c'+ q_query[0].Lead__c);
      
      System.assertEquals(LeadId,q_query[0].Lead__c);
      System.assertEquals(NULL,q_query[0].Last_Activity_Date__c);
      String QueueId = q_query[0].Id;
      
      Queue_Sync.clearActed();
      
      Task LeadTask = new Task (
         Status   = 'Closed',
         Priority = 'High',
         Subject  = 'Test Task for Lead',
         WhoId    = LeadId
      );
      insert LeadTask;
            
      // Convert the Lead
      Queue_Sync.clearActed();
      Database.LeadConvert lc = new Database.LeadConvert();
      lc.setLeadId(LeadId);
      LeadStatus convertStatus = [SELECT Id, MasterLabel FROM LeadStatus WHERE IsConverted=true LIMIT 1];
      lc.setConvertedStatus(convertStatus.MasterLabel);
      Database.LeadConvertResult lcr = Database.convertLead(lc);
      System.assert(lcr.isSuccess());
      
      //
   }
   
   // Test the Opp trigger/sync as well as related Status field/formula
   private static testMethod void testOppQueue() {
      LeadUtils.setTesting();   // Mark this is an Apex test
      
      Opportunity o = new Opportunity(
         Name      = 'Test Opp',
         StageName = 'Open',
         CloseDate = Date.today()
      );
      Database.SaveResult sr = Database.insert(o);
      String OppId = sr.getId();
      
      List<Priority_Queue__c> q_query = [SELECT Id,Stage_Status__c FROM Priority_Queue__c WHERE Opportunity__c=:OppId];
      //System.assertEquals('Open',q_query[0].Stage_Status__c);
   }
   /* commenting the method as Priority queue needs to be removed
   // Test the Controller Class for the associated VF/Display page
   private static testMethod void testPriorityQueue_VF() {
      LeadUtils.setTesting();   // Mark this is an Apex test
      
      Lead l = new Lead(
         FirstName = 'Test',
         LastName  = 'Testofferson',
         Company   = 'Test Lead',
         Email     = 'test@test.com',
         Phone     = '1-800-555-TEST'
      );
      Database.Saveresult sr = Database.insert(l);
      String LeadId = sr.getId();
      
      Queue_Sync.clearActed();
      
      Opportunity o = new Opportunity(
         Name      = 'Test Opp',
         StageName = 'Open',
         CloseDate = Date.today()
      );
      insert o;
      
      List<Priority_Queue__c> PQs = new List<Priority_Queue__c>();
      for (Priority_Queue__c pq : [SELECT Id,Type__c,Priority__c FROM Priority_Queue__c]) {
         System.debug('+++ ' + pq.Id + ' : ' + pq.Type__c);
         if (pq.Type__c == 'Lead') { pq.Priority__c = 1; }
         else                      { pq.Priority__c = 2; }
         PQs.add(pq);
      }
    
      update PQs;
      
      PageReference pageRef = new PageReference('/apex/PriorityQueue'); 
      Test.setCurrentPage(pageRef);
      
      PriorityQueue_Controller pqCtrl = new PriorityQueue_Controller();
      System.assertEquals('Priority__c', pqCtrl.sortExpression);
      System.assertEquals('ASC', pqCtrl.getsortDir());
      
      List<Priority_Queue__c> displayQs = pqCtrl.Q;

      
      pqCtrl.sortExpression = 'Priority__c';      // Change the sort order
     // System.assertEquals('DESC', pqCtrl.getsortDir());
      pqCtrl.sortExpression = 'Company_Name__c';  // Change the sort column
  //    System.assertEquals('Company_Name__c', pqCtrl.sortExpression);
   //   System.assertEquals('ASC', pqCtrl.getsortDir());
      pqCtrl.fetchData();
           
      // Test the details pane
      pqCtrl.QID = pqCtrl.Q[0].Id;
      String bufferQID = pqCtrl.QID;   // To check to see if things are being removed from list
      pageRef = pqCtrl.passQID();
      
      // Simulate selecting the Lead status
      pqCtrl.strLeadStatus = 'Unqualified';
      pqCtrl.needsVal();
      pqCtrl.getValOptions();
      pqCtrl.strLeadStatus = 'Not Interested';
      pqCtrl.needsVal();
      pqCtrl.getValOptions();
      pqCtrl.strValValue = 'Really not interested';
      pageRef = pqCtrl.markComplete(); // Mark as complete, check the next in turn

      pqCtrl.QID = pqCtrl.Q[0].Id;
      pageRef = pqCtrl.passQID();
      // Simulate selecting the Opp status
      pqCtrl.strOppStage = 'Not Interested';
      pqCtrl.strValValue = 'Really not interested';
      pageRef = pqCtrl.closeDetails(); // Test close button
      System.assertNotEquals(bufferQID,pqCtrl.QID);
      
      // Refresh the page!
      pageRef = pqCtrl.refreshQuery();
      
      // Test Priorities
      List<SelectOption> options = pqCtrl.getPriorityToggle();
      pqCtrl.SelectedPriority = '1';
      pqCtrl.filterQuery();
      displayQs = pqCtrl.Q;
   }
   */
   /*
   
   // Simulate DML failure
   private static testMethod void testFail() {
      LeadUtils.setTesting();   // Mark this is an Apex test
      
      Lead l = new Lead(
         Id
         FirstName = 'Test',
         LastName  = 'Testofferson',
         Company   = 'Test Industries LLC',
         Email     = 'test@test.com',
         Phone     = '1-800-555-TEST'
      );
      String LeadId = sr.getId();
   }
   
   */
} // end class