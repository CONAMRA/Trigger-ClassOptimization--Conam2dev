trigger MasterLeadTrigger on Lead (after insert, after update, before insert, before update) {
	
	if(trigger.isBefore){
        
        if(trigger.isInsert){
            
            LeadTriggerhandlerCls.onBeforeInsert(trigger.new);
        } 
        
        if(trigger.isUpdate){
        	
        	LeadTriggerhandlerCls.onBeforeUpdate(trigger.new, trigger.oldMap);
        	LeadTriggerhandlerCls.chkRetainStatusOnConversion(trigger.new);
        }
    }
    
    if(trigger.isAfter){
    	
    	if(trigger.isInsert){}
    	if(trigger.isUpdate){
    		
    		LeadTriggerhandlerCls.checkTrgUpdateOpportunity(trigger.new);
    		LeadTriggerhandlerCls.chkAfterLead_RecordAssignment(trigger.new, trigger.oldMap);
    		LeadTriggerhandlerCls.chkAfterLeadCreatePrincipal2(trigger.new, trigger.oldMap);
    		LeadTriggerhandlerCls.chkUpdatePrimaryCampaignSource(trigger.new);
		}
 	}
}