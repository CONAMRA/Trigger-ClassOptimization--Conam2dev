trigger CalcualtePercentPaidOffTrigger on Opportunity (before insert, before update) {
     
     for(Opportunity opp: Trigger.new){
         Opportunity oldOpp;
         if(Trigger.isUpdate) {
            oldOpp =  Trigger.oldMap.get(opp.Id);   
         }
         if(opp.Total_Repay_Amount__c != null && opp.Purchase_Amount__c != null && opp.Purchase_Amount__c > 0) {
            opp.Percent_Paid_Off__c = (opp.Total_Repay_Amount__c/ opp.Purchase_Amount__c);
         }
         
         /*** Percent Payback FU WFR ***/
         if(opp.New_FRSA_Has_Been_Received__c !=Null && (Trigger.isInsert || (Trigger.isUpdate && oldOpp.New_FRSA_Has_Been_Received__c == Null))) {
            opp.Percent_Payback__c= opp.New_Percent_Payback__c;
         }
        
         /*** Payback Amount FU WFR ***/
         if(opp.New_FRSA_Has_Been_Received__c != Null && (Trigger.isInsert || (Trigger.isUpdate && oldOpp.New_FRSA_Has_Been_Received__c == Null))){
            opp.Pay_Back_Amount__c = opp.New_Payback_Price__c;
         }
        
         /*** Reprice Amount FU **/ 
         if(opp.New_FRSA_Has_Been_Received__c !=Null && (Trigger.isInsert || (Trigger.isUpdate && oldOpp.New_FRSA_Has_Been_Received__c == Null))){
            opp.Amount = opp.New_Advance_Price__c;
         }
     }
     
}