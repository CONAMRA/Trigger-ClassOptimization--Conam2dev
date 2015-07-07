public class CampaignTriggerHandlerCls {
	
	public static void chkbeforeOwnerChangeInsert (List<Campaign> campList) {
		
		Set<Id> OwnerIds = new Set<Id>();
   		Map<Id, String> OwnerEmails = new Map<Id, String>();
   		Boolean toProcess = false;
   		
   		for (Campaign c : campList) {
      		OwnerIds.add(c.OwnerId);
      		if (c.Additional_Owner__c != NULL) { 
      			OwnerIds.add(c.Additional_Owner__c); 
      		}
   		}
   		for (User u : [SELECT Id,Email FROM User WHERE Id IN : OwnerIds]) {
      		OwnerEmails.put(u.Id, u.Email);
   		}
   		// Cycle through
   		for (Campaign c : campList) {
      		toProcess = true;
      		if (toProcess) {
         		c.BD_Send_Cmpn_Owner__c = OwnerEmails.get(c.OwnerId);
         		if (c.Additional_Owner__c != NULL) {
            		c.BD_Send_Addtl_Owner__c = OwnerEmails.get(c.Additional_Owner__c);
         		}
      		} 
		}
	}
	
	public static void chkbeforeOwnerChangeUpdate (List<Campaign> campLists, Map<Id, Campaign> oldMapCamp) {
		
		Set<Id> OwnerIds = new Set<Id>();
   		Map<Id, String> OwnerEmails = new Map<Id, String>();
   		Boolean toProcess = false;
   		// Make a Map of all the Owner Emails
   		for (Campaign c : campLists) {
      		OwnerIds.add(c.OwnerId);
      		if (c.Additional_Owner__c != NULL) { 
      			OwnerIds.add(c.Additional_Owner__c); 
      		}
   		}
   		for (User u : [SELECT Id,Email FROM User WHERE Id IN : OwnerIds]) {
      		OwnerEmails.put(u.Id, u.Email);
   		}
   		// Cycle through
   		for (Campaign c : campLists) {
			Campaign oldCampaign = oldMapCamp.get(c.Id);
         	if (oldCampaign.OwnerId != c.OwnerId || oldCampaign.Additional_Owner__c != c.Additional_Owner__c) {
            	toProcess = true;
         	} 
         	if (toProcess) {
         		c.BD_Send_Cmpn_Owner__c = OwnerEmails.get(c.OwnerId);
         		if (c.Additional_Owner__c != NULL) {
            		c.BD_Send_Addtl_Owner__c = OwnerEmails.get(c.Additional_Owner__c);
         		}
      		}   			
   		}
	}
	
	public static void chkCampaignCALC (list<Campaign> campListt) {
		
		for(Campaign c: campListt)
    	{
        	String campaignId = String.valueOf(c.Id);
        
        	System.debug('>>> ID=' + campaignId);
        	System.debug('>>> Type=' + c.Type);
        	// Modified to include all Campaign types - CY, 10/21/2014
        	//if (campaignId != null && (c.Type != null && c.Type.equals('Partners'))) 
        	if (campaignId != null && c.Type != null) 
        	{                   
            	CALC.CampaignRequest(campaignId);
        	}
    	}
	}
}