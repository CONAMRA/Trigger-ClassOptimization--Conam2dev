<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Alert_Pre_Qual_Due_Now</fullName>
        <description>Alert - Pre-Qual Due Now!!</description>
        <protected>false</protected>
        <recipients>
            <recipient>equintanilla@rapidadvance.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>All_Templates/Alert_Pre_Qual_Due_in_15_Minutes</template>
    </alerts>
    <alerts>
        <fullName>Alex_L_Pre_Qualification_Email_Alert</fullName>
        <description>Alex L. Pre-Qualification - Email Alert</description>
        <protected>false</protected>
        <recipients>
            <recipient>jhageman@rapidadvance.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>All_Templates/Pre_Qualification_Request</template>
    </alerts>
    <alerts>
        <fullName>ApprovedDealHasNowBeenDECLINEDInternal</fullName>
        <description>Approved Deal Has Now Been DECLINED - Internal</description>
        <protected>false</protected>
        <recipients>
            <recipient>Processors</recipient>
            <type>role</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Auto_E_Mail_Templates/DealUpdate</template>
    </alerts>
    <alerts>
        <fullName>Approved_Deal_Has_Now_Been_DECLINED_Internal</fullName>
        <description>Approved Deal Has Now Been DECLINED - Internal</description>
        <protected>false</protected>
        <recipients>
            <recipient>Processors</recipient>
            <type>role</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Auto_E_Mail_Templates/DealUpdatenew</template>
    </alerts>
    <alerts>
        <fullName>B2C_Prequal_Alert</fullName>
        <description>B2C Prequal Alert</description>
        <protected>false</protected>
        <recipients>
            <recipient>Biz2Cred</recipient>
            <type>group</type>
        </recipients>
        <recipients>
            <recipient>rdearborn@rapidadvance.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Auto_E_Mail_Templates/Biz2Credit_Alert</template>
    </alerts>
    <alerts>
        <fullName>BD_Alert_Partner_has_not_signed_Premium_MCA</fullName>
        <ccEmails>BD@rapidadvance.com</ccEmails>
        <description>BD Alert - Partner has not signed Premium MCA</description>
        <protected>false</protected>
        <senderAddress>underwriting@rapidadvance.com</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>All_Templates/Alert_Partner_has_not_signed_Premium_MCA</template>
    </alerts>
    <alerts>
        <fullName>BD_Stage_Changed_Alert</fullName>
        <description>BD Stage Changed Alert</description>
        <protected>false</protected>
        <recipients>
            <field>Campaign_Owner_Additional_Email__c</field>
            <type>email</type>
        </recipients>
        <recipients>
            <field>Campaign_Owner_Email__c</field>
            <type>email</type>
        </recipients>
        <senderAddress>services@rapidadvance.com</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Auto_E_Mail_Templates/BD_Notification_Stage_Change</template>
    </alerts>
    <alerts>
        <fullName>BF_Renewal_Alert</fullName>
        <ccEmails>kmiranda@onlinemcf.com</ccEmails>
        <description>BF Renewal Alert</description>
        <protected>false</protected>
        <recipients>
            <recipient>mcerminaro@rapidadvance.com</recipient>
            <type>user</type>
        </recipients>
        <senderAddress>renewaldepartment@rapidadvance.com</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>All_Templates/Renewal_Alert</template>
    </alerts>
    <alerts>
        <fullName>Biz2Credit_Deal_Alert</fullName>
        <description>Biz2Credit Deal Alert</description>
        <protected>false</protected>
        <recipients>
            <recipient>Biz2Cred</recipient>
            <type>group</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Auto_E_Mail_Templates/Biz2Credit_Alert</template>
    </alerts>
    <alerts>
        <fullName>CustomerSatisfactionSurveySent</fullName>
        <description>Customer Satisfaction Survey Sent</description>
        <protected>false</protected>
        <recipients>
            <field>Email_Address__c</field>
            <type>email</type>
        </recipients>
        <senderAddress>services@rapidadvance.com</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Click_Tools_Templates/CustomerSatisfactionSurvey</template>
    </alerts>
    <alerts>
        <fullName>DealWasRepricedNeedNewFRSA</fullName>
        <description>Deal Was Repriced - Need New FRSA</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <recipients>
            <recipient>Processors</recipient>
            <type>role</type>
        </recipients>
        <recipients>
            <recipient>SalesAssistants</recipient>
            <type>role</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Auto_E_Mail_Templates/RepricedDealNotification</template>
    </alerts>
    <alerts>
        <fullName>Deal_Approved</fullName>
        <description>Deal Approved</description>
        <protected>false</protected>
        <recipients>
            <recipient>apompee@rapidadvance.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Auto_E_Mail_Templates/Deal_Approved</template>
    </alerts>
    <alerts>
        <fullName>Decision_and_Processor_Rep_Assigned</fullName>
        <ccEmails>awalter@rapidadvance.com</ccEmails>
        <description>Decision and Processor Rep Assigned</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderAddress>underwriting@rapidadvance.com</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Auto_E_Mail_Templates/UW_Approved_Processor_Rep_Assigned</template>
    </alerts>
    <alerts>
        <fullName>Decline_Program_Deal_to_QC</fullName>
        <description>Decline Program Deal to QC</description>
        <protected>false</protected>
        <recipients>
            <recipient>llogan@rapidadvance.com</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>mabiola@rapidadvance.com</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>mbsmith@rapidadvance.com</recipient>
            <type>user</type>
        </recipients>
        <senderAddress>underwriting@rapidadvance.com</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Auto_E_Mail_Templates/Submitted_to_QC</template>
    </alerts>
    <alerts>
        <fullName>Decline_Program_Deal_to_QC_queue</fullName>
        <description>Decline Program Deal to QC</description>
        <protected>false</protected>
        <recipients>
            <recipient>ecord@rapidadvance.com</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>llogan@rapidadvance.com</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>mbsmith@rapidadvance.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>All_Templates/Deal_in_QC_Decline_Program_Queue</template>
    </alerts>
    <alerts>
        <fullName>DeclinedbyUW</fullName>
        <description>Declined by UW</description>
        <protected>false</protected>
        <recipients>
            <recipient>Sales Assistant</recipient>
            <type>opportunityTeam</type>
        </recipients>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>All_Templates/DeclinedbyUW</template>
    </alerts>
    <alerts>
        <fullName>DevinYourdealhasbeenupdatedInternal</fullName>
        <description>Devin - Your deal has been updated. - Internal</description>
        <protected>false</protected>
        <recipients>
            <recipient>ddelany@rapidadvance.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>SalesforcePRMEmailTemplates/StatusUpdate</template>
    </alerts>
    <alerts>
        <fullName>DistEngOppAssignmentOwner</fullName>
        <description>DistEngOppAssignmentOwner</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderAddress>services@rapidadvance.com</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>All_Templates/OppsNewassignmentnotificationSAMPLE</template>
    </alerts>
    <alerts>
        <fullName>Elite_Data_Bankcard_One_Inc_Matt_Milmeister_Updates</fullName>
        <ccEmails>apps@elitedatacorp.com; justin.milmeister@elitedatacorp.com; pnsapps@elitedatacorp.com</ccEmails>
        <description>Elite Data Bankcard One, Inc. - Matt Milmeister Updates</description>
        <protected>false</protected>
        <senderType>CurrentUser</senderType>
        <template>Auto_E_Mail_Templates/Updates</template>
    </alerts>
    <alerts>
        <fullName>Elite_Data_EMS_Agoura_Jeff_Brodsly_Updates</fullName>
        <ccEmails>jeffb@elitedatacorp.com; pnsapps@elitedatacorp.com; unitedapps@elitedatacorp.com</ccEmails>
        <description>Elite Data United Agoura - Jeff Brodsly Updates</description>
        <protected>false</protected>
        <senderType>CurrentUser</senderType>
        <template>Auto_E_Mail_Templates/Updates</template>
    </alerts>
    <alerts>
        <fullName>Elite_Data_EMS_Kanas_Stephanie_Bowlin_Updates</fullName>
        <ccEmails>stephaniej.bowlin@gmail.com;sjbservices@sbcglobal.net; justin.milmeister@elitedatacorp.com; pnsapps@elitedatacorp.com</ccEmails>
        <description>Elite Data EMS Kanas - Stephanie Bowlin Updates</description>
        <protected>false</protected>
        <senderType>CurrentUser</senderType>
        <template>Auto_E_Mail_Templates/Updates</template>
    </alerts>
    <alerts>
        <fullName>Elite_Data_Electronic_Merchant_Solutions_Inc_Richard_Cha_Updates</fullName>
        <ccEmails>emsapps@elitedatacorp.com; pnsapps@elitedatacorp.com</ccEmails>
        <description>Elite Data Electronic Merchant Solutions, Inc. - Richard Cha Updates</description>
        <protected>false</protected>
        <senderType>CurrentUser</senderType>
        <template>Auto_E_Mail_Templates/Updates</template>
    </alerts>
    <alerts>
        <fullName>Elite_Data_United_Paul_Rasidakis_Updates</fullName>
        <ccEmails>unitedapps@elitedatacorp.com; pnsapps@elitedatacorp.com; justin.milmeister@elitedatacorp.com</ccEmails>
        <description>Elite Data United - Paul Rasidakis Updates</description>
        <protected>false</protected>
        <senderType>CurrentUser</senderType>
        <template>Auto_E_Mail_Templates/Updates</template>
    </alerts>
    <alerts>
        <fullName>Elite_Data_Updates</fullName>
        <ccEmails>pnsapps@elitedatacorp.com; justin.milmeister@elitedatacorp.com</ccEmails>
        <description>Elite Data Updates</description>
        <protected>false</protected>
        <senderType>CurrentUser</senderType>
        <template>Auto_E_Mail_Templates/Updates</template>
    </alerts>
    <alerts>
        <fullName>Funding_Notification</fullName>
        <ccEmails>awalter@rapidadvance.com</ccEmails>
        <description>Funding Notification</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderAddress>services@rapidadvance.com</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Auto_E_Mail_Templates/Funding_Status_Complete</template>
    </alerts>
    <alerts>
        <fullName>GTF_Opp_Email_Alert</fullName>
        <description>GTF Opp Email Alert</description>
        <protected>false</protected>
        <recipients>
            <recipient>GTF_Account_Executive</recipient>
            <type>role</type>
        </recipients>
        <recipients>
            <recipient>GTF_Manager</recipient>
            <type>role</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Auto_E_Mail_Templates/GTF_Decline_Opp_Alert</template>
    </alerts>
    <alerts>
        <fullName>GTF_Opp_Pending_Management_Review_Alert</fullName>
        <description>GTF Opp Pending Management Review Alert</description>
        <protected>false</protected>
        <recipients>
            <recipient>GTF_Account_Executive</recipient>
            <type>role</type>
        </recipients>
        <recipients>
            <recipient>GTF_Manager</recipient>
            <type>role</type>
        </recipients>
        <recipients>
            <recipient>kmowrey@rapidadvance.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Auto_E_Mail_Templates/GTF_Decline_Pending_Management_Review</template>
    </alerts>
    <alerts>
        <fullName>Management_Sign_Off_Completed</fullName>
        <description>Management Sign Off Completed</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <recipients>
            <recipient>Processors</recipient>
            <type>role</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>All_Templates/Management_Sign_Off</template>
    </alerts>
    <alerts>
        <fullName>Merchant_One_Submitted_for_Funding</fullName>
        <description>Merchant One Submitted for Funding</description>
        <protected>false</protected>
        <recipients>
            <field>Partner_Email_1__c</field>
            <type>email</type>
        </recipients>
        <recipients>
            <field>Partner_Email_2__c</field>
            <type>email</type>
        </recipients>
        <recipients>
            <field>Partner_Email_3__c</field>
            <type>email</type>
        </recipients>
        <recipients>
            <field>Partner_Email_4__c</field>
            <type>email</type>
        </recipients>
        <recipients>
            <field>Partner_Email_5__c</field>
            <type>email</type>
        </recipients>
        <recipients>
            <field>Partner_Email_6__c</field>
            <type>email</type>
        </recipients>
        <recipients>
            <recipient>ddelany@rapidadvance.com</recipient>
            <type>user</type>
        </recipients>
        <senderAddress>services@rapidadvance.com</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>All_Templates/Submitted_for_Funding</template>
    </alerts>
    <alerts>
        <fullName>Merchant_One_Submitted_to_Underwriting</fullName>
        <description>Merchant One Submitted to Underwriting</description>
        <protected>false</protected>
        <recipients>
            <recipient>QualityControl</recipient>
            <type>role</type>
        </recipients>
        <recipients>
            <recipient>alsims@rapidadvance.com</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>ddelany@rapidadvance.com</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>mrivera@rapidadvance.com</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>tbenjamin@rapidadvance.com</recipient>
            <type>user</type>
        </recipients>
        <senderAddress>underwriting@rapidadvance.com</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Auto_E_Mail_Templates/Submitted_to_UW</template>
    </alerts>
    <alerts>
        <fullName>Offer_Accepted</fullName>
        <description>Offer Accepted</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Auto_E_Mail_Templates/Offer_Accepted</template>
    </alerts>
    <alerts>
        <fullName>Opp_Owner_Decline_Program_Eligible</fullName>
        <ccEmails>submissions@rapidadvance.com</ccEmails>
        <description>Opp Owner Decline Program Eligible</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderAddress>underwriting@rapidadvance.com</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Auto_E_Mail_Templates/Decline_Program_Eligible</template>
    </alerts>
    <alerts>
        <fullName>Opp_Payment_Status</fullName>
        <description>Opp Payment Status</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderAddress>renewaldepartment@rapidadvance.com</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Auto_E_Mail_Templates/Paydown_Progress_Updates</template>
    </alerts>
    <alerts>
        <fullName>Opportunity_AE_Email_Update</fullName>
        <description>Opportunity AE Email Update</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Auto_E_Mail_Templates/DealUpdate</template>
    </alerts>
    <alerts>
        <fullName>Opportunity_AE_Email_Update2</fullName>
        <description>Opportunity AE Email Update2</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <recipients>
            <recipient>Processors</recipient>
            <type>role</type>
        </recipients>
        <recipients>
            <recipient>awalter@rapidadvance.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>All_Templates/DealUpdate2</template>
    </alerts>
    <alerts>
        <fullName>Opportunity_Mgmt_Sign_Off_Email_Update</fullName>
        <description>Opportunity Mgmt Sign Off Email Update</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <recipients>
            <recipient>Processors</recipient>
            <type>role</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>All_Templates/Management_Sign_Off</template>
    </alerts>
    <alerts>
        <fullName>Opportunity_Partner_Email_Update</fullName>
        <description>Opportunity Partner Email Update</description>
        <protected>false</protected>
        <recipients>
            <field>Partner_Email_1__c</field>
            <type>email</type>
        </recipients>
        <recipients>
            <field>Partner_Email_2__c</field>
            <type>email</type>
        </recipients>
        <recipients>
            <field>Partner_Email_3__c</field>
            <type>email</type>
        </recipients>
        <recipients>
            <field>Partner_Email_4__c</field>
            <type>email</type>
        </recipients>
        <recipients>
            <field>Partner_Email_5__c</field>
            <type>email</type>
        </recipients>
        <recipients>
            <field>Partner_Email_6__c</field>
            <type>email</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Auto_E_Mail_Templates/Updates</template>
    </alerts>
    <alerts>
        <fullName>Overdue_Initial_File_Review_Alert</fullName>
        <description>Overdue Initial File Review Email Alert</description>
        <protected>false</protected>
        <recipients>
            <recipient>eharry@rapidadvance.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>All_Templates/Alert_Overdue_UW_Initial_File_Review</template>
    </alerts>
    <alerts>
        <fullName>Overdue_QC_Decision_Alert</fullName>
        <description>Overdue QC Decision Alert</description>
        <protected>false</protected>
        <recipients>
            <recipient>eharry@rapidadvance.com</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>mbsmith@rapidadvance.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>All_Templates/Alert_Overdue_QC_Decision</template>
    </alerts>
    <alerts>
        <fullName>PREMIUM_MCA_NOT_SIGNED_FOR_PARTNER_AE_Alert</fullName>
        <description>PREMIUM MCA NOT SIGNED FOR PARTNER - AE Alert</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderAddress>services@rapidadvance.com</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>All_Templates/Alert_Partner_has_not_signed_Premium_MCA_AE</template>
    </alerts>
    <alerts>
        <fullName>Partner_Funding_Notification</fullName>
        <description>Partner Funding Notification</description>
        <protected>false</protected>
        <recipients>
            <field>Partner_Email_1__c</field>
            <type>email</type>
        </recipients>
        <recipients>
            <field>Partner_Email_2__c</field>
            <type>email</type>
        </recipients>
        <recipients>
            <field>Partner_Email_3__c</field>
            <type>email</type>
        </recipients>
        <recipients>
            <field>Partner_Email_4__c</field>
            <type>email</type>
        </recipients>
        <recipients>
            <field>Partner_Email_5__c</field>
            <type>email</type>
        </recipients>
        <recipients>
            <field>Partner_Email_6__c</field>
            <type>email</type>
        </recipients>
        <senderAddress>services@rapidadvance.com</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Auto_E_Mail_Templates/Funding_Notification</template>
    </alerts>
    <alerts>
        <fullName>Partner_Opportunity_Assignment</fullName>
        <description>Partner Opportunity Assignment</description>
        <protected>false</protected>
        <recipients>
            <field>Partner_Email_1__c</field>
            <type>email</type>
        </recipients>
        <recipients>
            <field>Partner_Email_2__c</field>
            <type>email</type>
        </recipients>
        <recipients>
            <field>Partner_Email_3__c</field>
            <type>email</type>
        </recipients>
        <recipients>
            <field>Partner_Email_4__c</field>
            <type>email</type>
        </recipients>
        <recipients>
            <field>Partner_Email_5__c</field>
            <type>email</type>
        </recipients>
        <recipients>
            <field>Partner_Email_6__c</field>
            <type>email</type>
        </recipients>
        <senderAddress>underwriting@rapidadvance.com</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Auto_E_Mail_Templates/Partner_Opp_Assignment</template>
    </alerts>
    <alerts>
        <fullName>Partner_Pre_Qual_Fail</fullName>
        <description>Partner Pre-Qual Fail</description>
        <protected>false</protected>
        <recipients>
            <field>Partner_Email_1__c</field>
            <type>email</type>
        </recipients>
        <recipients>
            <field>Partner_Email_2__c</field>
            <type>email</type>
        </recipients>
        <recipients>
            <field>Partner_Email_3__c</field>
            <type>email</type>
        </recipients>
        <recipients>
            <field>Partner_Email_4__c</field>
            <type>email</type>
        </recipients>
        <recipients>
            <field>Partner_Email_5__c</field>
            <type>email</type>
        </recipients>
        <recipients>
            <field>Partner_Email_6__c</field>
            <type>email</type>
        </recipients>
        <senderAddress>bd@rapidadvance.com</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Auto_E_Mail_Templates/Partner_Pre_Qual_Fail_HTML</template>
    </alerts>
    <alerts>
        <fullName>Partner_Prefund_Notification</fullName>
        <description>Partner Prefund Notification</description>
        <protected>false</protected>
        <recipients>
            <field>Partner_Email_1__c</field>
            <type>email</type>
        </recipients>
        <recipients>
            <field>Partner_Email_2__c</field>
            <type>email</type>
        </recipients>
        <recipients>
            <field>Partner_Email_3__c</field>
            <type>email</type>
        </recipients>
        <recipients>
            <field>Partner_Email_4__c</field>
            <type>email</type>
        </recipients>
        <recipients>
            <field>Partner_Email_5__c</field>
            <type>email</type>
        </recipients>
        <recipients>
            <field>Partner_Email_6__c</field>
            <type>email</type>
        </recipients>
        <senderAddress>services@rapidadvance.com</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>QualifiedWebLeadTemplates/PreFund_Completed</template>
    </alerts>
    <alerts>
        <fullName>Pay_Off_Letter_Requested</fullName>
        <description>Pay Off Letter Requested</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <recipients>
            <recipient>awalter@rapidadvance.com</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>jackaoui@rapidadvance.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Auto_E_Mail_Templates/Pay_Off_Requested</template>
    </alerts>
    <alerts>
        <fullName>PreFund_Completed</fullName>
        <description>PreFund Completed</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>QualifiedWebLeadTemplates/PreFund_Completed</template>
    </alerts>
    <alerts>
        <fullName>Pre_Qual_1hour_since_submission</fullName>
        <description>Pre-Qual - 1hour since submission</description>
        <protected>false</protected>
        <recipients>
            <recipient>eharry@rapidadvance.com</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>srafii@rapidadvance.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>All_Templates/Alert_Pre_Qual_Due_in_15_Minutes</template>
    </alerts>
    <alerts>
        <fullName>Pre_Qual_Pending_Return_to_QC</fullName>
        <description>Pre-Qual Pending Return to QC</description>
        <protected>false</protected>
        <recipients>
            <recipient>apompee@rapidadvance.com</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>wcastor@rapidadvance.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Auto_E_Mail_Templates/Pre_Qual_Pending</template>
    </alerts>
    <alerts>
        <fullName>Pre_Qualification_FAIL_Email_Alert</fullName>
        <ccEmails>submissions@rapidadvance.com</ccEmails>
        <description>Pre-Qualification FAIL - Email Alert</description>
        <protected>false</protected>
        <senderType>CurrentUser</senderType>
        <template>All_Templates/Pre_Qualification_Request</template>
    </alerts>
    <alerts>
        <fullName>Pre_Qualification_PASS_Credit_Only_Email_Alert</fullName>
        <ccEmails>submissions@rapidadvance.com</ccEmails>
        <description>Pre-Qualification PASS Credit Only - Email Alert</description>
        <protected>false</protected>
        <recipients>
            <recipient>mcerminaro@rapidadvance.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>All_Templates/Pre_Qualification_Request</template>
    </alerts>
    <alerts>
        <fullName>Pre_Qualification_PASS_Email_Alert</fullName>
        <ccEmails>submissions@rapidadvance.com</ccEmails>
        <description>Pre-Qualification PASS - Email Alert</description>
        <protected>false</protected>
        <recipients>
            <recipient>mcerminaro@rapidadvance.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>All_Templates/Pre_Qualification_Request</template>
    </alerts>
    <alerts>
        <fullName>ProMac_Deal_Approved</fullName>
        <description>ProMac Deal Approved</description>
        <protected>false</protected>
        <recipients>
            <type>partnerUser</type>
        </recipients>
        <senderAddress>underwriting@rapidadvance.com</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Auto_E_Mail_Templates/Deal_Approved</template>
    </alerts>
    <alerts>
        <fullName>QC_Sandra_Galdamez</fullName>
        <ccEmails>sgadlamez@rapidadvance.com</ccEmails>
        <description>QC: Sandra Galdamez Deals</description>
        <protected>false</protected>
        <senderAddress>underwriting@rapidadvance.com</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Auto_E_Mail_Templates/Submitted_to_QC</template>
    </alerts>
    <alerts>
        <fullName>QC_Theresa_Dupree_Deals</fullName>
        <description>QC: Theresa Dupree Deals</description>
        <protected>false</protected>
        <recipients>
            <recipient>tdupree@rapidadvance.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Auto_E_Mail_Templates/Submitted_to_QC</template>
    </alerts>
    <alerts>
        <fullName>Renewal_Eligibility_Update</fullName>
        <description>Renewal Eligibility Update</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <recipients>
            <recipient>eharry@rapidadvance.com</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>kkeshishian@rapidadvance.com</recipient>
            <type>user</type>
        </recipients>
        <senderAddress>services@rapidadvance.com</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Auto_E_Mail_Templates/Renewal_Eligibility_Update</template>
    </alerts>
    <alerts>
        <fullName>ReprisedFRSAHasBeenSignedbyMerchant</fullName>
        <description>Repriced FRSA Has Been Signed by Merchant</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <recipients>
            <recipient>Processors</recipient>
            <type>role</type>
        </recipients>
        <recipients>
            <recipient>Underwriting</recipient>
            <type>role</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Auto_E_Mail_Templates/RepricedFRSAWasReceived</template>
    </alerts>
    <alerts>
        <fullName>ReprisedFRSAHasBeenSignedbyMerchant1</fullName>
        <description>Repriced FRSA Has Been Signed by Merchant</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <recipients>
            <recipient>Processors</recipient>
            <type>role</type>
        </recipients>
        <recipients>
            <recipient>Underwriting</recipient>
            <type>role</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Auto_E_Mail_Templates/RepricedFRSAWasReceivednew</template>
    </alerts>
    <alerts>
        <fullName>RescindedApprovedAlert</fullName>
        <description>Rescinded  =&gt; Approved Alert</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <recipients>
            <recipient>Processors</recipient>
            <type>role</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>All_Templates/UWApprovalStatusChangeRescindedtoApproved</template>
    </alerts>
    <alerts>
        <fullName>Review_for_funding_approval</fullName>
        <description>Review for funding approval</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <recipients>
            <recipient>kmitchell@rapidadvance.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Sales_Email_Templates/Review_Funding_Approval</template>
    </alerts>
    <alerts>
        <fullName>Review_for_funding_approval_Merchant_One</fullName>
        <description>Review for funding approval - Merchant One</description>
        <protected>false</protected>
        <recipients>
            <field>Partner_Email_1__c</field>
            <type>email</type>
        </recipients>
        <recipients>
            <field>Partner_Email_2__c</field>
            <type>email</type>
        </recipients>
        <recipients>
            <field>Partner_Email_3__c</field>
            <type>email</type>
        </recipients>
        <recipients>
            <field>Partner_Email_4__c</field>
            <type>email</type>
        </recipients>
        <recipients>
            <field>Partner_Email_5__c</field>
            <type>email</type>
        </recipients>
        <recipients>
            <field>Partner_Email_6__c</field>
            <type>email</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Sales_Email_Templates/Review_Funding_Approval</template>
    </alerts>
    <alerts>
        <fullName>Review_for_funding_approval_exception</fullName>
        <description>Review for funding approval exception</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <recipients>
            <recipient>apompee@rapidadvance.com</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>eharry@rapidadvance.com</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>jbrown@rapidadvance.com</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>jlooney@rapidadvance.com</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>kmitchell@rapidadvance.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>QualifiedWebLeadTemplates/Funding_Approval_Exception</template>
    </alerts>
    <alerts>
        <fullName>SBS_Funding</fullName>
        <ccEmails>inbox@sbscash.com</ccEmails>
        <ccEmails>paustin@sbscash.com</ccEmails>
        <ccEmails>arty@sbscash.com</ccEmails>
        <ccEmails>greg@sbscash.com</ccEmails>
        <ccEmails>mbernier@sbscash.com</ccEmails>
        <description>SBS Funding Notification</description>
        <protected>false</protected>
        <senderAddress>services@rapidadvance.com</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Auto_E_Mail_Templates/Funding_Notification</template>
    </alerts>
    <alerts>
        <fullName>Send_Risk_Alert</fullName>
        <ccEmails>kmitchell@rapidadvance.com</ccEmails>
        <ccEmails>tbrown@rapidadvance.com</ccEmails>
        <description>Send Risk Alert</description>
        <protected>false</protected>
        <recipients>
            <field>Send_Risk_Alert_From__c</field>
            <type>email</type>
        </recipients>
        <recipients>
            <field>Send_Risk_Alert_To__c</field>
            <type>email</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>All_Templates/Risk_Issues_for_Processing</template>
    </alerts>
    <alerts>
        <fullName>SignedContractReceived</fullName>
        <ccEmails>DS@rapidadvance.com</ccEmails>
        <description>Signed Contract Received.</description>
        <protected>false</protected>
        <recipients>
            <recipient>jackaoui@rapidadvance.com</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>mcerminaro@rapidadvance.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>All_Templates/SignedContractReceived</template>
    </alerts>
    <alerts>
        <fullName>SplitReductionNotificationInternal</fullName>
        <ccEmails>tbrown@rapidadvance.com</ccEmails>
        <description>Email % Split Reduction Notification - Internal</description>
        <protected>false</protected>
        <recipients>
            <recipient>Processors</recipient>
            <type>role</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>All_Templates/SplitReduction</template>
    </alerts>
    <alerts>
        <fullName>Syndication_Amount_Ent</fullName>
        <ccEmails>adierksheide@rapidadvance.com</ccEmails>
        <description>Syndication Amount Entered</description>
        <protected>false</protected>
        <senderType>CurrentUser</senderType>
        <template>All_Templates/Syndication_Amount_Entered_Email</template>
    </alerts>
    <alerts>
        <fullName>UWApprovalStatusChangeDeclinedtoApproved</fullName>
        <description>UW Approval Status Change =&gt; Declined to Approved</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <recipients>
            <recipient>Processors</recipient>
            <type>role</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>All_Templates/UWApprovalStatusChangeDeclinedtoApproved</template>
    </alerts>
    <alerts>
        <fullName>UW_Assigned</fullName>
        <description>UW Assigned</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderAddress>underwriting@rapidadvance.com</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Auto_E_Mail_Templates/Submitted_to_UW</template>
    </alerts>
    <alerts>
        <fullName>UnqualifiedNotificationEmail</fullName>
        <description>Unqualified Notification Email</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>All_Templates/Unqualified_Opportunity</template>
    </alerts>
    <fieldUpdates>
        <fullName>AccOppStageUpdate</fullName>
        <field>Current_Opp_Stage__c</field>
        <formula>text(StageName)</formula>
        <name>AccOppStageUpdate</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <targetObject>AccountId</targetObject>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>AccOppStage_Closed_Won</fullName>
        <field>Current_Opp_Stage__c</field>
        <formula>&quot;Closed Won&quot;</formula>
        <name>AccOppStage-Closed Won</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <targetObject>AccountId</targetObject>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>AccOppStage_PQF</fullName>
        <field>Current_Opp_Stage__c</field>
        <formula>&quot;Pre-Qual FAIL&quot;</formula>
        <name>AccOppStage-PQF</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <targetObject>AccountId</targetObject>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>AccOppStage_PQP</fullName>
        <field>Current_Opp_Stage__c</field>
        <formula>&quot;Pre-Qual Pass&quot;</formula>
        <name>AccOppStage-PQP</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <targetObject>AccountId</targetObject>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>AccOppStage_PQP_Credit_Only</fullName>
        <field>Current_Opp_Stage__c</field>
        <formula>&quot;Pre-Qual Pass Credit Only&quot;</formula>
        <name>AccOppStage-PQP Credit Only</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <targetObject>AccountId</targetObject>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>AccOppStage_UnqReconsider</fullName>
        <field>Current_Opp_Stage__c</field>
        <formula>&quot;Unqualified - Will Reconsider Later&quot;</formula>
        <name>AccOppStage-UnqReconsider</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <targetObject>AccountId</targetObject>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>AccOppStage_Unqualified</fullName>
        <field>Current_Opp_Stage__c</field>
        <formula>&quot;Unqualified&quot;</formula>
        <name>AccOppStage-Unqualified</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <targetObject>AccountId</targetObject>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>AlphaCardCards</fullName>
        <field>Visa_MC_Debit_Discover__c</field>
        <literalValue>1</literalValue>
        <name>AlphaCard Cards</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>AmountReprice</fullName>
        <field>Amount</field>
        <formula>New_Advance_Price__c 

