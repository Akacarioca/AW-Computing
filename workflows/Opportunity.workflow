<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Email_Alert_for_the_Opportunity_Owner</fullName>
        <description>Email Alert for the Opportunity Owner</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/SALES_NewOpportunity_Follow_UP</template>
    </alerts>
    <fieldUpdates>
        <fullName>Name</fullName>
        <field>Name</field>
        <formula>Account.Name &amp; Name</formula>
        <name>Name</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>AccountOpportunityName</fullName>
        <actions>
            <name>Name</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.Amount</field>
            <operation>greaterThan</operation>
            <value>USD 0</value>
        </criteriaItems>
        <triggerType>onCreateOnly</triggerType>
    </rules>
</Workflow>
