public with sharing class OppDocumentTriggerhandlerCls {

    public static Boolean runOnce = false;

    public static void onAfterInsert(List < Oppr_Document__c > oppdocList) {
        runOnce = true;
        List < Opportunity > oppList = new List < Opportunity > ();
        List < String > oppIds = new List < String > ();
        List < String > oppIdsToUpdate = new List < String > ();
        List < Oppr_Document__c > oppDocs = new List < Oppr_Document__c > ();

        for (Oppr_Document__c oppDoc: oppdocList) {
            //Get all the opportunities
            oppIds.add(oppDoc.opportunity__c);
        }

        if (!oppIds.IsEmpty()) {
            // Get List  Opp Docs for the Opportunities and opportunity status. Get only docs that are requested and not required (new additional docs)
            oppDocs = [SELECT id, status__c, opportunity__c, opportunity__r.Status__c FROM Oppr_Document__c WHERE status__c in ('Requested', 'Rejected') AND opportunity__c IN: oppIds];
        }

        if (!oppDocs.IsEmpty()) {
            //Loop thru all opportunity docs. if new doc requested for an opp  with status = 'Reviewing Documents' add to update list
            // update opp doc status to reject
            for (Oppr_Document__c ods: oppDocs) {
                if (ods.Opportunity__r.status__c == 'Reviewing Documents') {
                    oppIdsToUpdate.add(ods.opportunity__c);

                }
            }

            //if there are opportunities with status = 'Reviewing Documents' to update get them update status
            if (!oppIdsToUpdate.IsEmpty()) {
                oppList = [SELECT id, status__c FROM Opportunity WHERE id IN: oppIdsToUpdate];
                if (!oppList.IsEmpty()) {
                    for (Opportunity ol: oppList) {
                        ol.status__c = 'Documents Requested';
                    }
                }
                update oppList;
            }
        }
    }
    public static void onAfterUpdate(List < Oppr_Document__c > newoppdocList) {
        runOnce = true;
        List < Opportunity > oppList = new List < Opportunity > ();
        List < String > oppIds = new List < String > ();
        List < String > oppIdsToUpdate = new List < String > ();
        List < Oppr_Document__c > oppDocs = new List < Oppr_Document__c > ();

        for (Oppr_Document__c oppDoc: newoppdocList) {
            //Get all the opportunities
            oppIds.add(oppDoc.opportunity__c);
        }

        if (!oppIds.IsEmpty()) {
            // Get List  Opp Docs for the Opportunities and opportunity status. Get only docs that are requested and not required (new additional docs)
            oppDocs = [SELECT id, status__c, opportunity__c, opportunity__r.Status__c FROM Oppr_Document__c WHERE status__c in ('Requested', 'Rejected') AND opportunity__c IN: oppIds];
        }

        if (!oppDocs.IsEmpty()) {
            //Loop thru all opportunity docs. if new doc requested for an opp  with status = 'Reviewing Documents' add to update list
            // update opp doc status to reject
            for (Oppr_Document__c ods: oppDocs) {
                if (ods.Opportunity__r.status__c == 'Reviewing Documents') {
                    oppIdsToUpdate.add(ods.opportunity__c);

                }
            }

            //if there are opportunities with status = 'Reviewing Documents' to update get them update status
            if (!oppIdsToUpdate.IsEmpty()) {
                oppList = [SELECT id, status__c FROM Opportunity WHERE id IN: oppIdsToUpdate];
                if (!oppList.IsEmpty()) {
                    for (Opportunity ol: oppList) {
                        ol.status__c = 'Documents Requested';
                    }
                }
                update oppList;
            }
        }
    }
}