/*UW_New_Advance_Price__c*/</formula>
        <name>Amount Reprice</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Amount_Reprise</fullName>
        <field>Amount</field>
        <formula>New_Advance_Price__c</formula>
        <name>Amount Reprise</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>ApprovedorAutoApproveFU</fullName>
        <field>StageName</field>
        <literalValue>Approved</literalValue>
        <name>Approved or Auto Approve FU</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Appvdpendingtoapproved</fullName>
        <field>StageName</field>
        <literalValue>Approved</literalValue>
        <name>Appvd pending to approved</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>AutoDeclineStageChange</fullName>
        <field>StageName</field>
        <literalValue>Auto Decline-To Processing</literalValue>
        <name>Auto Decline Stage Change</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Auto_Declined_Deal</fullName>
        <field>StageName</field>
        <literalValue>Auto Decline-To Processing</literalValue>
        <name>Auto Declined Deal</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>C_1_Submitted_Updated_to_Incomplete</fullName>
        <field>StageName</field>
        <literalValue>C-1 Contract Signed - More Info Needed</literalValue>
        <name>C-1 Submitted Updated to Incomplete</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>CardPaymentSolutionsCards</fullName>
        <field>Visa_MC_Discover__c</field>
        <literalValue>1</literalValue>
        <name>Card Payment Solutions Cards</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>CenturyBankcardCards</fullName>
        <field>Visa_MC_Discover__c</field>
        <literalValue>1</literalValue>
        <name>Century Bankcard Cards</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Change_Opportuniy_Record_Type</fullName>
        <field>RecordTypeId</field>
        <lookupValue>Pre_Qual_Record_Type</lookupValue>
        <lookupValueType>RecordType</lookupValueType>
        <name>Change Opportuniy Record Type</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Conditions_Met_Trigger</fullName>
        <field>All_Approved_With_Conditions_Met_date__c</field>
        <formula>Now()</formula>
        <name>Conditions Met Trigger</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Confirmed_Add_l_Signer_Mobile_Number</fullName>
        <field>Confirmed_Add_l_Signer_Mobile_Number__c</field>
        <literalValue>Not Applicable</literalValue>
        <name>Confirmed Add&apos;l Signer Mobile Number</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Confirmed_Add_l_Signer_Phone_Number</fullName>
        <field>Confirmed_Add_l_Signer_Phone_Number__c</field>
        <literalValue>Not Applicable</literalValue>
        <name>Confirmed Add&apos;l Signer Phone Number</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>DealDefaultedRenewalEligibility</fullName>
        <description>Then a deal is checked as &quot;Deal Defaulted&quot; the Renewal eligibility is changed to Ineligible.</description>
        <field>Renewal_Eligibility__c</field>
        <literalValue>Ineligible</literalValue>
        <name>Deal Defaulted - Renewal Eligibility</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Decision_Date_timestamp</fullName>
        <description>Set the Decision Date to the present date/time</description>
        <field>Decision_Date__c</field>
        <formula>NOW()</formula>
        <name>Decision Date timestamp</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>DeclineFieldUpdate</fullName>
        <field>StageName</field>
        <literalValue>Declined</literalValue>
        <name>Decline Field Update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>DeclinePendingMgmntReviewFU</fullName>
        <field>StageName</field>
        <literalValue>Declined - Pending Mgmt Review</literalValue>
        <name>Decline - Pending Mgmnt Review FU</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>FundedClosedWon</fullName>
        <field>StageName</field>
        <literalValue>Closed Won</literalValue>
        <name>Funded - ClosedWon</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>GTF_Record</fullName>
        <field>RecordTypeId</field>
        <lookupValue>GreenTree</lookupValue>
        <lookupValueType>RecordType</lookupValueType>
        <name>GTF Record</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>InitialApprovalDTS</fullName>
        <field>Initial_Approval_DateStamp__c</field>
        <formula>NOW()</formula>
        <name>InitialApprovalDTS</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Lead_Converted_to_Opp_from_SA</fullName>
        <field>StageName</field>
        <literalValue>Prospecting</literalValue>
        <name>Lead Converted to Opp from SA</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>LockopportunityRecordFieldUpdate</fullName>
        <field>StageName</field>
        <literalValue>Approved</literalValue>
        <name>LockopportunityRecordFieldUpdate</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>LockopportunityRecordFieldUpdate1</fullName>
        <field>RecordTypeId</field>
        <lookupValue>ReadOnly</lookupValue>
        <lookupValueType>RecordType</lookupValueType>
        <name>LockopportunityRecordFieldUpdate1</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Manual_FICO_1</fullName>
        <field>Manual_Applicant_1_FICO__c</field>
        <formula>Manual_Applicant_1_FICO_Score__c</formula>
        <name>Manual FICO 1</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>NOVACards</fullName>
        <field>Visa_MC__c</field>
        <literalValue>1</literalValue>
        <name>NOVA Cards</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>NewDaystoRepay</fullName>
        <field>Estimated_Days_to_Repay__c</field>
        <formula>New_Est_Days_to_Complete__c 

