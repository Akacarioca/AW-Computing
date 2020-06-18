<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Lead_Owner_must_be_notified</fullName>
        <ccEmails>carlos@siqueira.org</ccEmails>
        <description>Lead Owner must be notified</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>sample_templates/ContactFollowUpSAMPLE</template>
    </alerts>
    <fieldUpdates>
        <fullName>Change_Lead_Onwer</fullName>
        <field>OwnerId</field>
        <lookupValue>msmith@aw81503.com</lookupValue>
        <lookupValueType>User</lookupValueType>
        <name>Change Lead Onwer</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <rules>
        <fullName>Module 10 Project</fullName>
        <active>true</active>
        <criteriaItems>
            <field>Lead.IsConverted</field>
            <operation>equals</operation>
            <value>False</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>Lead_Owner_must_be_notified</name>
                <type>Alert</type>
            </actions>
            <actions>
                <name>Change_Lead_Onwer</name>
                <type>FieldUpdate</type>
            </actions>
            <offsetFromField>Lead.Likely_Decision_Date__c</offsetFromField>
            <timeLength>0</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
</Workflow>
