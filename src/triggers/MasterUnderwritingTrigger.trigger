trigger MasterUnderwritingTrigger on Underwriting__c (after insert, after update) {
    
    if(trigger.isInsert){
        UnderwritingTriggerHandlerCls underwritingCls = new UnderwritingTriggerHandlerCls();
        underwritingCls.SyncUnderwritingAndOpportunityOnInsert(trigger.new);
    }
    
    if(trigger.isUpdate){
        UnderwritingTriggerHandlerCls underwritingCls2 = new UnderwritingTriggerHandlerCls();
        underwritingCls2.SyncUnderwritingAndOpportunityOnUpdate(trigger.new, trigger.oldMap);
    }
}