/*UW_Est_Days_to_Repay__c*/</formula>
        <name>New Days to Repay</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>New_Days_to_Repay</fullName>
        <field>Estimated_Days_to_Repay__c</field>
        <formula>Est_Days_to_Repay__c</formula>
        <name>New Days to Repay</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Opportunity_Level_Update</fullName>
        <field>Opportunity_Level__c</field>
        <literalValue>2a - Pre-Qual in Progress</literalValue>
        <name>Opportunity Level Update 2a</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Opportunity_Level_Update_10</fullName>
        <description>Auto Decline-To Processing, Declined, Declined - Pending Mgmt Review</description>
        <field>Opportunity_Level__c</field>
        <literalValue>10 - Deal is Declined</literalValue>
        <name>Opportunity Level Update 10</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Opportunity_Level_Update_10a</fullName>
        <description>Unqualified, Do Not Call, Closed Lost</description>
        <field>Opportunity_Level__c</field>
        <literalValue>10a - Deal is Unqualified - No Chance of Future Business</literalValue>
        <name>Opportunity Level Update 10a</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Opportunity_Level_Update_11</fullName>
        <description>Unqualified, Do Not Call, Closed Lost</description>
        <field>Opportunity_Level__c</field>
        <literalValue>11 - Deal May be Eligible for Future Business</literalValue>
        <name>Opportunity Level Update 11</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Opportunity_Level_Update_2</fullName>
        <field>Opportunity_Level__c</field>
        <literalValue>2 - Needs Additional Follow Up</literalValue>
        <name>Opportunity Level Update 2</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Opportunity_Level_Update_3</fullName>
        <field>Opportunity_Level__c</field>
        <literalValue>3 - Merchant Sending CC Statements</literalValue>
        <name>Opportunity Level Update 3</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Opportunity_Level_Update_4</fullName>
        <field>Opportunity_Level__c</field>
        <literalValue>4 - AE Preparing Quote</literalValue>
        <name>Opportunity Level Update 4</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Opportunity_Level_Update_5</fullName>
        <field>Opportunity_Level__c</field>
        <literalValue>5 - Submitted Quote to Merchant</literalValue>
        <name>Opportunity Level Update 5</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Opportunity_Level_Update_6</fullName>
        <description>C - Offer Accepted - Awaiting Compl Apps</description>
        <field>Opportunity_Level__c</field>
        <literalValue>6 - Verbal Acceptance, Need Additional Docs</literalValue>
        <name>Opportunity Level Update 6</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Opportunity_Level_Update_7</fullName>
        <description>C-1 Contract Signed - More Info Needed</description>
        <field>Opportunity_Level__c</field>
        <literalValue>7 - Rec&apos;d Signed Contract, Still Need Additional Docs</literalValue>
        <name>Opportunity Level Update 7</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Opportunity_Level_Update_8</fullName>
        <description>Submitted Deal</description>
        <field>Opportunity_Level__c</field>
        <literalValue>8 - All Docs Recieved from AE, Submitted to SA for Verification</literalValue>
        <name>Opportunity Level Update 8</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Opportunity_Level_Update_9</fullName>
        <description>Approved, Approved - Pending Mgmnt Signature, Auto Approve-To Processing, Forwarded To Processing</description>
        <field>Opportunity_Level__c</field>
        <literalValue>9 - Deal is Approved</literalValue>
        <name>Opportunity Level Update 9</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>PQ_Data_Entry_Date</fullName>
        <field>PQ_Data_Entry_Date__c</field>
        <formula>NOW()</formula>
        <name>PQ Data Entry Date</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>PaybackAmountReprice</fullName>
        <field>Pay_Back_Amount__c</field>
        <formula>New_Payback_Price__c 
/*UW_New_Payback_Price__c*/</formula>
        <name>Payback Amount Reprice</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Payback_Amount_Reprice</fullName>
        <field>Pay_Back_Amount__c</field>
        <formula>New_Payback_Price__c</formula>
        <name>Payback Amount Reprice</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>PendingMgmntReviewFU</fullName>
        <field>StageName</field>
        <literalValue>Pending Management Review</literalValue>
        <name>Pending Mgmnt Review FU</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>PercentPaybackReprice</fullName>
        <field>Percent_Payback__c</field>
        <formula>New_Percent_Payback__c 

