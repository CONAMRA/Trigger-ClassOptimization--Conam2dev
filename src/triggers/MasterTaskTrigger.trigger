trigger MasterTaskTrigger on Task(after insert, after update, after delete, after undelete) {


    if (trigger.isAfter) {

        if (trigger.isInsert || trigger.isUndelete ) {
        
            TaskTriggerhandlerCls taskCls1 = new TaskTriggerhandlerCls();
            taskCls1.onAfterInsert(trigger.new);
        }

        if (trigger.isUpdate) {
            
            TaskTriggerhandlerCls taskCls2 = new TaskTriggerhandlerCls();
            taskCls2.onAfterUpdate(trigger.new , trigger.oldMap);
           
        }
        if (trigger.isDelete) {
        
            TaskTriggerhandlerCls taskCls3 = new TaskTriggerhandlerCls();
            taskCls3.onAfterDelete(trigger.new , trigger.old);
           
        }

    }


}