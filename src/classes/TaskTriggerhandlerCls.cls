public with sharing class TaskTriggerhandlerCls {

    public static Boolean runOnce = false;
    List < Five9Task2LeadMappings__c > mappings = Five9Task2LeadMappings__c.getAll().values();
    Map < String, String > statusMap = new Map < String, String > ();
    Map < String, String > unqualifiedReasons = new Map < String, String > ();
    Map < String, String > leadCallDispositionMap = new Map < String, String > ();
    List < Lead > leads = new List < Lead > ();
    // Set<Lead> leadSet = new Set<Lead>();
    List < Id > leadId = new List < Id > ();

    Map < Id, Lead > mapLead = new Map < Id, Lead > ();
    String unqualifiedReason;

        public void onAfterInsert(List < Task > taskList) {
            runOnce = true;
            try {
            
            for (Five9Task2LeadMappings__c m: mappings) {

                statusMap.put(m.Five9Disposition__c, m.LeadStatus__c);
                if (m.UnqualifiedReason__c != null) {
                    unqualifiedReasons.put(m.Five9Disposition__c, m.UnqualifiedReason__c);
                }
            }
            system.debug(' statusMap ' + statusMap);
            system.debug(' mappings ' + mappings);

            Set < ID > lListTemp = new Set < Id > ();

            for (Task t: taskList) {

                if (t.WhoId != null && t.WhoId.getSobjectType() == Schema.Lead.sObjectType) {
                    //Lead l = new Lead(Id=t.WhoId); 
                    lListTemp.add(t.WhoId);
                }
            }


            Map < Id, AggregateResult > numTasks = new Map < id, AggregateResult > ([SELECT whoid Id, COUNT(Id) CallCount
            FROM Task WHERE Five9__Five9CallType__c IN('Agent', 'Preview', 'Outbound')
            and who.Id in : lListTemp group by whoid]);
            for (Task t: taskList) {
                //On insert we need to update the status
                if (t.WhoId != null && t.WhoId.getSobjectType() == Schema.Lead.sObjectType) {
                    Lead l = new Lead(Id = t.WhoId);

                    String newStatus = statusMap.get(t.CallDisposition);

                    System.debug('newStatus ' + newStatus);
                    System.debug('t.CallDisposition ' + t.CallDisposition);

                    if (newStatus != null) {
                        l.Status = newStatus;
                        unqualifiedReason = unqualifiedReasons.get(t.CallDisposition);
                        if (unqualifiedReason != null) {
                            l.Unqualified_Reason__c = unqualifiedReason;
                        }

                    }

                    System.debug(' numTasks ' + numTasks);

                    Integer count = numTasks.size() == 0 ? 0 : Integer.valueOf(String.valueOf(numTasks.get(l.id).get('CallCount')));
                    l.Five9_Call_Counter__c = count;
                    mapLead.put(l.id, l);
                }
            }
            if (mapLead.size() > 0) {
                for (Id iTemp: mapLead.keyset())
                leads.add(mapLead.get(iTemp));
                update leads;
            }
            }
            catch (Exception e) {
                System.debug('An exception has been generated ' + e.getMessage() + ' ' + e.getLineNumber());
            }
            
        }

        public void onAfterUpdate(List < Task > newtask1List, Map<Id, Task> oldtasklist) {
            runOnce = true;
            for (Five9Task2LeadMappings__c m: mappings) {

                statusMap.put(m.Five9Disposition__c, m.LeadStatus__c);
                if (m.UnqualifiedReason__c != null) {
                    unqualifiedReasons.put(m.Five9Disposition__c, m.UnqualifiedReason__c);
                }
            }
            for (Task t: newtask1List) {
                if (t.WhoId != null && t.WhoId.getSobjectType() == Schema.Lead.sObjectType) {
                    if (oldtasklist.get(t.Id).CallDisposition != t.CallDisposition) {
                        leadId.add(t.whoID);
                        leadCallDispositionMap.put(t.whoID, t.CallDisposition);
                    }
                }
            }

            //System.debug('leadCallDispositionMap '+leadCallDispositionMap);

            if (leadId.size() > 0) {
                List < Lead > lList = [select id, status, Unqualified_Reason__c from lead where id in : leadId];

                Map < Id, AggregateResult > numTasks = new Map < id, AggregateResult > ([SELECT whoid Id, COUNT(Id) CallCount
                FROM Task WHERE Five9__Five9CallType__c IN('Agent', 'Preview', 'Outbound')
                and who.Id in : LeadID group by whoid]);

                //System.debug(' numTasks  ' +numTasks);

                for (Lead lTemp: lList) {
                    lTemp.Status = statusMap.get(leadCallDispositionMap.get(lTemp.id));
                    //System.debug('lTemp.Status '+lTemp.Status);
                    unqualifiedReason = unqualifiedReasons.get(leadCallDispositionMap.get(lTemp.id));
                    if (unqualifiedReason != null) {
                        lTemp.Unqualified_Reason__c = unqualifiedReasons.get(leadCallDispositionMap.get(lTemp.id));

                    }
                    Integer count = numTasks.size() == 0 ? 0 : Integer.valueOf(String.valueOf(numTasks.get(lTemp.id).get('CallCount')));
                    lTemp.Five9_Call_Counter__c = count;
                    leads.add(lTemp);
                }
            }

            if (leads.size() > 0) update leads;
        }
        
        public void onAfterDelete(List < Task > newtask1List, List<Task> oldtasklist) {
        runOnce = true;
        
        try{
        leads = new List < Lead > ();
        for (Five9Task2LeadMappings__c m: mappings) {

                statusMap.put(m.Five9Disposition__c, m.LeadStatus__c);
                if (m.UnqualifiedReason__c != null) {
                    unqualifiedReasons.put(m.Five9Disposition__c, m.UnqualifiedReason__c);
                }
            }
        
        for (Task t: oldtasklist) {
            if (t.WhoId != null && t.WhoId.getSobjectType() == Schema.Lead.sObjectType) {
                leadID.add(t.WhoId);
            }
        }

        if (leadId.size() > 0) {
            List < Lead > lList = [select id, status, Unqualified_Reason__c from lead where id in : leadId];
            Map < Id, AggregateResult > numTasks = new Map < id, AggregateResult > ([SELECT whoid Id, COUNT(Id) CallCount
            FROM Task WHERE Five9__Five9CallType__c IN('Agent', 'Preview', 'Outbound')
            and who.Id in : LeadID group by whoid]);

            for (Lead lTemp: lList) {
                Integer count = numTasks.size() == 0 ? 0 : Integer.valueOf(String.valueOf(numTasks.get(lTemp.id).get('CallCount')));
                lTemp.Five9_Call_Counter__c = count;
                leads.add(lTemp);
            }
        }

        if (leads.size() > 0) {
            update leads;
        }


    }
    catch (Exception e) {
        System.debug('An exception has been generated ' + e.getMessage() + ' ' + e.getLineNumber());
    }

    }
    
       public static void Queue_TaskAfterInsert(List < Task > newtask1List) {
    // Trigger to create/update the relevant Priority Queue object following Lead insert/modification
   List<Lead>        toSyncLead = new List<Lead>();
   List<Opportunity> toSyncOpp  = new List<Opportunity>();
   Set<Id> fetchLead = new Set<Id>();
   Set<Id> fetchOpp  = new Set<Id>();

   for (Task t : newtask1List) {
      String potentialOppId = t.WhatId;
      if      (t.WhatId != NULL && potentialOppId.substring(0, 3) == '006') { fetchOpp.add(t.WhatId); }
      else if (t.WhoId != NULL && t.WhatId == NULL)                         { fetchLead.add(t.WhoId); }
   }   // end for Task loop

   Boolean success;
   if (fetchLead.size() > 0) {
      toSyncLead = [SELECT Id,Company,status,ConvertedOpportunityId FROM Lead WHERE Id IN: fetchLead];
      success = Queue_Sync.syncQueue(toSyncLead);   // Add try/except
   }
   if (fetchOpp.size() > 0) {
      toSyncOpp = [SELECT Id,Name FROM Opportunity WHERE Id IN: fetchOpp];
      success = Queue_Sync.syncQueue(toSyncOpp);   // Add try/except   
   }
   }
}