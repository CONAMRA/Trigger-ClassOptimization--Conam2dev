public with sharing class OpportunityTriggerhandlerCls {

    public static Boolean runOnce = false;

    public static void onAfterInsert(List<Opportunity> oppList) {
        runOnce = true;
        boolean checkRenewal = false;
        String parentOppId;
        List<OpportunityContactRole> oppRoleInsertList = new List<OpportunityContactRole> ();
        OpportunityContactRole oppContactRoleObj;
        String currentID;

        for (Opportunity opps: oppList) {
            if (opps.If_Renewal_Preceding_Opportunity__c != null) {
                currentID = opps.Id;
                checkRenewal = true;
                parentOppId = opps.If_Renewal_Preceding_Opportunity__c;
                System.debug('checkRenewal......' + checkRenewal + '.....parentOppId....' + parentOppId);
            }
        }
        if (checkRenewal) {
            List<OpportunityContactRole> oppRoleList = [SELECT Id, Role, OpportunityId, IsPrimary, ContactId FROM
            OpportunityContactRole WHERE
            OpportunityId = : parentOppId and
            Contact.IsDeleted = false];
            if (oppRoleList != null && oppRoleList.size()> 0) {
                for (OpportunityContactRole opprole: oppRoleList) {
                    oppContactRoleObj = new OpportunityContactRole();
                    oppContactRoleObj.OpportunityId = currentID;
                    oppContactRoleObj.ContactId = opprole.ContactId;
                    oppContactRoleObj.Role = opprole.Role;

                    if (opprole.IsPrimary == true) {
                        oppContactRoleObj.IsPrimary = true;
                    }
                    oppRoleInsertList.add(oppContactRoleObj);
                }
                if (oppRoleInsertList.size()> 0) {
                    try {
                        insert oppRoleInsertList;
                    } catch (Exception ex) {
                        System.debug('exception in insert role....' + ex.getMessage());
                    }
                }
            }
        }
    }

    public static void UnderwritingOpprtunityUpdate(List<Opportunity> oppoList, Map<Id, Opportunity> oldOppValues) {

        Opportunity oldOpp;
        List<Messaging.SingleEmailMessage> mailingList = new List<Messaging.SingleEmailMessage> ();

        for (Opportunity opp: oppoList) {

            oldOpp = oldOppValues.get(opp.Id);

            if (((oldOppValues.get(opp.Id).Auto_Decisioned_By__c == null) && (opp.Auto_Decisioned_By__c != null) && (opp.Underwriter_Assigned__c == 'AUTO DECISION')) || (oldOppValues.get(opp.Id).Underwriter_Assigned__c == null && opp.Underwriter_Assigned__c != null)) {

                opp.UW_Assigned_Date_Stamp__c = Datetime.now();
            }
            if (opp.UWEligible_for_Rapid_Funding__c == 'Yes' && (Trigger.isInsert || (Trigger.isUpdate && oldOpp.UWEligible_for_Rapid_Funding__c != 'Yes'))) {
                List<User> userListRoles = new List<User> ();
                userListRoles = [SELECT Id, Email FROM User WHERE UserRoleId IN(Select Id from UserRole where Name = 'Processors') and IsActive = true];
                List<User> userListsingle = [SELECT Id, Email FROM User WHERE IsActive = true and Username = 'mcerminaro@rapidadvance.com'
                Limit 1];
                if (userListsingle != null && !userListsingle.isEmpty()) {
                    userListRoles.add(userListsingle.get(0));
                }
                String[] toaddress = new String[] {};
                for (User user: userListRoles) {
                    if (user.Email != null && !user.Email.trim().equals('')) {
                        if (opp.Id == '0067000000VHvZw') {
                            toaddress.add('dshapiro@rainmaker-llc.com');
                            toaddress.add('adubedi@rainmaker-llc.com');
                            toaddress.add('achauhan@rainmaker-llc.com');
                        } else {
                            toaddress.add(user.Email);
                        }


                    }
                }

                System.debug('userListRoles...' + userListRoles.size());
                if (userListRoles != null && !userListRoles.isEmpty()) {
                    Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
                    //  mail.setToAddresses(toaddress); 
                    mail.setToAddresses(toaddress);
                    //mail.setReplyTo('services@rapidadvance.com');
                    //mail.setSenderDisplayName('Rapid Financial Services');
                    mail.setBccSender(false);
                    mail.setSubject(opp.Name + ' is Eligible for Rapid Funding');
                    mail.setPlainTextBody(opp.Name + ' is Eligible for Rapid Funding' + '\nOppId: ' + opp.Opportunity_Number__c);
                    mailingList.add(mail);
                }
            }

            /*** Alexandra Approval With Conditions WFR AND Umaru All Approved Conditions WFR ***/
            if ((opp.Processing_Representative__c == 'Alexandra' || opp.Processing_Representative__c == 'Umaru') && opp.All_Approved_With_Conditions_Met__c && (Trigger.isInsert || (Trigger.isUpdate && !((oldOpp.Processing_Representative__c == 'Alexandra' || oldOpp.Processing_Representative__c == 'Umaru') && oldOpp.All_Approved_With_Conditions_Met__c)))) {
                List<User> userList;
                if (opp.Processing_Representative__c == 'Alexandra') {
                    userList = [SELECT Id, Email FROM User WHERE IsActive = true and userName = 'apompee@rapidadvance.com'];
                } else if (opp.Processing_Representative__c == 'Umaru') {
                    userList = [SELECT Id, Email FROM User WHERE IsActive = true and userName = 'umansarnay@rapidadvance.com'];
                }

                if (userList != null && !userList.isEmpty()) {
                    String emailSubject = opp.Name + ' - ' + opp.Opportunity_Number__c + ' All approval conditions have been satisfied.';
                    String emailBody = '';
                    String[] toaddress = new String[] {};
                    if (userList.get(0) != null && userList.get(0).Email != null && !userList.get(0).Email.trim().equals('')) {

                        if (opp.Id == '0067000000VHvZw') {
                            toaddress.add('dshapiro@rainmaker-llc.com');
                            toaddress.add('adubedi@rainmaker-llc.com');
                            toaddress.add('achauhan@rainmaker-llc.com');
                        } else {
                            toaddress.add(userList.get(0).Email);
                        }
                    }
                    Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
                    mail.setToAddresses(toaddress);
                    mail.setsubject(emailSubject);
                    mail.setBccSender(false);
                    mail.setPlainTextBody(emailBody);
                    mailingList.add(mail);
                }
            }

        }


        try {
            if (!mailingList.isEmpty()) {
                Messaging.sendEmail(mailingList);
            }
        } catch (Exception e) {
            System.debug('Error ::' + e.getMessage());
        }

    }

    public static void UnderwritingOpprtunityInsert(List<Opportunity> opList) {

        List<Messaging.SingleEmailMessage> mailingList = new List<Messaging.SingleEmailMessage> ();


        for (Opportunity opp: opList) {

            if ((opp.Auto_Decisioned_By__c != null && opp.Underwriter_Assigned__c == 'AUTO DECISION') || (opp.Underwriter_Assigned__c != null)) {

                opp.UW_Assigned_Date_Stamp__c = Datetime.now();

            }

            if (opp.UWEligible_for_Rapid_Funding__c == 'Yes') {
                List<User> userListRoles = new List<User> ();
                userListRoles = [SELECT Id, Email FROM User WHERE UserRoleId IN(Select Id from UserRole where Name = 'Processors') and IsActive = true];
                List<User> userListsingle = [SELECT Id, Email FROM User WHERE IsActive = true and Username = 'mcerminaro@rapidadvance.com'
                Limit 1];
                if (userListsingle != null && !userListsingle.isEmpty()) {
                    userListRoles.add(userListsingle.get(0));
                }
                String[] toaddress = new String[] {};
                for (User user: userListRoles) {
                    if (user.Email != null && !user.Email.trim().equals('')) {
                        if (opp.Id == '0067000000VHvZw') {
                            toaddress.add('dshapiro@rainmaker-llc.com');
                            toaddress.add('adubedi@rainmaker-llc.com');
                            toaddress.add('achauhan@rainmaker-llc.com');
                        } else {
                            toaddress.add(user.Email);
                        }


                    }
                }

                System.debug('userListRoles...' + userListRoles.size());
                if (userListRoles != null && !userListRoles.isEmpty()) {
                    Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
                    //  mail.setToAddresses(toaddress); 
                    mail.setToAddresses(toaddress);
                    //mail.setReplyTo('services@rapidadvance.com');
                    //mail.setSenderDisplayName('Rapid Financial Services');
                    mail.setBccSender(false);
                    mail.setSubject(opp.Name + ' is Eligible for Rapid Funding');
                    mail.setPlainTextBody(opp.Name + ' is Eligible for Rapid Funding' + '\nOppId: ' + opp.Opportunity_Number__c);
                    mailingList.add(mail);
                }
            }

            /*** Alexandra Approval With Conditions WFR AND Umaru All Approved Conditions WFR ***/
            if ((opp.Processing_Representative__c == 'Alexandra' || opp.Processing_Representative__c == 'Umaru') && opp.All_Approved_With_Conditions_Met__c) {
                List<User> userList;
                if (opp.Processing_Representative__c == 'Alexandra') {
                    userList = [SELECT Id, Email FROM User WHERE IsActive = true and userName = 'apompee@rapidadvance.com'];
                } else if (opp.Processing_Representative__c == 'Umaru') {
                    userList = [SELECT Id, Email FROM User WHERE IsActive = true and userName = 'umansarnay@rapidadvance.com'];
                }

                if (userList != null && !userList.isEmpty()) {
                    String emailSubject = opp.Name + ' - ' + opp.Opportunity_Number__c + ' All approval conditions have been satisfied.';
                    String emailBody = '';
                    String[] toaddress = new String[] {};
                    if (userList.get(0) != null && userList.get(0).Email != null && !userList.get(0).Email.trim().equals('')) {

                        if (opp.Id == '0067000000VHvZw') {
                            toaddress.add('dshapiro@rainmaker-llc.com');
                            toaddress.add('adubedi@rainmaker-llc.com');
                            toaddress.add('achauhan@rainmaker-llc.com');
                        } else {
                            toaddress.add(userList.get(0).Email);
                        }
                    }
                    Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
                    mail.setToAddresses(toaddress);
                    mail.setsubject(emailSubject);
                    mail.setBccSender(false);
                    mail.setPlainTextBody(emailBody);
                    mailingList.add(mail);
                }
            }

        }


        try {
            if (!mailingList.isEmpty()) {
                Messaging.sendEmail(mailingList);
            }
        } catch (Exception e) {
            System.debug('Error ::' + e.getMessage());
        }
    }

    public static void RiskAlertUpdate(List<Opportunity> oppoList, Map<Id, Opportunity> oldOppValues) {

        for (Opportunity opp: oppoList) {
            if (opp.Processing_Error_Date__c != NULL && opp.Processing_Error_Date__c != oldOppValues.get(opp.Id).Processing_Error_Date__c) {

                User_Lookup__c toVal = User_Lookup__c.getValues(opp.Processing_Representative__c);
                User_Lookup__c fromVal = User_Lookup__c.getValues(opp.Risk_Employee__c);

                if (toVal != NULL) {
                    opp.Send_Risk_Alert_To__c = toVal.Email__c;
                }
                if (fromVal != NULL) {
                    opp.Send_Risk_Alert_From__c = fromVal.Email__c;
                }
                if (opp.Send_Risk_Alert_To__c != NULL && opp.Send_Risk_Alert_From__c != NULL) {
                    opp.Send_Risk_Alert__c = true;
                }
            } // end if
        }
    }

    public static void CalcualtePercentPaidOffTriggerInsert(List<Opportunity> oppoList) {
        for(Opportunity opp: oppoList){
        
         
         if(opp.Total_Repay_Amount__c != null && opp.Purchase_Amount__c != null && opp.Purchase_Amount__c > 0) {
            opp.Percent_Paid_Off__c = (opp.Total_Repay_Amount__c/ opp.Purchase_Amount__c);
         }
         
         /*** Percent Payback FU WFR ***/
         if(opp.New_FRSA_Has_Been_Received__c !=Null ) {
            opp.Percent_Payback__c= opp.New_Percent_Payback__c;
         }
        
         /*** Payback Amount FU WFR ***/
         if(opp.New_FRSA_Has_Been_Received__c != Null ){
            opp.Pay_Back_Amount__c = opp.New_Payback_Price__c;
         }
        
         /*** Reprice Amount FU **/ 
         if(opp.New_FRSA_Has_Been_Received__c !=Null ){
            opp.Amount = opp.New_Advance_Price__c;
         }
     }
    }

    public static void CalcualtePercentPaidOffTriggerUpdate(List<Opportunity> newoppoList, Map<Id, Opportunity> oldOppValues) {

        Opportunity oldOpp;
        for (Opportunity opp: newoppoList) {


            oldOpp = oldOppValues.get(opp.Id);

            if (opp.Total_Repay_Amount__c != null && opp.Purchase_Amount__c != null && opp.Purchase_Amount__c> 0) {
                opp.Percent_Paid_Off__c = (opp.Total_Repay_Amount__c / opp.Purchase_Amount__c);
            }

            /*** Percent Payback FU WFR ***/
            if (opp.New_FRSA_Has_Been_Received__c != Null && oldOpp.New_FRSA_Has_Been_Received__c == Null) {
                opp.Percent_Payback__c = opp.New_Percent_Payback__c;
            }

            /*** Payback Amount FU WFR ***/
            if (opp.New_FRSA_Has_Been_Received__c != Null && oldOpp.New_FRSA_Has_Been_Received__c == Null) {
                opp.Pay_Back_Amount__c = opp.New_Payback_Price__c;
            }

            /*** Reprice Amount FU **/
            if (opp.New_FRSA_Has_Been_Received__c != Null && oldOpp.New_FRSA_Has_Been_Received__c == Null) {
                opp.Amount = opp.New_Advance_Price__c;
            }
        }
    }
    
     public static void opportunityCampaignChosenInsert(List<Opportunity> oppoList) {
     
        List<id> campaignids = new List<id>();
        
        for (integer i = 0; i<oppoList.Size(); i++ ) {
            if (oppoList[i].CampaignId != null) {
            
                campaignids.add(oppoList[i].CampaignId);         
            } 
        }   

        Map<id, campaign> campaigns = new Map<id, campaign>([select id, name, Sales_Team_Member_1__c,Sales_Team_Member_2__c,Sales_Team_Member_3__c,Sales_Team_Member_4__c,Sales_Team_Member_5__c,Sales_Team_Member_6__c from campaign where id in :campaignids]);
        List<opportunityteammember> newlist = new List<opportunityteammember>();
        
        for (integer i = 0; i<oppoList.Size(); i++ ) {
            if (oppoList[i].CampaignId != null) {
                opportunity o = oppoList[i];
        
                campaign c = campaigns.get(o.campaignid);
                if (c != null) {
                    if (c.Sales_Team_Member_1__c != null ) {
                        opportunityteammember newotm = new opportunityteammember();
                        newotm.OpportunityId = o.id;
                        newotm.UserId = c.Sales_Team_Member_1__c;
                        newotm.TeamMemberRole = 'Partner Sales Representative';
                        //newotm.OpportunityAccessLevel = otm.OpportunityAccessLevel;
                        newlist.add(newotm);
                    }   

                    if (c.Sales_Team_Member_2__c != null ) {
                        opportunityteammember newotm = new opportunityteammember();
                        newotm.OpportunityId = o.id;
                        newotm.UserId = c.Sales_Team_Member_2__c;
                        newotm.TeamMemberRole = 'Partner Sales Representative';
                        //newotm.OpportunityAccessLevel = otm.OpportunityAccessLevel;
                        newlist.add(newotm);
                    }   
                    if (c.Sales_Team_Member_3__c != null ) {
                        opportunityteammember newotm = new opportunityteammember();
                        newotm.OpportunityId = o.id;
                        newotm.UserId = c.Sales_Team_Member_3__c;
                        newotm.TeamMemberRole = 'Partner Sales Representative';
                        //newotm.OpportunityAccessLevel = otm.OpportunityAccessLevel;
                        newlist.add(newotm);
                    }   
                    if (c.Sales_Team_Member_4__c != null ) {
                        opportunityteammember newotm = new opportunityteammember();
                        newotm.OpportunityId = o.id;
                        newotm.UserId = c.Sales_Team_Member_4__c;
                        newotm.TeamMemberRole = 'Partner Sales Representative';
                        //newotm.OpportunityAccessLevel = otm.OpportunityAccessLevel;
                        newlist.add(newotm);
                    }   
                    if (c.Sales_Team_Member_5__c != null ) {
                        opportunityteammember newotm = new opportunityteammember();
                        newotm.OpportunityId = o.id;
                        newotm.UserId = c.Sales_Team_Member_5__c;
                        newotm.TeamMemberRole = 'Partner Sales Representative';
                        //newotm.OpportunityAccessLevel = otm.OpportunityAccessLevel;
                        newlist.add(newotm);
                    }   
                    if (c.Sales_Team_Member_6__c != null ) {
                        opportunityteammember newotm = new opportunityteammember();
                        newotm.OpportunityId = o.id;
                        newotm.UserId = c.Sales_Team_Member_6__c;
                        newotm.TeamMemberRole = 'Partner Sales Representative';
                        //newotm.OpportunityAccessLevel = otm.OpportunityAccessLevel;
                        newlist.add(newotm);
                    }   
                }
            } 
        }   
        if (newlist.size()> 0) {
            insert newlist; 
        }
     }
     
     public static void opportunityCampaignChosenUpdate(List<Opportunity> oppoList, List<Opportunity> oldOppValues) {
     
         List<id> campaignids = new List<id>();
        
        for (integer i = 0; i<oppoList.Size(); i++ ) {
            if (oppoList[i].CampaignId != null && 
                    (Trigger.isUpdate && oppoList[i].CampaignId != oldOppValues[i].CampaignId )) {
            
                campaignids.add(oppoList[i].CampaignId);         
            } 
        }   

        Map<id, campaign> campaigns = new Map<id, campaign>([select id, name, Sales_Team_Member_1__c,Sales_Team_Member_2__c,Sales_Team_Member_3__c,Sales_Team_Member_4__c,Sales_Team_Member_5__c,Sales_Team_Member_6__c from campaign where id in :campaignids]);
        List<opportunityteammember> newlist = new List<opportunityteammember>();
        
        for (integer i = 0; i < oppoList.Size(); i++ ) {
            if (oppoList[i].CampaignId != null && 
                    (Trigger.isUpdate && oppoList[i].CampaignId != oldOppValues[i].CampaignId )) {
                opportunity o = oppoList[i];
        
                campaign c = campaigns.get(o.campaignid);
                if (c != null) {
                    if (c.Sales_Team_Member_1__c != null ) {
                        opportunityteammember newotm = new opportunityteammember();
                        newotm.OpportunityId = o.id;
                        newotm.UserId = c.Sales_Team_Member_1__c;
                        newotm.TeamMemberRole = 'Partner Sales Representative';
                        //newotm.OpportunityAccessLevel = otm.OpportunityAccessLevel;
                        newlist.add(newotm);
                    }   

                    if (c.Sales_Team_Member_2__c != null ) {
                        opportunityteammember newotm = new opportunityteammember();
                        newotm.OpportunityId = o.id;
                        newotm.UserId = c.Sales_Team_Member_2__c;
                        newotm.TeamMemberRole = 'Partner Sales Representative';
                        //newotm.OpportunityAccessLevel = otm.OpportunityAccessLevel;
                        newlist.add(newotm);
                    }   
                    if (c.Sales_Team_Member_3__c != null ) {
                        opportunityteammember newotm = new opportunityteammember();
                        newotm.OpportunityId = o.id;
                        newotm.UserId = c.Sales_Team_Member_3__c;
                        newotm.TeamMemberRole = 'Partner Sales Representative';
                        //newotm.OpportunityAccessLevel = otm.OpportunityAccessLevel;
                        newlist.add(newotm);
                    }   
                    if (c.Sales_Team_Member_4__c != null ) {
                        opportunityteammember newotm = new opportunityteammember();
                        newotm.OpportunityId = o.id;
                        newotm.UserId = c.Sales_Team_Member_4__c;
                        newotm.TeamMemberRole = 'Partner Sales Representative';
                        //newotm.OpportunityAccessLevel = otm.OpportunityAccessLevel;
                        newlist.add(newotm);
                    }   
                    if (c.Sales_Team_Member_5__c != null ) {
                        opportunityteammember newotm = new opportunityteammember();
                        newotm.OpportunityId = o.id;
                        newotm.UserId = c.Sales_Team_Member_5__c;
                        newotm.TeamMemberRole = 'Partner Sales Representative';
                        //newotm.OpportunityAccessLevel = otm.OpportunityAccessLevel;
                        newlist.add(newotm);
                    }   
                    if (c.Sales_Team_Member_6__c != null ) {
                        opportunityteammember newotm = new opportunityteammember();
                        newotm.OpportunityId = o.id;
                        newotm.UserId = c.Sales_Team_Member_6__c;
                        newotm.TeamMemberRole = 'Partner Sales Representative';
                        //newotm.OpportunityAccessLevel = otm.OpportunityAccessLevel;
                        newlist.add(newotm);
                    }   
                }
            } 
        }   
        if (newlist.size()> 0) {
            insert newlist; 
        }
        }
    
}