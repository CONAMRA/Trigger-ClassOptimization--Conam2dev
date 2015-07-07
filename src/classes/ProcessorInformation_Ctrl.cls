/*
DS-CONAM 
MODIFIED : 04/13/2015
Added 3 new fields
On_Hold_Start_Date__c
On_Hold_Stop_Date__c
Processing_On_Hold__c


*/

public class ProcessorInformation_Ctrl {

     public Opportunity oppRecord{get; set;}
     public Account accRecord{get; set;}
     
     public ProcessorInformation_Ctrl(){
         String oppId = ApexPages.currentPage().getParameters().get('Id');
        
        if (oppId != null && !oppId.trim().equals('')){
            List<Opportunity> oppList = [SELECT 
            								 Id,AccountId,Current_Processor__c, Processor_Name__c,
            								 Site_Survey_Ordered_Due_Date__c,
                                             Split_Fund_Set_Up__c, Resulting_Process__c,Site_Survey_Available__c,
                                             New_Processor_Setup_Completed__c, Possible_Funding_Today__c,
                                             Site_Survey_Available_Due_Date__c,Partner_Merchant_Notified__c ,
                                             Required_Paperwork_Sent__c , Required_Paperwork_Received__c ,
                                             Confirmed_Split_in_Place__c , Exception_Requested__c,
                                             On_Hold_Reason__c, Number_of_MIDs_used_for_Pricing__c,
                                             Canceled_Site_Survey__c,Sales_Note_to_UW_Processing__c,
                                             MID_1__c, MID_2__c, MID_3__c, MID_4__c, MID_5__c, MID_6__c,
                                             AMEX_ONLY_GCS_MID_1__c, AMEX_ONLY_GCS_MID_2__c,
                                             All_necessary_site_inspections_ordered__c,UWEligible_for_Rapid_Funding__c,
                                             Sent_Rapid_Funding_Addendum__c, Received_Rapid_Funding_Addendum__c,
                                             First_Batch__c, Second_Batch__c, ACH_Requested__c, If_no_explain__c,
                                             Submitted_For_Funding_Approval__c, ACH_Confirmed__c,
                                             Have_all_UW_conditions_been_satisfied__c,Accepted_Rapid_Funding__c,
                                             Account_Number_For_Funding__c, Routing_Number__c, Bank_Name__c,
                                             Are_there_special_wiring_instructions__c,Site_Survey_Ordered__c,
                                             Existing_Competitor_Advance2__c,Third_Party_Payoff__c,DDA_Requested__c,
                                             DDA_Received__c, Third_Party_Company_Name__c,Payoff_Amount__c,
                                             Third_Party_Payoff_Amount__c, Payoff_Check_Sent__c,
                                             Confirmed_competitor_Payoff_Information__c,
                                             Has_the_check_been_requested__c,Previous_Deal_60_Paid_Off__c,
                                             Deal_Repriced_Need_New_FRSA__c, Any_New_UCC_Found__c,
                                             Any_New_Competitor_Tag__c,BAM_Match_Selection__c,Completed_NAMAA_Tag__c,
                                             Processing_Rep_Assigned__c,Processing_Representative__c,
                                             Processing_Initial_Review_Complete__c,New_FRSA_Has_Been_Received__c,
                                             Competitor_Advance_Company__c , All_Approved_With_Conditions_Met__c , 
                                             Approved_With_Conditions__c ,Processing_On_Hold__c,
                                             On_Hold_Start_Date__c ,On_Hold_Stop_Date__c                             
										FROM
                                             Opportunity 
                                        WHERE 
                                        	 Id = :oppId LIMIT 1];
                                            
            if (oppList != null && !oppList.isEmpty()) {
                oppRecord = oppList.get(0); 
                List<Account> accountList = [SELECT 
                								Id, Name, Number_of_Locations__c,
                								Number_of_Terminals_at_Location__c
                                            FROM 
                                            	Account 
                                            WHERE 
                                            	Id =:oppRecord.AccountId];  
                if(accountList != null && !accountList.isEmpty()) {
                    accRecord =   accountList.get(0);
                }                           
            }
        }else {
            ApexPages.addMessage(new ApexPages.Message(ApexPages.Severity.ERROR,'Opportunity Id Does not Exist!'));   
        }    
    }
    
    public PageReference doSave() {           
        try{
        	if(oppRecord!= null){
            	upsert oppRecord;
        	}
            if(accRecord != null){
                upsert accRecord;
            }
            ApexPages.addMessage(new ApexPages.Message(ApexPages.Severity.confirm,'Processor Information Saved Successfully!'));
        }catch(Exception e){ ApexPages.addMessage(new ApexPages.Message(ApexPages.Severity.ERROR,e.getMessage()));}
        return null;
    } 
    
}