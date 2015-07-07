public with sharing class FundingInfoSignOff_Ctrl {

    public Opportunity oppRecord{get; set;}
    public Account accRecord{get; set;}
    public Decimal applicant1FICO{get; private set;}
    public Decimal yrsInBusiness{get; private set;}
      
    public FundingInfoSignOff_Ctrl(){
        String oppId = ApexPages.currentPage().getParameters().get('Id');        
        if (oppId != null && oppId.trim() != ''){
            List<Opportunity> oppList = [SELECT
            								Id, Type_of_Entity__c, Legal_Name__c, Current_ROI__c, OwnerId,
            								Processing_Representative__c, UW_Underwriter_Assigned__c, 
                                            Auto_Decisioned_By__c, Product__c, Amount, Pay_Back_Amount__c,
                                            Percent_Payback__c, Estimated_Daily_Transactions__c,
                                            Number_of_MIDs_used_for_Pricing__c, SIC_CODE__c, Business_Category__c,
                                            Applicant_2_FICO__c, Prefunding_Call_Performed_by__c, 
                                            Prefunding_Call_Completed_Date__c, AccountId,Manual_Applicant_1_FICO_Score__c,
                                            Manual_Applicant_2_FICO_Score__c, PSOE_FRSA__c, PSOE_Business_Term__c,
                                            PSOE_No_QC_Calc__c, PSOE_Loan_Key_Suppliment__c,MLA_Addendum__c,
                                            Funding_Checklist_Error__c, PSOE_Competitor_Payoff__c, PSOE_Voided_Check__c,
                                            PSOE_Funding_Checklist__c,Rapid_Funding_Addendum__c,Wire_Coordinator__c,
                                            Account_Database_Entry__c, Funded_by_WC__c, Account_Database_Entry_Due_Date__c,
                                            Funded_by_WC_Due_Date__c,Acct_Set_Up_Green_R_Completed__c,
                                            Begin_Activity_Monitoring__c, Funding_Status__c, 
                                            Begin_Activity_Monitoring_Due_Date__c, CloseDate, Acct_Set_Up_Green_R_Started__c,
                                            Packet_Preparation_Sent__c, Closed_Reason__c, Funding_Notes__c,
                                            Sent_Rapid_Funding_Addendum__c,Green_R_Errors__c,
                                            Visa_MC__c, AMEX__c, Discover__c, Debit__c, EBT__c,
                                            Received_Rapid_Funding_Addendum__c, RA_Finance_Calc__c, WC_Assigned__c                                                                                                       
           								FROM 
           									Opportunity
           								WHERE 
           									Id = :oppId LIMIT 1];
                                            
            if (!oppList.isEmpty()){
                oppRecord = oppList.get(0); 
                List<Account> accountList = [SELECT
                								Id, Name, Legal_Name__c,
                                            	BillingStreet, BillingCity, BillingState, BillingPostalCode, 
                                            	Number_of_Locations__c, Number_of_Terminals_at_Location__c
                                            FROM 
                                            	Account 
                                            WHERE 
                                            	Id =:oppRecord.AccountId];  
                if(!accountList.isEmpty()){
                    accRecord =   accountList.get(0);
                }
                else{
                    accRecord  = new Account();
                }                        
            }            
            applicant1FICO = FormulaFieldUtility.ccApplicant1FICO;
            yrsInBusiness = FormulaFieldUtility.yrsInBusiness;
        }
        else{
            ApexPages.addMessage(new ApexPages.Message(ApexPages.Severity.ERROR,'Opportunity Id Does not Exist!'));   
        }    
    }
    
    public PageReference doSave() {
        Savepoint sp = Database.setSavepoint();
        try{
            if(accRecord != null) {
                Upsert accRecord;
                if(accRecord.Id != null) {
                    oppRecord.AccountId = accRecord.Id;    
                }    
            }
            Upsert oppRecord;
            ApexPages.addMessage(new ApexPages.Message(ApexPages.Severity.confirm,'Funding Info Sign Off Information Saved Successfully!'));
        }
        catch(Exception e){ Database.rollback(sp); ApexPages.addMessage(new ApexPages.Message(ApexPages.Severity.ERROR,e.getMessage()));} 
        return null;
    }
}