/*UW_New_Percent_Payback__c*/</formula>
        <name>Percent Payback Reprice</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Percent_Payback_Reprice</fullName>
        <field>Percent_Payback__c</field>
        <formula>New_Percent_Payback__c</formula>
        <name>Percent Payback Reprice</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>PopulateInitialunderwritingapproval</fullName>
        <field>Initial_underwriting_approval__c</field>
        <formula>CASE(Underwriting_Approval__c,&quot;Approved&quot;,&quot;Approved&quot;,
&quot;Approved by Credit Committee&quot;,&quot;Approved by Credit Committee&quot;,
&quot;Approved Re-price&quot;,&quot;Approved Re-price&quot;,
&quot;Approved by Credit Committee with conditions&quot;,&quot;Approved by Credit Committee with conditions&quot;,
&quot;Approved - Pending Management Review&quot;,&quot;Approved - Pending Management Review&quot;,
&quot;Auto Approved&quot;,&quot;Auto Approved&quot;,
&quot;Auto Declined&quot;,&quot;Auto Declined&quot;,
&quot;Declined&quot;,&quot;Declined&quot;,
&quot;Declined by Credit Committee&quot;,&quot;Declined by Credit Committee&quot;,
&quot;Declined - Pending Management Review&quot;,&quot;Declined - Pending Management Review&quot;,
&quot;Pending&quot;,&quot;Pending&quot;,
&quot;Pending management review returned to u/w&quot;,&quot;Pending management review returned to u/w&quot;,
&quot;Rescinded by merchant&quot;,&quot;Rescinded by merchant&quot;,
&quot;Rescinded by Processing&quot;,&quot;Rescinded by Processing&quot;,
&quot;Rescinded by RapidAdvance&quot;,&quot;Rescinded by RapidAdvance&quot;,
&quot;Rescinded by Underwriting&quot;,&quot;Rescinded by Underwriting&quot;,
&quot;Scheduled for credit committee&quot;,&quot;Scheduled for credit committee&quot;,
&quot;Unqualified - Comp. Pay Off too High - Reconsider Later&quot;,&quot;Unqualified - Comp. Pay Off too High - Reconsider Later&quot;,
&quot;Unqualified - Will Not Reconsider&quot;,&quot;Unqualified - Will Not Reconsider&quot;,
&quot;Unqualified - Will Reconsider in the Future&quot;,&quot;Unqualified - Will Reconsider in the Future&quot;,&quot;Error&quot;)</formula>
        <name>Populate Initial underwriting approval</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>PowerPayCards</fullName>
        <field>Visa_MC_Debit__c</field>
        <literalValue>1</literalValue>
        <name>PowerPay Cards</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Pre_Qual_Decision_Date_Update</fullName>
        <field>Pre_Qual_Decision_Date__c</field>
        <formula>NOW()</formula>
        <name>Pre-Qual Decision Date Update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Pre_Qual_Declined</fullName>
        <field>StageName</field>
        <literalValue>Pre-Qual FAIL</literalValue>
        <name>Pre-Qual Declined</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Pre_Qual_Entry_Time_Update</fullName>
        <field>Approval_Process_Entry_Time__c</field>
        <formula>NOW()</formula>
        <name>Pre-Qual Entry Time Update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Pre_Qual_Info_Complete</fullName>
        <field>StageName</field>
        <literalValue>Pre-Qual in Progress</literalValue>
        <name>Pre-Qual Info Complete</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Pre_Qual_Pending_Date_Update</fullName>
        <field>Pre_Qual_Pending_Date__c</field>
        <formula>NOW()</formula>
        <name>Pre-Qual Pending Date Update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Pre_Qual_Type_Updated</fullName>
        <field>Type</field>
        <literalValue>Pre-Qualification New</literalValue>
        <name>Pre-Qual Type Updated</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Pre_Qual_Type_Updated_Renew</fullName>
        <field>Type</field>
        <literalValue>Pre-Qualification Renewal</literalValue>
        <name>Pre-Qual Type Updated - Renew</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Pre_Qual_Unqualified</fullName>
        <field>StageName</field>
        <literalValue>Unqualified</literalValue>
        <name>Pre-Qual Unqualified</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Pre_Qual_Unqualified_Will_Reconsider</fullName>
        <field>StageName</field>
        <literalValue>Unqualified - Will Reconsider Later</literalValue>
        <name>Pre-Qual Unqualified Will Reconsider</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Pre_Qualification_PASS</fullName>
        <description>Pre-qualification has been completed and deal has passed.</description>
        <field>Type</field>
        <literalValue>Pre-Qualification New</literalValue>
        <name>Pre-Qualification - PASS</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Processing_On_Hold_Start_Date</fullName>
        <field>On_Hold_Start_Date__c</field>
        <formula>NOW()</formula>
        <name>Processing On Hold Start Date</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Processing_On_Hold_Stop_Date</fullName>
        <field>On_Hold_Stop_Date__c</field>
        <formula>NOW()</formula>
        <name>Processing On Hold Stop Date</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Processing_Rep_Stamp</fullName>
        <field>Processing_Rep_Assigned__c</field>
        <formula>NOW()</formula>
        <name>Processing Rep Stamp</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>QCDataEntryDate</fullName>
        <field>Data_Entry_Date__c</field>
        <formula>QC_Decision_Date__c</formula>
        <name>QC --&gt; Data Entry Date</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>QC_Calculate_Due_Dates_Update</fullName>
        <field>Calculate_Due_Dates__c</field>
        <formula>NOW()</formula>
        <name>QC Calculate Due Dates Update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Regular_Opportunity</fullName>
        <field>RecordTypeId</field>
        <lookupValue>NewOpportunity</lookupValue>
        <lookupValueType>RecordType</lookupValueType>
        <name>Regular Opportunity</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Renewal_Number</fullName>
        <field>Renewal_Number__c</field>
        <formula>if( Renewal__c,Account.renewal_count__c,NULL)</formula>
        <name>Renewal Number</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>RescindedByMerchants</fullName>
        <field>StageName</field>
        <literalValue>Signed Contract Rescinded by Merchant</literalValue>
        <name>Rescinded By Merchants</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>RescindedByProcessing</fullName>
        <field>StageName</field>
        <literalValue>Rescinded by RapidAdvance</literalValue>
        <name>Rescinded By Processing</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>RescindedDealRA</fullName>
        <field>StageName</field>
        <literalValue>Rescinded by RapidAdvance</literalValue>
        <name>Rescinded Deal - RA</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>ResetQCP3</fullName>
        <field>QC_User__c</field>
        <name>ResetQCP3</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>ResetStartDateFilled</fullName>
        <field>QC_StartDate_filled__c</field>
        <literalValue>0</literalValue>
        <name>ResetStartDateFilled</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>RestStrtDate</fullName>
        <field>QC_Start_Date__c</field>
        <name>RestStrtDate</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Null</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Risk_Employee_Review_Date</fullName>
        <field>Risk_Employee_Review_Date__c</field>
        <formula>NOW()</formula>
        <name>Risk Employee Review Date</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>SetStartTimeFilled</fullName>
        <field>QC_StartDate_filled__c</field>
        <literalValue>1</literalValue>
        <name>SetStartTimeFilled</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Set_Campaign_Additional_Owner_Email</fullName>
        <field>Campaign_Owner_Additional_Email__c</field>
        <formula>Campaign.BD_Send_Addtl_Owner__c</formula>
        <name>Set Campaign Additional Owner Email</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Set_Campaign_Owner_Email</fullName>
        <field>Campaign_Owner_Email__c</field>
        <formula>Campaign.BD_Send_Cmpn_Owner__c</formula>
        <name>Set Campaign Owner Email</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>SignedContractRecievedFieldUpdate</fullName>
        <field>Signed_Contract_Received__c</field>
        <formula>NOW()</formula>
        <name>Signed Contract Recieved Field Update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>StageChangetoClosedWon</fullName>
        <field>StageName</field>
        <literalValue>Closed Won</literalValue>
        <name>Stage Change to Closed Won</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Stage_Pre_Qual_PASSED</fullName>
        <field>StageName</field>
        <literalValue>Pre-Qual Pass</literalValue>
        <name>Stage Pre-Qual PASSED</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Stage_Pre_Qual_Pass_Credit_Only</fullName>
        <field>StageName</field>
        <literalValue>Pre-Qual Pass Credit Only</literalValue>
        <name>Stage Pre-Qual Pass Credit Only</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Submit_to_SA_DTS</fullName>
        <field>Submit_to_Sales_Assistant__c</field>
        <formula>now()</formula>
        <name>Submit to SA DTS</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Submit_to_UW_DTS</fullName>
        <field>Submit_to_UW_Processing__c</field>
        <formula>now()</formula>
        <name>Submit to UW DTS</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>SubmittedtoQCDealComplt</fullName>
        <field>StageName</field>
        <literalValue>Submitted Deal</literalValue>
        <name>Submitted to QC - Deal Complt.</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Timestamp_DS_Start_Date_Time</fullName>
        <field>DS_Start_Date_Time__c</field>
        <formula>NOW()</formula>
        <name>Timestamp: DS Start Date/Time</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>UCCDebtorLegalNameRule</fullName>
        <description>Pulls the Account Name into the Debtor Legal Name field.</description>
        <field>UCC_Debtor_Legal_Name__c</field>
        <formula>Legal_Name__c</formula>
        <name>UCC Debtor Legal Name Rule</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>UPdate_QCdatetime</fullName>
        <field>QC_Start_Date__c</field>
        <formula>Now()</formula>
        <name>UPdate QCdatetime</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>USMSCards</fullName>
        <field>Visa_MC_Discover__c</field>
        <literalValue>1</literalValue>
        <name>USMS Cards</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Uncheck_Send_Risk_Alert</fullName>
        <field>Send_Risk_Alert__c</field>
        <literalValue>0</literalValue>
        <name>Uncheck Send Risk Alert</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Unqualified</fullName>
        <field>StageName</field>
        <literalValue>Unqualified</literalValue>
        <name>Unqualified</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Unqualifiedwillconsiderlater</fullName>
        <field>StageName</field>
        <literalValue>Unqualified - Will Reconsider Later</literalValue>
        <name>Unqualified - will consider later</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>UpdateOpportuniyInternationalField</fullName>
        <field>International_Sale_Hidden_Text__c</field>
        <formula>Account.BillingCountry</formula>
        <name>Update Opportuniy International Field</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Existing_Competitor_Advance</fullName>
        <field>Existing_Competitor_Advance2__c</field>
        <literalValue>NO</literalValue>
        <name>Update Existing Competitor Advance</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Initial_File_Review_Complete_Date</fullName>
        <field>Initial_File_Review2__c</field>
        <formula>NOW()</formula>
        <name>Update Initial File Review Complete Date</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Partner_Email_1</fullName>
        <field>Partner_Email_1__c</field>
        <formula>HiddenPartnerEmail1__c</formula>
        <name>Update Partner Email 1</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Partner_Email_2</fullName>
        <field>Partner_Email_2__c</field>
        <formula>HiddenPartnerEmail2__c</formula>
        <name>Update Partner Email 2</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Partner_Email_3</fullName>
        <field>Partner_Email_3__c</field>
        <formula>HiddenPartnerEmail3__c</formula>
        <name>Update Partner Email 3</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Partner_Email_6</fullName>
        <field>Partner_Email_6__c</field>
        <formula>HiddenPartnerEmail6__c</formula>
        <name>Update Partner Email 6</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Percent_Complete</fullName>
        <field>Percent_Paid_Off__c</field>
        <formula>Total_Repay_Amount__c /  Purchase_Amount__c</formula>
        <name>Update Percent Complete</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Status_To_Closed_Rule_10</fullName>
        <field>Status__c</field>
        <literalValue>Closed - Funded</literalValue>
        <name>Update Status To Closed Rule 10</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Status_To_File_In_Review_Rule_3</fullName>
        <field>Status__c</field>
        <literalValue>File Review</literalValue>
        <name>Update Status To File In Review Rule 3</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Status_To_No_Offer_Available_Rule</fullName>
        <field>Status__c</field>
        <literalValue>No Offer Available</literalValue>
        <name>Update Status To No Offer Available Rule</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Status_To_Process_Contract_Rule_8</fullName>
        <field>Status__c</field>
        <literalValue>Processing</literalValue>
        <name>Update Status To Process Contract Rule 8</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Status_To_QC_InProgress</fullName>
        <field>Status__c</field>
        <literalValue>QC in Progress</literalValue>
        <name>Update Status To QC_InProgress</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Status_To_Qualified_Offer_Rule_4a</fullName>
        <field>Status__c</field>
        <literalValue>Qualified Offer</literalValue>
        <name>Update Status To Qualified Offer Rule 4a</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Status_To_Submitted_For_Funding_A</fullName>
        <field>Status__c</field>
        <literalValue>Funding In Progress</literalValue>
        <name>Update Status To Submitted For Funding A</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_field_Type_after_Recall</fullName>
        <field>Type</field>
        <name>Update field Type after Recall</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Working_Opp_Level</fullName>
        <field>Opportunity_Level__c</field>
        <literalValue>1 - Actively Working Opportunity</literalValue>
        <name>Opportunity Level Update 1</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>AccountOwnerUpdate</fullName>
        <active>false</active>
        <formula>(PRIORVALUE(OwnerId) = &apos;005700000037L5a&apos; || 
PRIORVALUE(OwnerId) = &apos;00570000001ApYJ&apos; || 
PRIORVALUE(OwnerId) = &apos;00570000001xJS0&apos; || 
PRIORVALUE(OwnerId) = &apos;005700000037OXw&apos; || 
PRIORVALUE(OwnerId) = &apos;005700000037jIO&apos;)  &amp;&amp;
Owner.UserRoleId = &apos;00E30000000rFm2&apos; &amp;&amp;
n2de__Is_distributed__c = TRUE</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Advantage Payment Processing Deal Updates</fullName>
        <active>false</active>
        <formula>CONTAINS(Campaign.Name,&quot;Advantage Payment Processing&quot;) &amp;&amp; ((ISCHANGED(Description )) || (ISCHANGED( Sales_Check_List_Notes__c )) || (ISCHANGED( UW_Deal_Repriced_Need_New_FRSA__c )) || ( ISCHANGED( Processing_Notes__c )) || ( ISCHANGED( Underwriting_Notes__c )) || (ISCHANGED( New_FRSA_Has_Been_Received__c )) || (ISCHANGED( StageName))) &amp;&amp; (Renewal__c = False) &amp;&amp; NOT (ISPICKVAL( Underwriting_Approval__c , &quot;Pending management review returned to u/w&quot;) )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Alex Lopez Pre-Qual PASSED</fullName>
        <actions>
            <name>Alex_L_Pre_Qualification_Email_Alert</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <booleanFilter>2 AND (1 OR 3)</booleanFilter>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>equals</operation>
            <value>Pre-Qual Pass</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.OwnerId</field>
            <operation>contains</operation>
            <value>alex lopez</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Pre_Qual_Decision__c</field>
            <operation>equals</operation>
            <value>Declined</value>
        </criteriaItems>
        <description>Email</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>All Approved With Conditions Met date</fullName>
        <actions>
            <name>Conditions_Met_Trigger</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.All_Approved_With_Conditions_Met__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Decision_Date__c</field>
            <operation>greaterOrEqual</operation>
            <value>8/7/2014</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>All Approved With Conditions Met date update</fullName>
        <active>false</active>
        <criteriaItems>
            <field>Opportunity.All_Approved_With_Conditions_Met__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Approved or Auto Approve</fullName>
        <actions>
            <name>ApprovedorAutoApproveFU</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Opportunity.Underwriting_Approval__c</field>
            <operation>equals</operation>
            <value>Approved by Credit Committee,Auto Approved,Approved by Credit Committee with conditions,Approved Re-price,Auto Approved Re-Price,Approved</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>notEqual</operation>
            <value>Repriced</value>
        </criteriaItems>
        <description>Email</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Apvd Pending to Approved</fullName>
        <actions>
            <name>Appvdpendingtoapproved</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Opportunity.Underwriting_Approval__c</field>
            <operation>equals</operation>
            <value>Approved</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Auto Declined</fullName>
        <actions>
            <name>AutoDeclineStageChange</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Opportunity.Underwriting_Approval__c</field>
            <operation>equals</operation>
            <value>Auto Declined</value>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Auto Declined Deal</fullName>
        <actions>
            <name>Auto_Declined_Deal</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Opportunity.Underwriting_Approval__c</field>
            <operation>equals</operation>
            <value>Auto Declined</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.QC_Decision__c</field>
            <operation>equals</operation>
            <value>Decline-Pending Management Review</value>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>B2C_Opp</fullName>
        <actions>
            <name>Biz2Credit_Deal_Alert</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <formula>PrimaryCampaignSource__c = &quot;Biz2Credit&quot; &amp;&amp; ( (ISNEW()&amp;&amp;(NOT(ISPICKVAL(Status__c,&quot;&quot;)))) || ISCHANGED(Status__c ) )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>B2C_Prequal</fullName>
        <actions>
            <name>B2C_Prequal_Alert</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <formula>PrimaryCampaignSource__c =&quot;Biz2Credit&quot; &amp;&amp; ischanged(Pre_Qual_Decision__c) &amp;&amp; not(ISPICKVAL(Pre_Qual_Decision__c,&quot;&quot;))</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>BD Stage Notification</fullName>
        <actions>
            <name>BD_Stage_Changed_Alert</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Set_Campaign_Additional_Owner_Email</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Set_Campaign_Owner_Email</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>If BD Notifications are enabled (or overridden) on the Primary Campaign Source, send an email to the Campaign Owner(s)</description>
        <formula>ISCHANGED(StageName) &amp;&amp; (Campaign.BD_Send_Notifications__c=true || Campaign.BD_Notification_Override__c=true)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>BF Renewal Alert</fullName>
        <actions>
            <name>BF_Renewal_Alert</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.Product__c</field>
            <operation>equals</operation>
            <value>Decline Program</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Percent_Paid_Off__c</field>
            <operation>greaterOrEqual</operation>
            <value>75</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Funded_by_WC__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.CampaignId</field>
            <operation>startsWith</operation>
            <value>Merchant Capital Funding</value>
        </criteriaItems>
        <description>Email</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Chad - Deal has been updated%2E</fullName>
        <active>false</active>
        <criteriaItems>
            <field>Opportunity.OwnerId</field>
            <operation>contains</operation>
            <value>otinger</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.LastModifiedById</field>
            <operation>notContain</operation>
            <value>kohlhepp,otinger,khadysha,dodge,baker hill,kholfi</value>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Confirmed Add%27l Signer Number</fullName>
        <actions>
            <name>Confirmed_Add_l_Signer_Mobile_Number</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Confirmed_Add_l_Signer_Phone_Number</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.Multiples_Owners__c</field>
            <operation>equals</operation>
            <value>0</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Confirmed_Add_l_Signer_Mobile_Number__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Confirmed_Add_l_Signer_Phone_Number__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Create Quancor Follow Up Call for Opportunity</fullName>
        <actions>
            <name>PlaceFollowUpCall</name>
            <type>Task</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Opportunity.LeadSource</field>
            <operation>equals</operation>
            <value>Recycle Project - Quancor MAY 2008</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Deal Defaulted - Renewal Eligibility Rule</fullName>
        <actions>
            <name>DealDefaultedRenewalEligibility</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.Deal_Defaulted__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Deal Was Repriced - New FRSA Needed</fullName>
        <actions>
            <name>DealWasRepricedNeedNewFRSA</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.Deal_Repriced_Need_New_FRSA__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.New_FRSA_Has_Been_Received__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <description>Email</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Deal is being rescinded - Missing information</fullName>
        <actions>
            <name>DealRescindedMissingInformation</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>equals</operation>
            <value>Rescinded by RapidAdvance</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Decline - Pending Mgmnt Review</fullName>
        <actions>
            <name>DeclinePendingMgmntReviewFU</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <booleanFilter>1 or (2 and 3)</booleanFilter>
        <criteriaItems>
            <field>Opportunity.Underwriting_Approval__c</field>
            <operation>equals</operation>
            <value>Declined - Pending Management Review</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.QC_Decision__c</field>
            <operation>equals</operation>
            <value>Decline-Pending Management Review</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Underwriting_Approval__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Decline Program Deal to QC Queue</fullName>
        <actions>
            <name>Decline_Program_Deal_to_QC_queue</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <booleanFilter>1 AND 2 AND 3</booleanFilter>
        <criteriaItems>
            <field>Opportunity.Submit_to_UW_Processing__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Product__c</field>
            <operation>equals</operation>
            <value>Decline Program</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.PrimaryCampaignSource__c</field>
            <operation>notContain</operation>
            <value>Green Tree</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Decline Program Eligible</fullName>
        <actions>
            <name>Opp_Owner_Decline_Program_Eligible</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <formula>ISPICKVAL(Eligible_for_Decline_Program__c,&quot;YES&quot;) &amp;&amp; Campaign.Decline_Program__c &amp;&amp; ( ISPICKVAL(Pre_Qual_Decision__c,&quot;FAIL&quot;) || Declined_Flag__c = 1 )</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Declined Deal</fullName>
        <actions>
            <name>DeclineFieldUpdate</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.Underwriting_Approval__c</field>
            <operation>equals</operation>
            <value>Declined,Declined by Credit Committee</value>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Declined by UW</fullName>
        <actions>
            <name>DeclinedbyUW</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.Underwriting_Approval__c</field>
            <operation>equals</operation>
            <value>Declined,Auto Declined</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Decision_Date__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <description>Email</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>DistEngOppAssignment</fullName>
        <actions>
            <name>DistEngOppAssignmentOwner</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <formula>ISCHANGED(OwnerId) &amp;&amp;
