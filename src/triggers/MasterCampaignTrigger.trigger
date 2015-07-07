trigger MasterCampaignTrigger on Campaign (after insert, after update, before insert, before update) {

	if(trigger.isBefore) {
		
		if(trigger.isInsert) {
			CampaignTriggerHandlerCls.chkbeforeOwnerChangeInsert(trigger.new);
		}
		
		if(trigger.isUpdate) {
			CampaignTriggerHandlerCls.chkbeforeOwnerChangeUpdate(trigger.new, trigger.oldMap);
		}
	}
	if(trigger.isAfter) {
		
		if(trigger.isInsert) {
			CampaignTriggerHandlerCls.chkCampaignCALC(trigger.new);	
		}
		
		if(trigger.isUpdate) {
			CampaignTriggerHandlerCls.chkCampaignCALC(trigger.new);
		}
	}
}