trigger MasterAttachmentTrigger on Attachment (after delete) {
    
    if (trigger.isAfter) {

        if (trigger.isDelete ) {
            
            AttachmentTriggerhandlerCls.onAfterDelete(trigger.new , trigger.old);
            
        }
    }
}