OwnerId &lt;&gt; &apos;005700000037L5a&apos; &amp;&amp; 
OwnerId &lt;&gt; &apos;005700000037L5aAAE&apos; &amp;&amp;
n2de__Is_distributed__c = TRUE &amp;&amp;
n2de__Last_distributed__c &gt; NOW() - 1</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>DistEngOppAssignment_PartnerAlert</fullName>
        <actions>
            <name>Partner_Opportunity_Assignment</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <formula>ISCHANGED(OwnerId) &amp;&amp;
OwnerId &lt;&gt; &apos;005700000037L5a&apos; &amp;&amp; 
OwnerId &lt;&gt; &apos;005700000037L5aAAE&apos; &amp;&amp;
n2de__Is_distributed__c = TRUE &amp;&amp;
n2de__Last_distributed__c &gt; NOW() - 1 &amp;&amp;
TEXT(StageName) &lt;&gt; &apos;Pre-Qual FAIL&apos;</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>DistEngOppAssignment_PartnerAlert_Fail</fullName>
        <actions>
            <name>Partner_Pre_Qual_Fail</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <formula>TEXT(StageName) = &apos;Pre-Qual FAIL&apos; &amp;&amp;
($User.UserRoleId &lt;&gt; &apos;00E70000000shym&apos; || 
 $User.Username = &apos;webservices@rapidadvance.com&apos; ||
 $User.Username = &apos;webapps@rapidadvance.com&apos;)</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Elite Data Bankcard One%2C Inc%2E - Matt Milmeister Updates</fullName>
        <actions>
            <name>Elite_Data_Bankcard_One_Inc_Matt_Milmeister_Updates</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <formula>ISPICKVAL( User__c , &quot;Bankcard One, Inc. - Matt Milmeister&quot;)   &amp;&amp; (ISCHANGED(StageName)  ||  ISCHANGED(Description)   ||  ISCHANGED( Processing_Notes__c )  ||  ISCHANGED( Underwriting_Notes__c )   ||  ISCHANGED( Sales_Check_List_Notes__c ) ) &amp;&amp;   (Renewal__c  = False)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Elite Data EMS Kanas - Stephanie Bowlin Updates</fullName>
        <actions>
            <name>Elite_Data_EMS_Kanas_Stephanie_Bowlin_Updates</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <formula>ISPICKVAL( User__c , &quot;EMS Kanas - Stephanie Bowlin&quot;)   &amp;&amp; (ISCHANGED(StageName)  ||  ISCHANGED(Description)   ||  ISCHANGED( Processing_Notes__c )  ||  ISCHANGED( Underwriting_Notes__c )   ||  ISCHANGED( Sales_Check_List_Notes__c ) ) &amp;&amp;   (Renewal__c  = False)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Elite Data Electronic Merchant Solutions%2C Inc%2E - Richard Cha Updates</fullName>
        <actions>
            <name>Elite_Data_Electronic_Merchant_Solutions_Inc_Richard_Cha_Updates</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <formula>ISPICKVAL( User__c , &quot;Electronic Merchant Solutions, Inc. - Richard Cha&quot;)   &amp;&amp; (ISCHANGED(StageName)  ||  ISCHANGED(Description)   ||  ISCHANGED( Processing_Notes__c )  ||  ISCHANGED( Underwriting_Notes__c )   ||  ISCHANGED( Sales_Check_List_Notes__c ) ) &amp;&amp;   (Renewal__c  = False)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Elite Data Processing Updates</fullName>
        <actions>
            <name>Elite_Data_Updates</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <description>Email</description>
        <formula>(Campaign.Name  = &quot;Chase-Elite Data Processing&quot;)  &amp;&amp; (ISCHANGED(StageName)  ||  ISCHANGED(Description)   ||  ISCHANGED( Processing_Notes__c )  ||  ISCHANGED( Underwriting_Notes__c )   ||  ISCHANGED( Sales_Check_List_Notes__c ) ) &amp;&amp;   (Renewal__c  = False)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Elite Data United - Paul Rasidakis Updates</fullName>
        <actions>
            <name>Elite_Data_United_Paul_Rasidakis_Updates</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <formula>ISPICKVAL( User__c , &quot;United - Paul Rasidakis&quot;)   &amp;&amp; (ISCHANGED(StageName)  ||  ISCHANGED(Description)   ||  ISCHANGED( Processing_Notes__c )  ||  ISCHANGED( Underwriting_Notes__c )   ||  ISCHANGED( Sales_Check_List_Notes__c ) ) &amp;&amp;   (Renewal__c  = False)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Elite Data United Agoura - Jeff Brodsly Updates</fullName>
        <actions>
            <name>Elite_Data_EMS_Agoura_Jeff_Brodsly_Updates</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <formula>ISPICKVAL( User__c , &quot;United Agoura - Jeff Brodsly&quot;)   &amp;&amp; (ISCHANGED(StageName)  ||  ISCHANGED(Description)   ||  ISCHANGED( Processing_Notes__c )  ||  ISCHANGED( Underwriting_Notes__c )   ||  ISCHANGED( Sales_Check_List_Notes__c ) ) &amp;&amp;   (Renewal__c  = False)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>FM %26 Associates Updates</fullName>
        <active>false</active>
        <formula>(Campaign.Name  = &quot;FM &amp; Associates&quot;)  &amp;&amp; (ISCHANGED(StageName)  ||  ISCHANGED(Description)   ||  ISCHANGED( Processing_Notes__c )  ||  ISCHANGED( Underwriting_Notes__c )   ||  ISCHANGED( Sales_Check_List_Notes__c ) ) &amp;&amp;   (Renewal__c  = False)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>First Merchant Payment Deal Update</fullName>
        <active>false</active>
        <criteriaItems>
            <field>Opportunity.CampaignId</field>
            <operation>contains</operation>
            <value>First Merchant Payment</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.LastModifiedById</field>
            <operation>notContain</operation>
            <value>baker hill,account team,kholfi</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Underwriting_Approval__c</field>
            <operation>notEqual</operation>
            <value>Pending management review returned to u/w</value>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Funded - Closed Won</fullName>
        <actions>
            <name>Funding_Notification</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>AccOppStage_Closed_Won</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>FundedClosedWon</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.Funded_by_WC__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Underwriting_Approval__c</field>
            <operation>equals</operation>
            <value>Approved by Credit Committee with conditions,Approved Re-price,Approved - Pending Management Review,Approved,Approved by Credit Committee,Auto Approved,Auto Approved Re-Price</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>GTF Conversion</fullName>
        <actions>
            <name>GTF_Record</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <booleanFilter>1 OR 2</booleanFilter>
        <criteriaItems>
            <field>User.ProfileId</field>
            <operation>equals</operation>
            <value>Sales - Brokerage</value>
        </criteriaItems>
        <criteriaItems>
            <field>User.ProfileId</field>
            <operation>equals</operation>
            <value>Sales - Brokerage Manager</value>
        </criteriaItems>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>GTF Pending Management Review</fullName>
        <actions>
            <name>GTF_Opp_Pending_Management_Review_Alert</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <booleanFilter>1 AND 2</booleanFilter>
        <criteriaItems>
            <field>Opportunity.Underwriting_Approval__c</field>
            <operation>equals</operation>
            <value>Declined - Pending Management Review</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.PrimaryCampaignSource__c</field>
            <operation>equals</operation>
            <value>Rapid Advance Internal Campaign,Internet</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>GTF Qualified Opp</fullName>
        <actions>
            <name>GTF_Opp_Email_Alert</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <booleanFilter>1 AND 2</booleanFilter>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>equals</operation>
            <value>Pending Management Review,Auto Decline-To Processing,Declined,Declined - Pending Mgmt Review,Unqualified</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.LeadSource</field>
            <operation>notEqual</operation>
            <value>Partner,Partner-Web,Telemarketing - Partner</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>General Funding Notification</fullName>
        <actions>
            <name>Funding_Notification</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <description>Email</description>
        <formula>not(isnull( Funded_by_WC__c ))</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Initial Approval DTS</fullName>
        <actions>
            <name>InitialApprovalDTS</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>equals</operation>
            <value>Approved</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Initial_Approval_DateStamp__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Jeff - Deal has been updated</fullName>
        <active>false</active>
        <criteriaItems>
            <field>Opportunity.OwnerId</field>
            <operation>contains</operation>
            <value>jeff h</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.LastModifiedById</field>
            <operation>notContain</operation>
            <value>kohlhepp,jeff h,khadysha,dodge,baker hill,kholfi</value>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>LockopportunityRecord</fullName>
        <actions>
            <name>LockopportunityRecordFieldUpdate1</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>OR(
AND(ISPICKVAL( StageName , &quot;Approved&quot;),NOT(ISPICKVAL(PRIORVALUE(StageName),&quot;Approved&quot;))),
AND(ISPICKVAL( StageName , &quot;Auto Decline-To Processing&quot;),NOT(ISPICKVAL(PRIORVALUE(StageName),&quot;Auto Decline-To Processing&quot;))),
AND(ISPICKVAL( StageName , &quot;Closed Won&quot;),NOT(ISPICKVAL(PRIORVALUE(StageName),&quot;Closed Won&quot;))),
AND(ISPICKVAL( StageName , &quot;Declined&quot;),NOT(ISPICKVAL(PRIORVALUE(StageName),&quot;Declined&quot;))),
AND(ISPICKVAL( StageName , &quot;Decline - Pending Mgmt Review&quot;),NOT(ISPICKVAL(PRIORVALUE(StageName),&quot;Decline - Pending Mgmt Review&quot;))),
AND(ISPICKVAL( StageName , &quot;Pre-Qual FAIL&quot;),NOT(ISPICKVAL(PRIORVALUE(StageName),&quot;Pre-Qual FAIL&quot;))),
AND(ISPICKVAL( StageName , &quot;Rescinded by RapidAdvance&quot;),NOT(ISPICKVAL(PRIORVALUE(StageName),&quot;Rescinded by RapidAdvance&quot;))),
AND(ISPICKVAL( StageName , &quot;Signed Contract Rescinded by Merchant&quot;),NOT(ISPICKVAL(PRIORVALUE(StageName),&quot;Signed Contract Rescinded by Merchant&quot;))),
AND(ISPICKVAL( StageName , &quot;Unqualified&quot;),NOT(ISPICKVAL(PRIORVALUE(StageName),&quot;Unqualified&quot;))),
AND(ISPICKVAL( StageName , &quot;Unqualified- Will Reconsider Later&quot;),NOT(ISPICKVAL(PRIORVALUE(StageName),&quot;Unqualified- Will Reconsider Later&quot;))),
AND(ISPICKVAL( StageName , &quot;CALC Decline&quot;),NOT(ISPICKVAL(PRIORVALUE(StageName),&quot;CALC Decline&quot;)))
)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Manny - Deal has been updated</fullName>
        <active>false</active>
        <criteriaItems>
            <field>Opportunity.OwnerId</field>
            <operation>equals</operation>
            <value>manoug habibian</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.LastModifiedById</field>
            <operation>notContain</operation>
            <value>kohlhepp,manoug,khadysha,dodge,baker hill,kholfi</value>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Manual FICO 1</fullName>
        <actions>
            <name>Manual_FICO_1</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.Manual_Applicant_1_FICO_Score__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Manual_Applicant_1_FICO__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>New FRSA Has Been Received</fullName>
        <actions>
            <name>AmountReprice</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>NewDaystoRepay</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>PaybackAmountReprice</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>PercentPaybackReprice</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Triggered when New FRSA Has Been Received</description>
        <formula>ISCHANGED( New_FRSA_Has_Been_Received__c )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Notification%3A Decision and Processor Rep Assigned</fullName>
        <actions>
            <name>Decision_and_Processor_Rep_Assigned</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <booleanFilter>1 AND (2 OR 3)</booleanFilter>
        <criteriaItems>
            <field>Opportunity.Underwriting_Approval__c</field>
            <operation>contains</operation>
            <value>Approved</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Processing_Rep_Assigned__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Processing_Representative__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Offer Accepted</fullName>
        <actions>
            <name>Offer_Accepted</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <formula>(ISPICKVAL(StageName, &quot;C - Offer Accepted&quot;) || ISPICKVAL(StageName, &quot;C - Offer Accepted - Awaiting Compl Apps&quot;)) &amp;&amp;     $User.Username  = &quot;webapps@rapidadvance.com&quot;</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>OppPaymentStatus</fullName>
        <actions>
            <name>Opp_Payment_Status</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <formula>OR(OwnerId &lt;&gt; &quot;00550000000rsgHAAQ&quot;, OwnerId &lt;&gt; &quot;00530000000jbYtAAI&quot; ,OwnerId &lt;&gt; &quot;00570000001ApYJAA0&quot;, OwnerId &lt;&gt; &quot;00570000001uleYAAQ&quot;, OwnerId &lt;&gt; &quot;00570000001uu0SAAQ&quot;,
OwnerId &lt;&gt;  &quot;00570000001v4zQAAQ&quot;,
Owner.UserRoleId &lt;&gt; &quot;00E70000001b7oLEAQ&quot;) &amp;&amp; ( (Percent_Paid_Off__c&gt;=0.15&amp;&amp;PRIORVALUE(Percent_Paid_Off__c)&lt;0.15) || (Percent_Paid_Off__c&gt;=0.35&amp;&amp;PRIORVALUE(Percent_Paid_Off__c)&lt;0.35) || (Percent_Paid_Off__c&gt;=0.55&amp;&amp;PRIORVALUE(Percent_Paid_Off__c)&lt;0.55) || (Percent_Paid_Off__c&gt;=0.75&amp;&amp;PRIORVALUE(Percent_Paid_Off__c)&lt;0.75) || (Percent_Paid_Off__c&gt;=0.90&amp;&amp;PRIORVALUE(Percent_Paid_Off__c)&lt;0.90) ) &amp;&amp; ISNULL(Write_Off_Date__c) &amp;&amp; Advance_Payoff_Date__c=Date(1900,1,1) &amp;&amp; NOT(ISNULL(Funded_by_WC__c))</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>OppStageChange</fullName>
        <actions>
            <name>AccOppStageUpdate</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>isnew()|| ischanged( StageName )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Opportunity AE Update</fullName>
        <actions>
            <name>Opportunity_AE_Email_Update</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <description>Email</description>
        <formula>(( LastModifiedBy.UserRole.Name &lt;&gt; &quot;Administrator&quot; ) &amp;&amp; ( LastModifiedBy.UserRole.Name &lt;&gt; &quot;GTF Manager&quot; ) &amp;&amp;( LastModifiedBy.UserRole.Name &lt;&gt; &quot;Account Executive&quot; ) &amp;&amp;( LastModifiedBy.UserRole.Name &lt;&gt; &quot;Direct Account Executive&quot; ) &amp;&amp; NOT(contains(OwnerId, &quot;00570000001ApYJ&quot;)))  ||  ( (ispickval( Underwriting_Approval__c ,&quot;Rescinded by merchant&quot;)||ispickval(Underwriting_Approval__c,&quot;Rescinded by Processing&quot;)||ispickval(Underwriting_Approval__c,&quot;Rescinded by RapidAdvance&quot;)||ispickval(Underwriting_Approval__c,&quot;Rescinded by Underwriting&quot;)) &amp;&amp; (LastModifiedBy.UserRole.Name &lt;&gt; &quot;Administrator&quot;) &amp;&amp;( LastModifiedBy.UserRole.Name &lt;&gt; &quot;Senior Partner Account Executive&quot; )&amp;&amp;( LastModifiedBy.UserRole.Name &lt;&gt; &quot;Partner Account Executive&quot;)&amp;&amp;( LastModifiedBy.UserRole.Name &lt;&gt; &quot;Junior Partner Account Executive&quot;)&amp;&amp;( LastModifiedBy.UserRole.Name &lt;&gt; &quot;Senior Direct Account Executive&quot;)&amp;&amp;( LastModifiedBy.UserRole.Name &lt;&gt; &quot;Direct Account Executive&quot;)&amp;&amp;( LastModifiedBy.UserRole.Name &lt;&gt; &quot;Associate Direct Account Executive&quot;)&amp;&amp;( LastModifiedBy.UserRole.Name &lt;&gt; &quot;Direct Account Executive Coordinator&quot;)&amp;&amp;( LastModifiedBy.UserRole.Name &lt;&gt; &quot;Renewal Account Executive&quot;)&amp;&amp;( LastModifiedBy.UserRole.Name &lt;&gt; &quot;Rock Connections AE&quot;)
)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Opportunity AE Update2</fullName>
        <actions>
            <name>Opportunity_AE_Email_Update2</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <description>Email</description>
        <formula>(  ischanged(Approved_With_Conditions__c)  ||  ( ischanged( UW_Deal_Repriced_Need_New_FRSA__c)  &amp;&amp; NOT(isblank( UW_Deal_Repriced_Need_New_FRSA__c)) )  )  &amp;&amp;   (LastModifiedBy.UserRole.Name &lt;&gt; &quot;Administrator&quot;) &amp;&amp;( LastModifiedBy.UserRole.Name &lt;&gt; &quot;Account Executive&quot; )&amp;&amp;( LastModifiedBy.UserRole.Name &lt;&gt; &quot;Direct Account Executive&quot; ) &amp;&amp; ( LastModifiedBy.UserRole.Name &lt;&gt; &quot;GTF Manager&quot; )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Opportunity Level Update 1</fullName>
        <actions>
            <name>Working_Opp_Level</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>equals</operation>
            <value>NO Contact Made,Prospecting</value>
        </criteriaItems>
        <description>NO Contact Made,Prospecting</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Opportunity Level Update 10</fullName>
        <actions>
            <name>Opportunity_Level_Update_10</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>equals</operation>
            <value>Declined - Pending Mgmt Review,Declined,Auto Decline-To Processing</value>
        </criteriaItems>
        <description>Auto Decline-To Processing, Declined, Declined - Pending Mgmt Review</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Opportunity Level Update 10a</fullName>
        <actions>
            <name>Opportunity_Level_Update_10a</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>equals</operation>
            <value>Closed Lost,Unqualified,Do Not Call</value>
        </criteriaItems>
        <description>Unqualified, Do Not Call, Closed Lost</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Opportunity Level Update 11</fullName>
        <actions>
            <name>Opportunity_Level_Update_11</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>equals</operation>
            <value>Language Barrier,Not Interested,Rescinded by RapidAdvance,Signed Contract Rescinded by Merchant,Unqualified - Will Reconsider Later,Incomplete Contact or Company Info</value>
        </criteriaItems>
        <description>Language Barrier,Not Interested,Signed Contract Rescinded by Merchant,Rescinded by RapidAdvance,Unqualified - Will Reconsider Later,Incomplete Contact or Company Info</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Opportunity Level Update 2</fullName>
        <actions>
            <name>Opportunity_Level_Update_2</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>equals</operation>
            <value>Contact Made - Follow Up</value>
        </criteriaItems>
        <description>Contact Made - Follow Up</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Opportunity Level Update 2a</fullName>
        <actions>
            <name>Opportunity_Level_Update</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>equals</operation>
            <value>Pre-Qual in Progress</value>
        </criteriaItems>
        <description>Pre-Qual in Progress</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Opportunity Level Update 3</fullName>
        <actions>
            <name>Opportunity_Level_Update_3</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>equals</operation>
            <value>A - Awaiting CC Statements</value>
        </criteriaItems>
        <description>A - Awaiting CC Statements</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Opportunity Level Update 4</fullName>
        <actions>
            <name>Opportunity_Level_Update_4</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>equals</operation>
            <value>Statements Rec&apos;d Follow Up</value>
        </criteriaItems>
        <description>Statements Rec&apos;d Follow Up</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Opportunity Level Update 5</fullName>
        <actions>
            <name>Opportunity_Level_Update_5</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>equals</operation>
            <value>B - Quote Submitted</value>
        </criteriaItems>
        <description>B - Quote Submitted</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Opportunity Level Update 6</fullName>
        <actions>
            <name>Opportunity_Level_Update_6</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>equals</operation>
            <value>C - Offer Accepted - Awaiting Compl Apps</value>
        </criteriaItems>
        <description>C - Offer Accepted - Awaiting Compl Apps</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Opportunity Level Update 7</fullName>
        <actions>
            <name>Opportunity_Level_Update_7</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>equals</operation>
            <value>C-1 Contract Signed - More Info Needed</value>
        </criteriaItems>
        <description>C-1 Contract Signed - More Info Needed</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Opportunity Level Update 8</fullName>
        <actions>
            <name>Opportunity_Level_Update_8</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>equals</operation>
            <value>Submitted Deal</value>
        </criteriaItems>
        <description>Submitted Deal</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Opportunity Level Update 9</fullName>
        <actions>
            <name>Opportunity_Level_Update_9</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>equals</operation>
            <value>Auto Approve-To Processing,Forwarded To Processing,Approved - Pending Mgmnt Signature,Approved</value>
        </criteriaItems>
        <description>Approved, Approved - Pending Mgmnt Signature, Auto Approve-To Processing, Forwarded To Processing</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Opportunity Managment Sign Off</fullName>
        <actions>
            <name>Opportunity_Mgmt_Sign_Off_Email_Update</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <description>Email</description>
        <formula>ISCHANGED(  Management_Sign_Off__c )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Opportunity Partner Update</fullName>
        <actions>
            <name>Opportunity_Partner_Email_Update</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <description>Email</description>
        <formula>Campaign.Send_Update__c  &amp;&amp; (Renewal__c  = False || AND(Renewal__c  = True,Campaign.Send_Update_On_Renewals__c ))  &amp;&amp; NOT(ISPICKVAL(Underwriting_Approval__c , &quot;Pending management review returned to u/w&quot;))  &amp;&amp; NOT(ISPICKVAL(Underwriting_Approval__c , &quot;Rescinded by RapidAdvance&quot;))  &amp;&amp; NOT(ISPICKVAL( StageName , &quot;Rescinded by RapidAdvance&quot;))  &amp;&amp; (LastModifiedBy.UserRole.Name &lt;&gt; &quot;Administrator&quot;)  &amp;&amp;    (ISCHANGED(Description) 	|| ISCHANGED(Sales_Check_List_Notes__c) 	|| ISCHANGED(Processing_Notes__c) 	|| ISCHANGED(Third_Party_UW_Notes__c) 	|| ISCHANGED(StageName) 	|| ISCHANGED(Deal_Repriced_Need_New_FRSA__c) 	|| ISCHANGED(Approved_With_Conditions__c) 	|| ISCHANGED(Underwriting_Approval__c ))</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Overdue QC Decision</fullName>
        <actions>
            <name>Overdue_QC_Decision_Alert</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.Overdue_Trigger_Field__c</field>
            <operation>greaterThan</operation>
            <value>0.083</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Submit_to_UW_Processing__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.QC_Decision_Date__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.CreatedDate</field>
            <operation>greaterThan</operation>
            <value>3/1/2014</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Overdue UW Initial File Review</fullName>
        <actions>
            <name>Overdue_Initial_File_Review_Alert</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.Overdue_Trigger_Field__c</field>
            <operation>greaterThan</operation>
            <value>1</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Submit_to_UW_Processing__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Initial_File_Review2__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.CreatedDate</field>
            <operation>greaterThan</operation>
            <value>3/1/2014</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>PREMIUM MCA NOT SIGNED FOR PARTNER - AE Notice</fullName>
        <actions>
            <name>PREMIUM_MCA_NOT_SIGNED_FOR_PARTNER_AE_Alert</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <description>These stages need to trigger an email to the individual opportunity owner with the subject PREMIUM MCA NOT SIGNED FOR PARTNER.</description>
        <formula>Campaign.Active_Premium_MCA_Agreement__c = False &amp;&amp; text( Product__c ) = &quot;Premium MCA&quot; &amp;&amp; datevalue( CreatedDate ) &gt;  DATE(2014,08,01) &amp;&amp; text(Campaign.Type) = &quot;Partners&quot; &amp;&amp;  (text(StageName) = &quot;Contact Made – Follow Up&quot; || text(StageName) = &quot;Statements Rec’d Follow Up&quot; || text(StageName) = &quot;B – Quote Submitted&quot; || text(StageName) = &quot;C - Offer Accepted - Awaiting Compl Apps&quot; || text(StageName) = &quot;C-1 Contract Signed - More Info Needed&quot;)</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>PREMIUM MCA NOT SIGNED FOR PARTNER - BD Notice</fullName>
        <actions>
            <name>BD_Alert_Partner_has_not_signed_Premium_MCA</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <description>An email to go to BD@rapidadvance.com if we ever have a deal actually hit the approved stage and the Active Premium MCA Agreement is not checked.</description>
        <formula>LEFT( Campaign.Name , 3) &lt;&gt; &quot;NPC&quot; &amp;&amp;
