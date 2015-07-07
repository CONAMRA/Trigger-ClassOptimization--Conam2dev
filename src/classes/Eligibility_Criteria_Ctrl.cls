public with sharing class Eligibility_Criteria_Ctrl {

public Opportunity oppRecord{get; set;}
     
     public Eligibility_Criteria_Ctrl(){
         String oppId = ApexPages.currentPage().getParameters().get('Id');
        
        if (oppId != null && oppId.trim() != ''){
            List<Opportunity> oppList = [SELECT
            									Id,EC_X4_consecutive_months_of_processing__c, X4_consecutive_months_of_Bank_Statements__c, 
                                         		Current_Balance_Sheet__c,EC_X12_separate_daily_deposits_per_month__c,
                                         		BA_X2_years_in_business__c,EC_Criteria_Decision__c
                                         FROM 	
                                         		Opportunity 
                                         WHERE	
                                         		Id = :oppId LIMIT 1];
                                            
            if (!oppList.isEmpty()) {
                oppRecord = oppList.get(0); 
            }
        }else {
            ApexPages.addMessage(new ApexPages.Message(ApexPages.Severity.ERROR,'Opportunity Id Does not Exist!'));   
        }    
    }
    
    public PageReference doSave() {
           
        try{
            upsert oppRecord;
            ApexPages.addMessage(new ApexPages.Message(ApexPages.Severity.confirm,'Eligibility Criteria Information Saved Successfully!'));
        }catch(Exception e){

            ApexPages.addMessage(new ApexPages.Message(ApexPages.Severity.ERROR,e.getMessage()));
        }
        return null;
    } 
}