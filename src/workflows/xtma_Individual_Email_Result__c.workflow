<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Email_Opened_Please_Follow_Up</fullName>
        <description>Email Opened - Please Follow Up</description>
        <protected>false</protected>
        <recipients>
            <type>campaignMemberDerivedOwner</type>
        </recipients>
        <recipients>
            <recipient>equintanilla@rapidadvance.com</recipient>
            <type>user</type>
        </recipients>
        <senderAddress>services@rapidadvance.com</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>All_Templates/Opened_Marketing_Email</template>
    </alerts>
    <rules>
        <fullName>IER - Opened</fullName>
        <actions>
            <name>Email_Opened_Please_Follow_Up</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>xtma_Individual_Email_Result__c.Opened__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <tasks>
        <fullName>Email_Opened_Follow_Up</fullName>
        <assignedTo>genadmin@rapidadvance.com</assignedTo>
        <assignedToType>user</assignedToType>
        <description>Merchant has showed some interest, please follow up.

Sheila</description>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>true</notifyAssignee>
        <offsetFromField>xtma_Individual_Email_Result__c.Date_Time_Opened__c</offsetFromField>
        <priority>High</priority>
        <protected>false</protected>
        <status>In Progress</status>
        <subject>Email Opened - Follow Up</subject>
    </tasks>
</Workflow>
