trigger MasterOpportunityTrigger on Opportunity (after insert , before insert, before update) {
    
    
    if(trigger.isAfter){
        
        if(trigger.isInsert){
            
            OpportunityTriggerhandlerCls.onAfterInsert(trigger.new);
          
        } 
    }
     if(trigger.isBefore){
        
        if(trigger.isInsert){
            
            OpportunityTriggerhandlerCls.UnderwritingOpprtunityInsert(trigger.new);
            OpportunityTriggerhandlerCls.CalcualtePercentPaidOffTriggerInsert(trigger.new);
            OpportunityTriggerhandlerCls.opportunityCampaignChosenInsert(trigger.new);
        }
        if(trigger.isUpdate){
            
            OpportunityTriggerhandlerCls.UnderwritingOpprtunityUpdate(trigger.new , trigger.oldMap);
             OpportunityTriggerhandlerCls.RiskAlertUpdate(trigger.new , trigger.oldMap);
             OpportunityTriggerhandlerCls.CalcualtePercentPaidOffTriggerUpdate(trigger.new , trigger.oldMap);
             OpportunityTriggerhandlerCls.opportunityCampaignChosenUpdate(trigger.new , trigger.old);
        } 
        /*if(trigger.isUpdate || trigger.isInsert){
            
            OpportunityTriggerhandlerCls.UnderwritingOpprtunityInsertUpdate(trigger.new , trigger.oldMap);
        }*/  
    }
    
  
}