trigger RiskAlert on Opportunity (before update) {

   // Looks up the relevant email fields if the Processing Error Date has changed,
   // then flags it to send out a Notification via workflow
   //
   for (Opportunity opp : Trigger.new) {
      if (opp.Processing_Error_Date__c != NULL &&
          opp.Processing_Error_Date__c != Trigger.oldMap.get(opp.Id).Processing_Error_Date__c) {
         User_Lookup__c toVal   = User_Lookup__c.getValues(opp.Processing_Representative__c);
         User_Lookup__c fromVal = User_Lookup__c.getValues(opp.Risk_Employee__c);
         
         if (toVal != NULL)   { opp.Send_Risk_Alert_To__c   = toVal.Email__c; }
         if (fromVal != NULL) { opp.Send_Risk_Alert_From__c = fromVal.Email__c; }
         if ( opp.Send_Risk_Alert_To__c != NULL && opp.Send_Risk_Alert_From__c != NULL ) { opp.Send_Risk_Alert__c = true; }
      }  // end if
   }     // end for
}        // end trigger