Campaign.Active_Premium_MCA_Agreement__c = False &amp;&amp; datevalue( CreatedDate ) &gt;  DATE(2014,08,01) &amp;&amp; text( Product__c ) = &quot;Premium MCA&quot; &amp;&amp; text(Campaign.Type) = &quot;Partners&quot; &amp;&amp;  (text(StageName) = &quot;Approved&quot; || text(StageName) = &quot;C-1 Contract Signed - More Info Needed&quot; || text(StageName) = &quot;Submitted Deal&quot;)</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Partner Funding Notification</fullName>
        <actions>
            <name>Partner_Funding_Notification</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <description>Email</description>
        <formula>AND	( 	NOT	( 		ISNULL(Funded_by_WC__c) 		), 	Campaign.Send_Update__c,  	OR	( 		NOT(Renewal__c),  		AND( 			Renewal__c, 			Campaign.Send_Update_On_Renewals__c  			) 		) 	)</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Partner PreFund Call Notification</fullName>
        <actions>
            <name>Partner_Prefund_Notification</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <description>Email</description>
        <formula>AND	( 	 PrimaryCampaignSource__c = &quot;Merchant One Solutions, LLC dba TwinFold Capital&quot;, 	NOT	( 		ISNULL(Prefunding_Call_Completed_Date__c) 		), 	Campaign.Send_Update__c,  	OR	( 		NOT(Renewal__c),  		AND( 			Renewal__c, 			Campaign.Send_Update_On_Renewals__c  			) 		) 	)</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Pay Off Requested</fullName>
        <actions>
            <name>Pay_Off_Letter_Requested</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.Open_Account_Pay_Off_Letter_Requested__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <description>Email</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Payback Amount FU</fullName>
        <actions>
            <name>PaybackAmountReprice</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Opportunity.New_FRSA_Has_Been_Received__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Pending Mgmnt Review</fullName>
        <actions>
            <name>PendingMgmntReviewFU</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.Underwriting_Approval__c</field>
            <operation>equals</operation>
            <value>Pending Management Review</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Funded_by_WC__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Percent Complete</fullName>
        <actions>
            <name>Update_Percent_Complete</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Opportunity.Purchase_Amount__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Total_Repay_Amount__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Percent Payback FU</fullName>
        <actions>
            <name>PercentPaybackReprice</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Opportunity.New_FRSA_Has_Been_Received__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Populate Initial underwriting approval</fullName>
        <actions>
            <name>PopulateInitialunderwritingapproval</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.Underwriting_Approval__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <description>Using the initial Underwriting Approval value</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>PowerPay - Cards Field Update</fullName>
        <actions>
            <name>PowerPayCards</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Opportunity.Processor_Name__c</field>
            <operation>equals</operation>
            <value>Power Pay</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Pre-Qual 1hour since submission</fullName>
        <active>false</active>
        <criteriaItems>
            <field>Opportunity.Approval_Process_Entry_Time__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Pre_Qual_Decision_Date__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <description>Email</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>Pre_Qual_1hour_since_submission</name>
                <type>Alert</type>
            </actions>
            <offsetFromField>Opportunity.Approval_Process_Entry_Time__c</offsetFromField>
            <timeLength>1</timeLength>
            <workflowTimeTriggerUnit>Hours</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>Pre-Qual Data Entry Date</fullName>
        <actions>
            <name>PQ_Data_Entry_Date</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.Pre_Qual_Person__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Pre-Qual Decision Date Update</fullName>
        <actions>
            <name>Pre_Qual_Decision_Date_Update</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.Pre_Qual_Decision__c</field>
            <operation>notContain</operation>
            <value>Pending</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Pre_Qual_Decision__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Pre-Qual Declined</fullName>
        <actions>
            <name>Pre_Qualification_FAIL_Email_Alert</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>AccOppStage_PQF</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Pre_Qual_Declined</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.Pre_Qual_Decision__c</field>
            <operation>equals</operation>
            <value>FAIL</value>
        </criteriaItems>
        <description>Email</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Pre-Qual Initial Submission</fullName>
        <actions>
            <name>Pre_Qual_Entry_Time_Update</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Pre_Qual_Type_Updated</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>equals</operation>
            <value>Pre-Qual in Progress</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Pre-Qual Initial Submission Renewal</fullName>
        <actions>
            <name>Pre_Qual_Type_Updated_Renew</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>equals</operation>
            <value>Pre-Qual in Progress</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Renewal__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Pre-Qual PASSED</fullName>
        <actions>
            <name>Pre_Qualification_PASS_Email_Alert</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>AccOppStage_PQP</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Stage_Pre_Qual_PASSED</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.Pre_Qual_Decision__c</field>
            <operation>equals</operation>
            <value>PASS</value>
        </criteriaItems>
        <description>Email</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Pre-Qual Pass Credit Only</fullName>
        <actions>
            <name>Pre_Qualification_PASS_Credit_Only_Email_Alert</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>AccOppStage_PQP_Credit_Only</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Stage_Pre_Qual_Pass_Credit_Only</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <booleanFilter>1</booleanFilter>
        <criteriaItems>
            <field>Opportunity.Pre_Qual_Decision__c</field>
            <operation>contains</operation>
            <value>PASS CREDIT</value>
        </criteriaItems>
        <description>Opportunity Update and Email</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Pre-Qual Pending Date Update</fullName>
        <actions>
            <name>Pre_Qual_Pending_Date_Update</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.Pre_Qual_Decision__c</field>
            <operation>equals</operation>
            <value>Pending Management Review</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Pre-Qual Pending Return to QC Email Alert</fullName>
        <actions>
            <name>Pre_Qual_Pending_Return_to_QC</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.Pre_Qual_Decision__c</field>
            <operation>equals</operation>
            <value>Pending Management Review Returned to QC</value>
        </criteriaItems>
        <description>Email</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Pre-Qual Unqualified</fullName>
        <actions>
            <name>Pre_Qualification_FAIL_Email_Alert</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>AccOppStage_Unqualified</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Pre_Qual_Unqualified</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.Pre_Qual_Decision__c</field>
            <operation>equals</operation>
            <value>Unqualified Not Willing to Reconsider</value>
        </criteriaItems>
        <description>Email</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Pre-Qual Unqualified Will Reconsider</fullName>
        <actions>
            <name>Pre_Qualification_FAIL_Email_Alert</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>AccOppStage_UnqReconsider</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Pre_Qual_Unqualified_Will_Reconsider</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.Pre_Qual_Decision__c</field>
            <operation>equals</operation>
            <value>Unqualified Willing to Reconsider</value>
        </criteriaItems>
        <description>Email</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Pre-Qual Update</fullName>
        <actions>
            <name>Change_Opportuniy_Record_Type</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>equals</operation>
            <value>Pre-Qual in Progress</value>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>PreFund Completed</fullName>
        <actions>
            <name>PreFund_Completed</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <description>Email</description>
        <formula>NOT(ISNULL(Prefunding_Call_Completed_Date__c) )</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>ProMac Approved or Auto Approved</fullName>
        <actions>
            <name>ProMac_Deal_Approved</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Opportunity.Underwriting_Approval__c</field>
            <operation>equals</operation>
            <value>Approved by Credit Committee,Auto Approved,Approved by Credit Committee with conditions,Approved Re-price,Auto Approved Re-Price,Approved</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Campaign_name__c</field>
            <operation>startsWith</operation>
            <value>Promac Medical,Promac – Non Medical New,Promac – Non Medical Renewals</value>
        </criteriaItems>
        <description>Email</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Processing On Hold - Start</fullName>
        <actions>
            <name>Processing_On_Hold_Start_Date</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.Processing_On_Hold__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <description>When Processor places the deal in the On Hold status (deal will be returned in a query for “on hold” deals), a date/time will be recorded</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Processing On Hold - Stop</fullName>
        <actions>
            <name>Processing_On_Hold_Stop_Date</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Processor removes the deal from On Hold status (On Hold Stop Timestamp is recorded)</description>
        <formula>ischanged( Processing_On_Hold__c ) &amp;&amp; 
