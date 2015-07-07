public class LeadTriggerhandlerCls {

    Boolean runOnce = false;
	
	public static void chkAfterLead_RecordAssignment (List<Lead> leadlst, Map<Id, Lead> oldMapLead) {
		
		List <String> ids = new List <String> ();
		List <String> oldOwners = new List <String> ();
		List <String> newOwners = new List <String> ();
	
		for (Lead l : leadlst) {
			Lead oldLead = oldMapLead.get(l.Id);
			if (l.OwnerId != oldLead.OwnerId) { // Lead assignment change, create a note/object
				ids.add(l.Id);
				oldOwners.add(oldLead.OwnerId);
				newOwners.add(l.OwnerId);
			} 
		} 
		if (Ids.size() > 0) {
		OwnerAssignments.Record(ids, oldOwners, newOwners);
		}
	}
	
	public static void chkAfterLeadCreatePrincipal2 (List<Lead> ldList, Map<Id, Lead> oldMap) {
		
		List<Contact> contactList = new List<Contact>();
		List<OpportunityContactRole> updOppRoleList = new List<OpportunityContactRole>();
		List<Contact> contactPrimeList = new List<Contact>();
		List<String>  contactIDs = new List<String>();
		Map<id, String> contactEmailMap = new Map<id, String>();
		List<Contact> contactUpdList = new List<Contact>();
		
		for(Lead l: ldList){
			if(oldMap.containsKey(l.id)){
				Lead oldLead = oldMap.get(l.id);
				if(!oldLead.Status.equals('Converted') && l.status.equals('Converted')){
					if(l.Principal_2_Last_Name__c <> null && l.Principal_2_Last_Name__c <> ''){
						if(l.ConvertedAccountId <> null){
	 						Contact c = new Contact();
							c.LastName = l.Principal_2_Last_Name__c;
							c.FirstName = l.Principal_2_First_Name__c;
							c.Principal_1_Street_Address__c = l.Principal_2_Street_Address__c;
							c.Principal_1_City__c = l.Principal_2_City__c;
							c.Principal_1_State__c = l.Principal_2_State__c;
							c.Principal_1_Zip__c = l.Principal_2_Zip__c;
							c.Phone = l.Principal_2_Phone__c;
							c.MobilePhone = l.Principal_2_Mobile__c;
							c.Email = l.Principal_2_Email__c;
							c.Date_of_Birth__c = l.Principal_2_Date_of_Birth__c;
							c.Birthdate = l.Principal_2_Date_of_Birth__c;
							c.SS__c = l.Principal_2_Social_Security__c;
							c.OwnershipPercentage__c = l.Principal_2_Percent_Ownership__c;
							c.Principal_Home_Phone__c = l.Principal_2_Phone__c;
							c.AccountId = l.ConvertedAccountId;
							c.Created_By_Conversion__c = l.ConvertedOpportunityId;
							
							TriggerUtils t = new TriggerUtils();
							
							Boolean insertContact = false;
							insertContact = t.checkForContactDup(c);
							System.debug('Inserted --->' + insertContact);	
							
							if(insertContact)
								contactList.add(c);
							contactIDs.add(l.ConvertedContactId);	
							contactEmailMap.put(l.ConvertedContactId, l.Principal_1_Email__c);
						}	 
					}
				}
			}
		}
		if(!contactIDs.IsEmpty()){
			
			updOppRoleList = [SELECT id, IsPrimary FROM OpportunityContactRole WHERE ContactId IN: contactIDs];
			contactPrimeList = [SELECT id, email FROM Contact WHERE Id IN: contactIDs];
			if(!updOppRoleList.IsEmpty()){
				for(OpportunityContactRole oc: updOppRoleList){
					oc.IsPrimary = true;
				}
				update updOppRoleList;
			}
			if(!contactPrimeList.IsEmpty()){
				for(Contact c: contactPrimeList){
					if(contactEmailMap.containsKey(c.id)){
						String pEmail = contactEmailMap.get(c.id);
						c.Email = pEmail;
						contactUpdList.add(c);
					}
				}
				if(!contactUpdList.IsEmpty()){
					update contactUpdList;
				}
			}
		}
		if(!contactList.isEmpty()){
			insert contactList;
		}	
	}
	
	public static void onBeforeInsert(List<Lead> leadList){
		
	    Set <Id> toCheck = new Set <Id> (); // Merchant IDs to check
		Map <Id, Id> lastAE = new Map <Id, Id> (); // Most recent AE/owner (Referral ID, AE ID)
		Map <Id, Id> checked = new Map <Id, Id> (); // Cached AE values that were checked (may have Manager ID)
		Set <Id> active = new Set <Id> (); // Cached AE values that are active
		Map <Id, String> OwnerNames = new Map <Id, String> ();
		Map <Id, String> MerchantNames = new Map <Id, String> ();
		List <Task> newTasks = new List <Task> ();
        //runOnce = true;
        
        for(Lead l : leadList){
        	if (l.Status == 'Duplicate - Customer' || l.Status == 'Duplicate - Lead') {
			continue;
			}
			Boolean toProcess = false;
			if (l.Referral_Merchant_ID__c != NULL) {
				toProcess = true;
			} 
			if (toProcess) {
				toCheck.add(l.Referral_Merchant_ID__c);
			}
			if (l.RC_Status__c != NULL) {
			// Is Rock Connections, Set the local status
				RC_Status__c rcs = new RC_Status__c();
				rcs = RC_Status__c.getInstance(l.RC_Status__c);
				if (rcs != NULL) {
					l.Status = rcs.Local_Status__c;
				}
			}
        }
        for (Id MerchantId: toCheck) {
			List <Opportunity> o_query = [SELECT 
										  	Id, Account.Name, OwnerId 
										  FROM 
										  	Opportunity 
										  WHERE 
										  	AccountId = : MerchantId
										  ORDER BY 
										  	CreatedDate DESC LIMIT 1];
			if (o_query.size() == 0) {
				continue;
			} // skip if not found
			if (checked.get(o_query[0].OwnerId) == NULL) { // not cached, must check if active or not
				List <User> u_query = [SELECT Id, Name, IsActive FROM User WHERE Id = : o_query[0].OwnerId];
				if (u_query.size() == 0) {
					continue;
				} // skip if not found (should be rare in production)
				Id thisId;
				thisId = u_query[0].Id;
				if (u_query[0].IsActive == true) {
					active.add(thisId);
				}
				lastAE.put(MerchantId, thisId);
				checked.put(o_query[0].OwnerId, thisId);
				MerchantNames.put(MerchantId, o_query[0].Account.Name);
				OwnerNames.put(u_query[0].Id, u_query[0].Name);
			}
		}
	// Back to Lead cycle
		for (Lead l: leadList) {
			Id AE_Id;
			if (l.Referral_Merchant_ID__c != NULL) {
				AE_Id = lastAE.get(l.Referral_Merchant_ID__c);
			}
			if (AE_Id != NULL) {
				l.Referral_AE_Owner_ID__c = AE_Id;
				l.Referral_AE_Owner_Name__c = OwnerNames.get(AE_Id);
				l.Referral_Merchant_Name__c = MerchantNames.get(l.Referral_Merchant_ID__c);
				if (active.contains(AE_Id)) {
					l.OwnerId = AE_Id;
				}
			}
		}
		if (newTasks.size() > 0) {
			insert newTasks;
		}
	}
	
	public static void onBeforeUpdate(List<Lead> newTriggerLeads, Map <Id, Lead> oldTriggerLeads) {
		
		Set <Id> toCheck = new Set <Id> (); // Merchant IDs to check
		Map <Id, Id> lastAE = new Map <Id, Id> (); // Most recent AE/owner (Referral ID, AE ID)
		Map <Id, Id> checked = new Map <Id, Id> (); // Cached AE values that were checked (may have Manager ID)
		Set <Id> active = new Set <Id> (); // Cached AE values that are active
		Map <Id, String> OwnerNames = new Map <Id, String> ();
		Map <Id, String> MerchantNames = new Map <Id, String> ();
		List <Task> newTasks = new List <Task> ();
		
		for(Lead l : newTriggerLeads){
			if (l.Status == 'Duplicate - Customer' || l.Status == 'Duplicate - Lead') {
				continue;
			} // Skip if we're a dupe
			Boolean toProcess = false; // Boolean flag to add this Merchant AE for processing or not
		
		 	if (l.Referral_Merchant_ID__c != NULL) { // Check for update to save time
				Lead oldLead = oldTriggerLeads.get(l.Id);
				if (oldLead.Referral_Merchant_ID__c != l.Referral_Merchant_ID__c) {
					toProcess = true;
				}
			}	
			if (toProcess) {
				toCheck.add(l.Referral_Merchant_ID__c);
			}

			if (l.RC_Status__c != NULL) {
			// Is Rock Connections, Set the local status
				RC_Status__c rcs = new RC_Status__c();
				rcs = RC_Status__c.getInstance(l.RC_Status__c);
				if (rcs != NULL) {
					l.Status = rcs.Local_Status__c;
				}
			}
		} // end for Lead loop
	// Watch governor limits
		for (Id MerchantId: toCheck) {
			List <Opportunity> o_query = [SELECT 
												Id, Account.Name, OwnerId 
											FROM 
												Opportunity 
											WHERE 
												AccountId = : MerchantId
											ORDER BY 
												CreatedDate DESC LIMIT 1];
			if (o_query.size() == 0) {
				continue;
			} // skip if not found
			if (checked.get(o_query[0].OwnerId) == NULL) { // not cached, must check if active or not
				List <User> u_query = [SELECT Id, Name, IsActive FROM User WHERE Id = : o_query[0].OwnerId];
				if (u_query.size() == 0) {
					continue;
				} // skip if not found (should be rare in production)
				Id thisId;
				thisId = u_query[0].Id;
				if (u_query[0].IsActive == true) {
					active.add(thisId);
				}
				lastAE.put(MerchantId, thisId);
				checked.put(o_query[0].OwnerId, thisId);
				MerchantNames.put(MerchantId, o_query[0].Account.Name);
				OwnerNames.put(u_query[0].Id, u_query[0].Name);
			}
		}
	// Back to Lead cycle
		for (Lead l: newTriggerLeads) {
			Id AE_Id;
			if (l.Referral_Merchant_ID__c != NULL) {
				AE_Id = lastAE.get(l.Referral_Merchant_ID__c);
			}
			if (AE_Id != NULL) {
				l.Referral_AE_Owner_ID__c = AE_Id;
				l.Referral_AE_Owner_Name__c = OwnerNames.get(AE_Id);
				l.Referral_Merchant_Name__c = MerchantNames.get(l.Referral_Merchant_ID__c);
				if (active.contains(AE_Id)) {
					l.OwnerId = AE_Id;
				}
			}
		}
		if (newTasks.size() > 0) {
			insert newTasks;
		}
	}
	
	public static void chkRetainStatusOnConversion (list<Lead> listleadss) {
		
		for(Lead l : listleadss)
    	{
	        if((l.isConverted==true)&&(l.status != 'Converted'))
	        {
	        	l.status='Converted';
	        }
    	} 
	}
	
	public static void checkTrgUpdateOpportunity (list<Lead> ldlists) {
		
		Map<Id, Id> m = new Map<Id, Id>();  
	    List<Id> opportunityId = new List<Id>();
	    List<Opportunity> oppsToUpdate = new List<Opportunity>(); 
	  
	   	for(integer i = 0; i<ldlists.size(); i++)     
	    {
		    if(ldlists[i].IsConverted == true)
		    {
		    	m.put(ldlists[i].convertedOpportunityId,ldlists[i].convertedContactId);
		    	opportunityId.add(ldlists[i].convertedOpportunityId);
		    }
	    }
	    for(opportunity opp : [SELECT id, contact__c FROM Opportunity WHERE id IN : opportunityId])
	    {
		    opp.contact__c= m.get(opp.id);
		    oppsToUpdate.add(opp);   
	    }
	    update oppsToUpdate;
	}
	
	public static void chkUpdatePrimaryCampaignSource (list<Lead> leadList) {
		
		Set<Id> oppId;
	    List<Opportunity> opps = new List<Opportunity>();
	    Set<Id> Ids = new Set<Id>();
	    Map<Id,Id> mapCamp = new Map<Id,Id>();
	    List<Opportunity> upOpp=new List<Opportunity>();
	
	    for(Lead l : leadList)
	    {
	        Ids.add(l.Id);
	    }
	    /*Querying the Campaign Member records which are leads and where the Campaigns, to which they were assigned,
	      have been responded to.*/
	      
	    List<CampaignMember> camp = [SELECT 
	    							 	Id,CampaignId,FirstRespondedDate,First_Responded_Date__c 
	                                 FROM 
	                                 	CampaignMember 
	                                 WHERE 
	                                 	LeadId =:Ids AND HasResponded = True
	                                 ORDER BY 
	                                 	First_Responded_Date__c ASC ];
	    if(camp.size()>0)
	    {
	    /* Assigning the first CampaignId from the List above, to the a Map with Corresponding Converted OpportunityId
	       of this Lead.*/
		    for(Lead l : leadList)
		    {
		    	if((l.IsConverted==true) && (l.ConvertedOpportunityId != null) )
		        {
		        	mapCamp.put(l.ConvertedOpportunityId, camp[0].CampaignId);
		        }
		    }
		           //Updating the Opportunity with CampaignId, which would set the Primary Campaign Source on Opportunity.
		    opps = [SELECT CampaignId FROM Opportunity WHERE Id IN : mapCamp.keySet()]; 
		    for (Opportunity o: opps)
		    {           
			    o.CampaignId = mapCamp.get(o.Id);
			    upOpp.add(o);
		    }
		    if(upOpp.size()>0)
		    	update upOpp;          
	    }
	}
}