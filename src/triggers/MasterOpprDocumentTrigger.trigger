trigger MasterOpprDocumentTrigger on Oppr_Document__c(after insert, after update) {


    if (trigger.isAfter) {

        if (trigger.isInsert) {

            OppDocumentTriggerhandlerCls.onAfterInsert(trigger.new);
            OppOppDocUpdateStatus.updateFromOppDocument(Trigger.new);  
              //Rule 5b
            CheckForOppDocumentsAttach.updateFromOppDocument(Trigger.new);
        }

        if (trigger.isUpdate) {

            OppDocumentTriggerhandlerCls.onAfterUpdate(trigger.new);
            OppOppDocUpdateStatus.updateFromOppDocument(Trigger.new);  
              //Rule 5b
            CheckForOppDocumentsAttach.updateFromOppDocument(Trigger.new);
        }

    }


}