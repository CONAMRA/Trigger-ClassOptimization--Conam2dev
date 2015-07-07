<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Campaign_Added_Decline_Program</fullName>
        <description>Campaign Added Decline Program</description>
        <protected>false</protected>
        <recipients>
            <recipient>BusinessDevelopment</recipient>
            <type>role</type>
        </recipients>
        <recipients>
            <recipient>SalesAssistants</recipient>
            <type>role</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Auto_E_Mail_Templates/Campaign_Added_Decline_Program</template>
    </alerts>
    <alerts>
        <fullName>Campaign_Removed_Decline_Program</fullName>
        <description>Campaign Removed Decline Program</description>
        <protected>false</protected>
        <recipients>
            <recipient>BusinessDevelopment</recipient>
            <type>role</type>
        </recipients>
        <recipients>
            <recipient>SalesAssistants</recipient>
            <type>role</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Auto_E_Mail_Templates/Campaign_Removed_Decline_Program</template>
    </alerts>
    <alerts>
        <fullName>First_Funded_Deal</fullName>
        <description>First Funded Deal</description>
        <protected>false</protected>
        <recipients>
            <recipient>sdaumit@rapidadvance.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Auto_E_Mail_Templates/First_Funded_Deal_Partner</template>
    </alerts>
    <alerts>
        <fullName>NewPartnerSignedCampaignCreated</fullName>
        <description>New Partner Signed. Campaign Created.</description>
        <protected>false</protected>
        <recipients>
            <recipient>tsitzler@rapidadvance.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>All_Templates/NewPartnerCampaignCreated</template>
    </alerts>
    <fieldUpdates>
        <fullName>Send_BD_Notifications_On</fullName>
        <field>BD_Send_Notifications__c</field>
        <literalValue>1</literalValue>
        <name>Send BD Notifications = On</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>Campaign Added Decline Program</fullName>
        <actions>
            <name>Campaign_Added_Decline_Program</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <formula>(ISNEW()
||
ISCHANGED( Decline_Program__c ))
&amp;&amp;
Decline_Program__c</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Campaign Removed Decline Program</fullName>
        <actions>
            <name>Campaign_Removed_Decline_Program</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <formula>ISCHANGED( Decline_Program__c )
&amp;&amp;
NOT( Decline_Program__c )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>New Partner Campaign%21</fullName>
        <actions>
            <name>NewPartnerSignedCampaignCreated</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <description>Ashley created a new partner campaign.  Signed contract was received from partner.</description>
        <formula>ISNULL( TEXT(Type) ) || TEXT(Type) = &quot;Partners&quot;</formula>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>Send Notification to BD Override</fullName>
        <actions>
            <name>Send_BD_Notifications_On</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>Owner.Alias = &quot;gmack&quot; || 
Owner.Alias = &quot;rflei&quot; || 
Additional_Owner__r.Alias=&quot;gmack&quot; || 
Additional_Owner__r.Alias=&quot;rflei&quot;</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
</Workflow>
