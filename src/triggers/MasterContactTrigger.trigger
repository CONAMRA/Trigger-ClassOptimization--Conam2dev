trigger MasterContactTrigger on Contact (after insert, before insert) {

    if(trigger.isBefore) {
        
        if(trigger.isInsert || trigger.isUpdate) {
            ContactTriggerHandlerCls.chkDuplicateContactBlocker(trigger.new);
        }
    }
    
    if(trigger.isAfter) {
        
        if(trigger.isInsert) {
            ContactTriggerHandlerCls.chkContactAfterInsertTrigger(trigger.new);
        }
    }
}