<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Email_Alert_Notify_VP_about_cases_for_large_accounts</fullName>
        <description>Email Alert-Notify VP about cases for large accounts.</description>
        <protected>false</protected>
        <recipients>
            <recipient>VP_of_Services</recipient>
            <type>role</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/SUPPORT_New_case_for_large_account</template>
    </alerts>
    <alerts>
        <fullName>Email_Alert_Notify_VP_about_cases_for_small_accounts</fullName>
        <ccEmails>carlos@siqueira.org</ccEmails>
        <description>Email Alert-Notify VP about cases for small accounts.</description>
        <protected>false</protected>
        <recipients>
            <recipient>Case Team Role 1</recipient>
            <type>caseTeam</type>
        </recipients>
        <recipients>
            <recipient>VP_of_Services</recipient>
            <type>role</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/SUPPORT_New_case_for_large_account</template>
    </alerts>
    <alerts>
        <fullName>New_Case_Email_Alert</fullName>
        <description>New Case Email Alert</description>
        <protected>false</protected>
        <recipients>
            <recipient>Case Team Role 1</recipient>
            <type>caseTeam</type>
        </recipients>
        <recipients>
            <recipient>Case Team Role 2</recipient>
            <type>caseTeam</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/SUPPORT_New_case_for_large_account</template>
    </alerts>
    <rules>
        <fullName>Case Team Rule</fullName>
        <actions>
            <name>New_Case_Email_Alert</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Case.Status</field>
            <operation>equals</operation>
            <value>New</value>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>New Case at Large Account Notification</fullName>
        <actions>
            <name>Email_Alert_Notify_VP_about_cases_for_large_accounts</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <booleanFilter>1 OR 2</booleanFilter>
        <criteriaItems>
            <field>Account.AnnualRevenue</field>
            <operation>greaterThan</operation>
            <value>&quot;USD 20,000,000&quot;</value>
        </criteriaItems>
        <criteriaItems>
            <field>Account.NumberOfEmployees</field>
            <operation>greaterThan</operation>
            <value>5000</value>
        </criteriaItems>
        <description>Notify Services VP regarding new cases for large accounts and assign follow up to Account Owner.</description>
        <triggerType>onCreateOnly</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>Follow_up_with_customer_on_case_resolution</name>
                <type>Task</type>
            </actions>
            <timeLength>1</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>New Case at Small Account Notification</fullName>
        <actions>
            <name>Email_Alert_Notify_VP_about_cases_for_small_accounts</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <booleanFilter>1 OR 2</booleanFilter>
        <criteriaItems>
            <field>Account.AnnualRevenue</field>
            <operation>lessOrEqual</operation>
            <value>&quot;USD 5,000,000&quot;</value>
        </criteriaItems>
        <criteriaItems>
            <field>Account.NumberOfEmployees</field>
            <operation>lessOrEqual</operation>
            <value>500</value>
        </criteriaItems>
        <description>Notify Services VP regarding new cases for small accounts and assign follow up to Account Owner.</description>
        <triggerType>onCreateOnly</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>Follow_up_with_customer_on_case_resolution_of_small_account</name>
                <type>Task</type>
            </actions>
            <timeLength>1</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <tasks>
        <fullName>Follow_up_with_customer_on_case_resolution</fullName>
        <assignedToType>accountOwner</assignedToType>
        <dueDateOffset>5</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <offsetFromField>Case.ClosedDate</offsetFromField>
        <priority>High</priority>
        <protected>false</protected>
        <status>Not Started</status>
        <subject>Follow up with customer on case resolution.</subject>
    </tasks>
    <tasks>
        <fullName>Follow_up_with_customer_on_case_resolution_of_small_account</fullName>
        <assignedToType>accountOwner</assignedToType>
        <dueDateOffset>1</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <offsetFromField>Case.ClosedDate</offsetFromField>
        <priority>High</priority>
        <protected>false</protected>
        <status>Not Started</status>
        <subject>Follow up with customer on case resolution of small account</subject>
    </tasks>
    <tasks>
        <fullName>Touch_base_with_customer_regarding_case_for_small_account</fullName>
        <assignedToType>accountOwner</assignedToType>
        <dueDateOffset>1</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <offsetFromField>Case.CreatedDate</offsetFromField>
        <priority>High</priority>
        <protected>false</protected>
        <status>Not Started</status>
        <subject>Touch base with customer regarding case for small account</subject>
    </tasks>
</Workflow>
