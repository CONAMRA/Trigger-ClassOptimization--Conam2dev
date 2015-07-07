trigger trgUpdateOpportunity on Lead (after Update) 
{

    Map<ID, ID> m = new Map<ID, ID>();  
    List<ID> opportunityID = new List<ID>();
    List<Opportunity> oppsToUpdate = new List<Opportunity>(); 
  
   for(integer i = 0; i<Trigger.new.size(); i++)     
    {
      if(Trigger.new[i].IsConverted == true)
      {
          m.put(Trigger.new[i].ConvertedOpportunityId,Trigger.new[i].ConvertedContactId);
          opportunityID.add(Trigger.new[i].ConvertedOpportunityId);
        
      }
    }
    for(opportunity opp : [select id, contact__c from opportunity where id in :opportunityID])
    {
         opp.contact__c= m.get(opp.id);
         oppsToUpdate.add(opp);   
    }
    update oppsToUpdate;
    
}