Processing_On_Hold__c = FALSE</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Processor Assigned DateStamp</fullName>
        <actions>
            <name>Processing_Rep_Stamp</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>ischanged(Processing_Representative__c ) &amp;&amp;
not (isblank (text (Processing_Representative__c)))</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>QC Calculate Due Dates Update</fullName>
        <actions>
            <name>QC_Calculate_Due_Dates_Update</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.QC_Person__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>QC Decision - Auto Decline</fullName>
        <actions>
            <name>Decision_Date_timestamp</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.QC_Decision__c</field>
            <operation>equals</operation>
            <value>Auto Declined</value>
        </criteriaItems>
        <description>Set the Decision Date when the QC Decision is set to Auto-Decline</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>QC Decision Date</fullName>
        <actions>
            <name>QCDataEntryDate</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>ISCHANGED( QC_Decision_Date__c ) &amp;&amp; ISNULL( Data_Entry_Date__c )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>QC StartTime</fullName>
        <actions>
            <name>SetStartTimeFilled</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>UPdate_QCdatetime</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Opportunity.QC_User__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <description>Will automatically populate the QC Date Time field, the moment any QC member takes ownership of an opportunity.</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>QC Time Check</fullName>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.QC_StartDate_filled__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.QC_Decision__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>ResetQCP3</name>
                <type>FieldUpdate</type>
            </actions>
            <actions>
                <name>ResetStartDateFilled</name>
                <type>FieldUpdate</type>
            </actions>
            <actions>
                <name>RestStrtDate</name>
                <type>FieldUpdate</type>
            </actions>
            <offsetFromField>Opportunity.QC_flag__c</offsetFromField>
            <timeLength>1</timeLength>
            <workflowTimeTriggerUnit>Hours</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>QC%3A Sandra Galdamez Deals</fullName>
        <actions>
            <name>QC_Sandra_Galdamez</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <formula>NOT(ISBLANK( Submit_to_UW_Processing__c )) &amp;&amp; ISPICKVAL(QC_Person__c,&quot;Sandra Galdamez&quot;) &amp;&amp; ISBLANK( Data_Entry_Date__c ) &amp;&amp; OR(ISPICKVAL(StageName,&quot;C-1 Contract Signed - More Info Needed&quot;),ISPICKVAL(StageName,&quot;Submitted Deal&quot;)) &amp;&amp; ISCHANGED(StageName)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>QC%3A Theresa Dupree Deals</fullName>
        <actions>
            <name>QC_Theresa_Dupree_Deals</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <formula>NOT(ISBLANK( Submit_to_UW_Processing__c )) &amp;&amp; ISPICKVAL(QC_Person__c,&quot;Theresa Dupree&quot;) &amp;&amp; ISBLANK( Data_Entry_Date__c ) &amp;&amp; OR(ISPICKVAL(StageName,&quot;C-1 Contract Signed - More Info Needed&quot;),ISPICKVAL(StageName,&quot;Submitted Deal&quot;)) &amp;&amp; ISCHANGED(StageName)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Reduce Slit Status</fullName>
        <actions>
            <name>SplitReductionNotificationInternal</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.Date_Split_Changed__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <description>Email</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Regular Opportunity Update</fullName>
        <actions>
            <name>Regular_Opportunity</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>notEqual</operation>
            <value>Pre-Qual in Progress</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.RecordTypeId</field>
            <operation>equals</operation>
            <value>New Opportunity,Old Record Type,Pre Qual Record Type</value>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Renewal Eligibility Update</fullName>
        <actions>
            <name>Renewal_Eligibility_Update</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <description>Email</description>
        <formula>Percent_Paid_Off__c &gt;40 &amp;&amp; ispickval( StageName,&quot;Closed Won&quot;)&amp;&amp; not(isblank( Funded_by_WC__c )) &amp;&amp; ischanged( Renewal_Eligibility__c )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Reprice Amount FU</fullName>
        <actions>
            <name>AmountReprice</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>PaybackAmountReprice</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>PercentPaybackReprice</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Opportunity.New_FRSA_Has_Been_Received__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Rescinded By RA</fullName>
        <actions>
            <name>RescindedDealRA</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.Underwriting_Approval__c</field>
            <operation>equals</operation>
            <value>Rescinded by Processing,Rescinded by Underwriting,Rescinded by RapidAdvance</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Rescinded by Merchant</fullName>
        <actions>
            <name>RescindedByMerchants</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.Underwriting_Approval__c</field>
            <operation>equals</operation>
            <value>Rescinded by merchant</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Review Funding Approval</fullName>
        <actions>
            <name>Review_for_funding_approval</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.Submitted_For_Funding_Approval__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <description>Email</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Review Funding Approval - Merchant One</fullName>
        <actions>
            <name>Review_for_funding_approval_Merchant_One</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <booleanFilter>1 AND (2 OR 3)</booleanFilter>
        <criteriaItems>
            <field>Opportunity.Submitted_For_Funding_Approval__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.PrimaryCampaignSource__c</field>
            <operation>equals</operation>
            <value>Merchant One Solutions,LLC dba TwinFold Capital</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.CampaignId</field>
            <operation>equals</operation>
            <value>70170000000KgvP,70170000000KgvPAAS</value>
        </criteriaItems>
        <description>Email</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Review Funding Approval Exception</fullName>
        <actions>
            <name>Review_for_funding_approval_exception</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.Submitted_For_Funding_Approval_Exception__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <description>Email</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Risk Employee Review Date</fullName>
        <actions>
            <name>Risk_Employee_Review_Date</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>ischanged(  Risk_Employee__c  ) &amp;&amp; 
