trigger MasterNoteTrigger on Note__c (after insert, after update, before delete) {
    
    if(trigger.isAfter){
        if(trigger.isInsert || trigger.isUpdate){
        NoteTriggerHandlerCls noteCls = new NoteTriggerHandlerCls();
            noteCls.updateNoteFieldsOnOppInsertUpdate(trigger.new);
        }
    }
    if(trigger.isBefore){
        if(trigger.isDelete){
            NoteTriggerHandlerCls noteCls2 = new NoteTriggerHandlerCls();
            noteCls2.chkupdateNoteFieldsOnOppDelete (trigger.old);
        }
    }
}