not (isblank(text(Risk_Employee__c) ) )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Risk Error Issues</fullName>
        <actions>
            <name>Send_Risk_Alert</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Uncheck_Send_Risk_Alert</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.Send_Risk_Alert__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <description>Send an email indicating Risk Error Issues were encountered when the &quot;Send Risk Alert&quot; checkbox is checked</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>SBS Funding Notification</fullName>
        <actions>
            <name>SBS_Funding</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <description>Email</description>
        <formula>ISPICKVAL(StageName,&quot;Closed Won&quot;) &amp;&amp; PrimaryCampaignSource__c = &quot;IPayment-Secured Bankcard Services&quot; &amp;&amp; not(isblank(Funded_by_WC__c)) &amp;&amp; ischanged(Funded_by_WC__c)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Send CS Survey</fullName>
        <actions>
            <name>CustomerSatisfactionSurveySent</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Opportunity.Funded_by_WC__c</field>
            <operation>equals</operation>
            <value>TODAY</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Email_Address__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <description>A Customer Sat Survey is sent after deal is funded.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Set DS Start Date%2FTime</fullName>
        <actions>
            <name>Timestamp_DS_Start_Date_Time</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.DS_Person__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <description>Timestamp for when a DS person is assigned</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Signed Contract Received</fullName>
        <actions>
            <name>SignedContractReceived</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.Signed_Contract_Received__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <description>Email</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Stage Change to Closed Won</fullName>
        <actions>
            <name>StageChangetoClosedWon</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Opportunity.Funded_by_WC__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Submit to SA Stamp</fullName>
        <actions>
            <name>Submit_to_SA_DTS</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>equals</operation>
            <value>Submitted Deal</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Submit_to_Sales_Assistant__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Submit to UW Stamp</fullName>
        <actions>
            <name>Submit_to_UW_DTS</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>equals</operation>
            <value>Submitted Deal</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Submit_to_UW_Processing__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Submitted Deal %28Renewal%29 Stage Update</fullName>
        <actions>
            <name>SubmittedtoQCDealComplt</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.Submit_to_Sales_Assistant__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.X3_Minute_Application__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.MRA_3_Minute_are_complete__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Calculator__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Submit_to_UW_Processing__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <description>When deal (renewal) is submitted to QC the stage will go to &quot;Submitted Deal&quot;</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Submitted Deal Stage Update</fullName>
        <actions>
            <name>SubmittedtoQCDealComplt</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <booleanFilter>1 AND 2 AND 3 AND 4 AND 5 and 6 and 7 and 8 and 9 and 10</booleanFilter>
        <criteriaItems>
            <field>Opportunity.Submit_to_Sales_Assistant__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.X3_Minute_Application__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Legible_4_months_processing_statements__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Bank_Statements__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Voided_Check_Received__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Calculator__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.MRA_3_Minute_are_complete__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Renewal__c</field>
            <operation>equals</operation>
            <value>False</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Legible_Photo_Identification_Received__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Submit_to_UW_Processing__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <description>When deal is submitted to QC the stage will go to &quot;Submitted Deal&quot;</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Submitted for Funding</fullName>
        <actions>
            <name>Merchant_One_Submitted_for_Funding</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <formula>AND	(  PrimaryCampaignSource__c = &quot;Merchant One Solutions, LLC dba TwinFold Capital&quot;, NOT	(  ISNULL( Submitted_For_Funding_Approval__c )  ),  Campaign.Send_Update__c,  OR	(  NOT(Renewal__c),  AND(  Renewal__c,  Campaign.Send_Update_On_Renewals__c  )  )  )</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Submitted to UW</fullName>
        <actions>
            <name>Merchant_One_Submitted_to_Underwriting</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <description>Email</description>
        <formula>AND(NOT(ISNULL( Submit_to_UW_Processing__c )),PrimaryCampaignSource__c = &quot;Merchant One Solutions, LLC dba TwinFold Capital&quot;)</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Syndication Amount Entered</fullName>
        <actions>
            <name>Syndication_Amount_Ent</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.Syndication_Amount__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>TEST Email Notification Rule</fullName>
        <active>false</active>
        <criteriaItems>
            <field>Opportunity.CampaignId</field>
            <operation>contains</operation>
            <value>Email</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.LastModifiedById</field>
            <operation>notContain</operation>
            <value>baker hill,account team,kholfi</value>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>UCC Legal Name Update</fullName>
        <actions>
            <name>UCCDebtorLegalNameRule</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <formula>UCC_Debtor_Legal_Name__c  &lt;&gt;  Legal_Name__c</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>UW Assigned</fullName>
        <actions>
            <name>UW_Assigned</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <formula>not(isnull( UW_Assigned_Date_Stamp__c ))</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Uncheck Existing Competitor Advance</fullName>
        <actions>
            <name>Update_Existing_Competitor_Advance</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>Not(isnull( Paid_Off_Letter_Rec_d__c ))</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Underwriting Approval Alert - Approved %3D%3E Declined</fullName>
        <actions>
            <name>ApprovedDealHasNowBeenDECLINEDInternal</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <description>Email When the underwriter approval of a deal changes from (Approved or Auto Approved) to (Declined or Auto Declined), processing receives email notification.</description>
        <formula>AND(OR(ISPICKVAL(Underwriting_Approval__c, &quot;Declined&quot;),ISPICKVAL(Underwriting_Approval__c, &quot;Auto Declined&quot;)), OR(ISPICKVAL(PRIORVALUE(Underwriting_Approval__c),&quot;Approved&quot;),ISPICKVAL(PRIORVALUE(Underwriting_Approval__c),&quot;Auto Approved&quot;)))</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Underwriting Approval Alert - Approved %3D%3E Declined new</fullName>
        <actions>
            <name>Approved_Deal_Has_Now_Been_DECLINED_Internal</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <description>When the underwriter approval of a deal changes from (Approved or Auto Approved) to (Declined or Auto Declined), processing receives email notification.</description>
        <formula>AND(OR(ISPICKVAL(Underwriting_Approval__c, &quot;Declined&quot;),ISPICKVAL(Underwriting_Approval__c, &quot;Auto Declined&quot;)), OR(ISPICKVAL(PRIORVALUE(Underwriting_Approval__c),&quot;Approved&quot;),ISPICKVAL(PRIORVALUE(Underwriting_Approval__c),&quot;Auto Approved&quot;)))</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Underwriting Approval Alert - Declined %3D%3E Approved</fullName>
        <actions>
            <name>UWApprovalStatusChangeDeclinedtoApproved</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <description>Email When the underwriter approval of a deal changes from (Declined or Auto Declined) to (Approved or Auto Approved), Monica receives enail notification.</description>
        <formula>AND(OR(ISPICKVAL(Underwriting_Approval__c, &quot;Approved&quot;),ISPICKVAL(Underwriting_Approval__c, &quot;Auto Approved&quot;)), OR(ISPICKVAL(PRIORVALUE(Underwriting_Approval__c),&quot;Declined&quot;),ISPICKVAL(PRIORVALUE(Underwriting_Approval__c),&quot;Auto Declined&quot;)))</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Underwriting Approval Alert - Rescinded %3D%3E Approved</fullName>
        <actions>
            <name>RescindedApprovedAlert</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <description>Email When the underwriter approval of a deal changes from rescinded by (UW, processing, merchant, RapidAdvance) to approved,  Monica receives enail notification.</description>
        <formula>AND(OR(ISPICKVAL(Underwriting_Approval__c, &quot;Approved&quot;), ISPICKVAL(Underwriting_Approval__c, &quot;Auto Approved&quot;)),  OR(ISPICKVAL(PRIORVALUE(Underwriting_Approval__c),&quot;Rescinded by merchant&quot;), ISPICKVAL(PRIORVALUE(Underwriting_Approval__c),&quot;Rescinded by RapidAdvance&quot;), ISPICKVAL(PRIORVALUE(Underwriting_Approval__c),&quot;Rescinded by Processing&quot;), ISPICKVAL(PRIORVALUE(Underwriting_Approval__c),&quot;Rescinded by Underwriting&quot;)))</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Unqualified</fullName>
        <actions>
            <name>AccOppStage_Unqualified</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Unqualified</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.Underwriting_Approval__c</field>
            <operation>equals</operation>
            <value>Unqualified - Will Not Reconsider</value>
        </criteriaItems>
        <description>When underwriting marks a deal &quot;Unqualified&quot; the merchant, AE, and the partner (if applicable) gets an email notification.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Unqualified - will consider later</fullName>
        <actions>
            <name>AccOppStage_UnqReconsider</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Unqualifiedwillconsiderlater</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.Underwriting_Approval__c</field>
            <operation>equals</operation>
            <value>Unqualified - Will Reconsider in the Future,Unqualified - Comp. Pay Off too High - Reconsider Later</value>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Unqualified Opportunity Rule</fullName>
        <actions>
            <name>UnqualifiedNotificationEmail</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.Unqualified_Reason__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Underwriting_Approval__c</field>
            <operation>contains</operation>
            <value>Unqualified</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Decision_Date__c</field>
            <operation>equals</operation>
            <value>TODAY</value>
        </criteriaItems>
        <description>Email When an opportunity is marked unqualified, the AE gets an auto-email.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update Initial File Review Complete Date</fullName>
        <actions>
            <name>Update_Initial_File_Review_Complete_Date</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.Initial_File_Review_Complete__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update Partner Emails</fullName>
        <actions>
            <name>Update_Partner_Email_1</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_Partner_Email_2</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_Partner_Email_3</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_Partner_Email_6</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>TRUE</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Update Renewal Number</fullName>
        <actions>
            <name>Renewal_Number</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>notEqual</operation>
            <value>Closed Won</value>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Update Status To Closed Rule 10</fullName>
        <actions>
            <name>Update_Status_To_Closed_Rule_10</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <formula>AND( ISPICKVAL(Status__c , &quot;Funding In Progress&quot;) ,  	ISPICKVAL(StageName,  &apos;Closed Won&apos;))</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Update Status To File In Review Rule 3</fullName>
        <actions>
            <name>Update_Status_To_File_In_Review_Rule_3</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <formula>AND( ISPICKVAL(Status__c , &quot;QC In Progress&quot;) ,  ISCHANGED(Data_Entry_Date__c),  ISNULL(PRIORVALUE(Data_Entry_Date__c) ) )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Update Status To No Offer Available Rule 4b</fullName>
        <actions>
            <name>Update_Status_To_No_Offer_Available_Rule</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <formula>AND( ISPICKVAL(Status__c , &quot;File Review&quot;) , OR(ISPICKVAL(Underwriting_Approval__c, &quot;Declined&quot;), ISPICKVAL(Underwriting_Approval__c, &quot;Declined by Credit Committee&quot;), ISPICKVAL(Underwriting_Approval__c, &quot;Unqualified - Comp. Pay Off too High - Reconsider Later&quot;), 	ISPICKVAL(Underwriting_Approval__c, &quot;Unqualified - Will Not Reconsider&quot;), 	ISPICKVAL(Underwriting_Approval__c, &quot;Unqualified - Will Reconsider in the Future&quot;), 	ISPICKVAL(Underwriting_Approval__c, &quot;Rescinded by merchant&quot;), 	ISPICKVAL(Underwriting_Approval__c, &quot;Rescinded by Processing&quot;), 	ISPICKVAL(Underwriting_Approval__c, &quot;Rescinded by RapidAdvance&quot;), 	ISPICKVAL(Underwriting_Approval__c, &quot;Rescinded by Underwriting&quot;) ))</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Update Status To Process Contract Rule 8</fullName>
        <actions>
            <name>Update_Status_To_Process_Contract_Rule_8</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <description>Changing from &quot;Contract Available&quot; to &quot;Processing Contract&quot;
If the signed contract is received, the Application/Opportunity should changed to be &quot;Processing Contract&quot;</description>
        <formula>AND( ISPICKVAL(Status__c , &quot;Contract Available&quot;) ,  !ISNULL( Signed_Contract_Received__c ) )</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update Status To QC_InProgress</fullName>
        <actions>
            <name>Update_Status_To_QC_InProgress</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <formula>AND( ISCHANGED(QC_Person__c), ISPICKVAL(PRIORVALUE(QC_Person__c) , &apos;&apos;))</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Update Status To Qualified Offer Rule 4a</fullName>
        <actions>
            <name>Update_Status_To_Qualified_Offer_Rule_4a</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <formula>AND( ISPICKVAL(Status__c , &quot;File Review&quot;) , OR(ISPICKVAL(Underwriting_Approval__c, &quot;Approved&quot;), ISPICKVAL(Underwriting_Approval__c, &quot;Approved by Credit Committee&quot;), ISPICKVAL(Underwriting_Approval__c, &quot;Approved by Credit Committee with conditions&quot;)))</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Update Status To Submitted For Funding Approval Rule 9</fullName>
        <actions>
            <name>Update_Status_To_Submitted_For_Funding_A</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <formula>AND( ISPICKVAL(Status__c , &quot;Processing&quot;) ,  	!ISNULL( Processing_Rep_Assigned__c ), 	!ISPICKVAL(Product__c, &quot;&quot;))</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>z-New FRSA Has Been Received new</fullName>
        <actions>
            <name>ReprisedFRSAHasBeenSignedbyMerchant1</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Amount_Reprise</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>New_Days_to_Repay</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Payback_Amount_Reprice</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Percent_Payback_Reprice</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <formula>ISCHANGED( New_FRSA_Has_Been_Received__c )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <tasks>
        <fullName>AutoDecisioned</fullName>
        <assignedTo>Processors</assignedTo>
        <assignedToType>role</assignedToType>
        <description>Deal has been auto decisioned</description>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>true</notifyAssignee>
        <priority>High</priority>
        <protected>false</protected>
        <status>In Progress</status>
        <subject>Auto Decisioned</subject>
    </tasks>
    <tasks>
        <fullName>BrendanDealmaybereadyforrenewal</fullName>
        <assignedTo>bmcbride@rapidadvance.com</assignedTo>
        <assignedToType>user</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>true</notifyAssignee>
        <priority>High</priority>
        <protected>false</protected>
        <status>Not Started</status>
        <subject>Brendan - Deal may be ready for renewal</subject>
    </tasks>
    <tasks>
        <fullName>DealRescindedMissingInformation</fullName>
        <assignedToType>owner</assignedToType>
        <description>Deal is being rescinded because they are not submitting the required information.  Please call merchant.</description>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>true</notifyAssignee>
        <priority>High</priority>
        <protected>false</protected>
        <status>In Progress</status>
        <subject>Deal Rescinded - Missing Information</subject>
    </tasks>
    <tasks>
        <fullName>Dealisreadytobeconfirmed</fullName>
        <assignedTo>alsims@rapidadvance.com</assignedTo>
        <assignedToType>user</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>true</notifyAssignee>
        <priority>High</priority>
        <protected>false</protected>
        <status>Not Started</status>
        <subject>Deal is ready to be confirmed</subject>
    </tasks>
    <tasks>
        <fullName>Dealisreadytoconfirm</fullName>
        <assignedTo>alsims@rapidadvance.com</assignedTo>
        <assignedToType>user</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>true</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Not Started</status>
        <subject>Deal is ready to confirm</subject>
    </tasks>
    <tasks>
        <fullName>DevinDealmaybereadyforrenewal</fullName>
        <assignedTo>ddelany@rapidadvance.com</assignedTo>
        <assignedToType>user</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>true</notifyAssignee>
        <priority>High</priority>
        <protected>false</protected>
        <status>Not Started</status>
        <subject>Devin- Deal may be ready for renewal</subject>
    </tasks>
    <tasks>
        <fullName>PlaceFollowUpCall</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>1</dueDateOffset>
        <notifyAssignee>true</notifyAssignee>
        <priority>High</priority>
        <protected>false</protected>
        <status>Not Started</status>
        <subject>Place Follow Up Call</subject>
    </tasks>
    <tasks>
        <fullName>RyanDealmaybereadyforrenewal</fullName>
        <assignedTo>rdearborn@rapidadvance.com</assignedTo>
        <assignedToType>user</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>true</notifyAssignee>
        <priority>High</priority>
        <protected>false</protected>
        <status>Not Started</status>
        <subject>Ryan - Deal may be ready for renewal</subject>
    </tasks>
    <tasks>
        <fullName>SiteInspectionHasALERT</fullName>
        <assignedTo>eharry@rapidadvance.com</assignedTo>
        <assignedToType>user</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>true</notifyAssignee>
        <priority>High</priority>
        <protected>false</protected>
        <status>In Progress</status>
        <subject>Site Inspection Has ALERT</subject>
    </tasks>
    <tasks>
        <fullName>X3_Month_Approved</fullName>
        <assignedTo>equintanilla@rapidadvance.com</assignedTo>
        <assignedToType>user</assignedToType>
        <description>test</description>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>true</notifyAssignee>
        <priority>High</priority>
        <protected>false</protected>
        <status>In Progress</status>
        <subject>3 Month Approved</subject>
    </tasks>
</Workflow>
