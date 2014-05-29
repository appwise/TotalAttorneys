<cfcomponent>
	<cffunction name="create" access="remote" output="yes" returntype="xml">
    	<cfargument name="account_token" required="yes" type="string" default="2B789EFEE6">
        <cfargument name="url" required="yes" type="string">
        <cfargument name="leadid_token" required="no" type="string">
        <cfargument name="id" required="no" type="string">
        <cfargument name="date" required="no" type="string" default="#dateformat(now(),'mm/dd/yyyy')#">
        <cfargument name="law_area" required="yes" type="string">
        <cfargument name="accept_terms" required="yes" type="boolean">
        <cfargument name="first_name" required="yes" type="string">
        <cfargument name="last_name" required="yes" type="string">
        <cfargument name="email" required="yes" type="string">
        <cfargument name="address1" required="no" type="string">
        <cfargument name="address2" required="no" type="string">
        <cfargument name="zip" required="yes" type="string" default="00001">
        <cfargument name="phone_home_primary" required="yes" type="any" default="false">
        <cfargument name="home_number" required="yes" type="numeric">
        <cfargument name="home_extension" required="no" type="numeric">
        <cfargument name="phone_work_primary" required="no" type="any" default="false">
        <cfargument name="work_number" required="no" type="numeric">
        <cfargument name="work_extension" required="no" type="numeric">
        <cfargument name="phone_cell_primary" required="no" type="any" default="false">
        <cfargument name="cell_number" required="no" type="numeric">
        <cfargument name="cell_extension" required="no" type="numeric">
        <cfargument name="reason_garnishment" required="no" type="boolean" default="false">
        <cfargument name="reason_creditor_harassment" required="no" type="boolean" default="false">
        <cfargument name="reason_repossesion" required="no" type="boolean" default="false">
        <cfargument name="reason_foreclosure" required="no" type="boolean" default="false">
        <cfargument name="reason_lawsuits" required="no" type="boolean" default="false">
        <cfargument name="reason_illness_or_disability" required="no" type="boolean" default="false">
        <cfargument name="reason_license_suspension" required="no" type="boolean" default="false">
        <cfargument name="reason_divorce" required="no" type="boolean" default="false">
        <cfargument name="reason_loss_of_income" required="no" type="boolean" default="false">
        <cfargument name="reason_other" required="no" type="boolean" default="false">
        <cfargument name="other_reason_description" required="no" type="boolean" default="false">				
        <cfargument name="filing_reasons" required="no" type="boolean" default="false">
        <cfargument name="bill_credit_cards" required="no" type="boolean" default="false">
        <cfargument name="bill_personal_loans" required="no" type="boolean" default="false">				
        <cfargument name="bill_child_support" required="no" type="boolean" default="false">
        <cfargument name="bill_student_loans" required="no" type="boolean" default="false">
        <cfargument name="bill_auto_loans" required="no" type="boolean" default="false">
        <cfargument name="bill_income_taxes" required="no" type="boolean" default="false">
        <cfargument name="bill_payday_loans" required="no" type="boolean" default="false">
        <cfargument name="bill_medical_bills" required="no" type="boolean" default="false">
        <cfargument name="bill_other" required="no" type="boolean" default="false">
        <cfargument name="other_bill_description" required="no" type="boolean" default="false">
        <cfargument name="asset_real_estate" required="no" type="boolean" default="false">
        <cfargument name="behind_real_estate" required="no" type="boolean" default="false">
        <cfargument name="asset_auto" required="no" type="boolean" default="false">
        <cfargument name="behind_auto" required="no" type="boolean" default="false">
        <cfargument name="asset_other" required="no" type="boolean" default="false">
        <cfargument name="other_asset_description" required="no" type="boolean" default="false">
        <cfargument name="income_full_time" required="no" type="boolean" default="false">
        <cfargument name="income_part_time" required="no" type="boolean" default="false">
        <cfargument name="income_social_security" required="no" type="boolean" default="false">
        <cfargument name="income_pension_or_retirement" required="no" type="boolean" default="false">
        <cfargument name="income_child_support" required="no" type="boolean" default="false">
        <cfargument name="income_other" required="no" type="boolean" default="false">
        <cfargument name="income_none" required="no" type="boolean" default="false">
        <cfargument name="other_income_description" required="no" type="string" default="">
        <cfargument name="total_monthly_income" required="no" type="string" default="$1">
        <cfargument name="total_monthly_expenses" required="no" type="string" default="$1">
        <cfargument name="total_debt" required="no" type="string" default="$1">
        <cfargument name="general_description" required="no" type="string" default="">
        <!---<leadid_token>#XmlFormat(arguments.leadid_token)#</leadid_token>--->
        <cfxml variable="ttlAttLead"> 
            <?xml version="1.0" encoding="utf-8"?>
                <leadexchangexml xmlns="urn:totalattorneys:partners:data:leadexchange:1:standard" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" >
                    <source>
                        <account_token>#XmlFormat(arguments.account_token)#</account_token>
                        <url>#XmlFormat(arguments.url)#</url>
                        <leadid_token>#XmlFormat(arguments.leadid_token)#</leadid_token>
                    </source>
                    <lead id="#XmlFormat(replace(arguments.id,'-','','ALL'))#" date="#XmlFormat(arguments.date)#">
                        <law_area>#XmlFormat(arguments.law_area)#</law_area>
                        <accept_terms>#XmlFormat(arguments.accept_terms)#</accept_terms>
                            <consumer_details>
                                <first_name>#XmlFormat(arguments.first_name)#</first_name>
                                <last_name>#XmlFormat(arguments.last_name)#</last_name>
                                <email>#XmlFormat(arguments.email)#</email>
                                <address1>#XmlFormat(arguments.address1)#</address1>
                                <address2>#XmlFormat(arguments.address2)#</address2>
                                <zip>#XmlFormat(arguments.zip)#</zip>
                                <phone_home primary="#XmlFormat(arguments.phone_home_primary)#">
                                    <number>#XmlFormat(arguments.home_number)#</number>
                                    <extension>#XmlFormat(arguments.home_extension)#</extension>
                                </phone_home>
                                <phone_work primary="#XmlFormat(arguments.phone_work_primary)#">
                                    <number>#XmlFormat(arguments.work_number)#</number>
                                    <extension>#XmlFormat(arguments.work_extension)#</extension>
                                </phone_work>
                                <phone_cell primary="#XmlFormat(arguments.phone_cell_primary)#">
                                    <number>#XmlFormat(arguments.cell_number)#</number>
                                    <extension>#XmlFormat(arguments.cell_extension)#</extension>
                                </phone_cell>
                            </consumer_details>
                        <additional_info>
                            <filing_reasons>
                                <reason_garnishment>#XmlFormat(arguments.reason_garnishment)#</reason_garnishment>
                                <reason_creditor_harassment>#XmlFormat(arguments.reason_creditor_harassment)#</reason_creditor_harassment>
                                <reason_repossesion>#XmlFormat(arguments.reason_repossesion)#</reason_repossesion>
                                <reason_foreclosure>#XmlFormat(arguments.reason_foreclosure)#</reason_foreclosure>
                                <reason_lawsuits>#XmlFormat(arguments.reason_lawsuits)#</reason_lawsuits>
                                <reason_illness_or_disability>#XmlFormat(arguments.reason_illness_or_disability)#</reason_illness_or_disability>
                                <reason_license_suspension>#XmlFormat(arguments.reason_license_suspension)#</reason_license_suspension>
                                <reason_divorce>#XmlFormat(arguments.reason_divorce)#</reason_divorce>
                                <reason_loss_of_income>#XmlFormat(arguments.reason_loss_of_income)#</reason_loss_of_income>
                                <reason_other>#XmlFormat(arguments.reason_other)#</reason_other>
                                <other_reason_description>#XmlFormat(arguments.other_reason_description)#</other_reason_description>				
                            </filing_reasons>
                            <bills>
                                <bill_credit_cards>#XmlFormat(arguments.bill_credit_cards)#</bill_credit_cards>
                                <bill_personal_loans>#XmlFormat(arguments.bill_personal_loans)#</bill_personal_loans>				
                                <bill_child_support>#XmlFormat(arguments.bill_child_support)#</bill_child_support>
                                <bill_student_loans>#XmlFormat(arguments.bill_student_loans)#</bill_student_loans>
                                <bill_auto_loans>#XmlFormat(arguments.bill_auto_loans)#</bill_auto_loans>
                                <bill_income_taxes>#XmlFormat(arguments.bill_income_taxes)#</bill_income_taxes>
                                <bill_payday_loans>#XmlFormat(arguments.bill_payday_loans)#</bill_payday_loans>
                                <bill_medical_bills>#XmlFormat(arguments.bill_medical_bills)#</bill_medical_bills>
                                <bill_other>#XmlFormat(arguments.bill_other)#</bill_other>
                                <other_bill_description>#XmlFormat(arguments.other_bill_description)#</other_bill_description>
                            </bills>
                            <assets>
                                <asset_real_estate>#XmlFormat(arguments.asset_real_estate)#</asset_real_estate>
                                <behind_real_estate>#XmlFormat(arguments.behind_real_estate)#</behind_real_estate>
                                <asset_auto>#XmlFormat(arguments.asset_auto)#</asset_auto>
                                <behind_auto>#XmlFormat(arguments.behind_auto)#</behind_auto>
                                <asset_other>#XmlFormat(arguments.asset_other)#</asset_other>
                                <other_asset_description>#XmlFormat(arguments.other_asset_description)#</other_asset_description>
                            </assets>
                            <income_types>
                                <income_full_time>#XmlFormat(arguments.income_full_time)#</income_full_time>
                                <income_part_time>#XmlFormat(arguments.income_part_time)#</income_part_time>
                                <income_social_security>#XmlFormat(arguments.income_social_security)#</income_social_security>
                                <income_pension_or_retirement>#XmlFormat(arguments.income_pension_or_retirement)#</income_pension_or_retirement>
                                <income_child_support>#XmlFormat(arguments.income_child_support)#</income_child_support>
                                <income_other>#XmlFormat(arguments.income_other)#</income_other>
                                <income_none>#XmlFormat(arguments.income_none)#</income_none>
                                <other_income_description>#XmlFormat(arguments.other_income_description)#</other_income_description>
                            </income_types>			
                            <total_monthly_income>#XmlFormat(arguments.total_monthly_income)#</total_monthly_income>
                            <total_monthly_expenses>#XmlFormat(arguments.total_monthly_expenses)#</total_monthly_expenses>
                            <total_debt>#XmlFormat(arguments.total_debt)#</total_debt>
                            <general_description>#XmlFormat(arguments.general_description)#</general_description>
                        </additional_info>
                    </lead>
                </leadexchangexml>
        </cfxml> 
        <!--- 
		You may use any of the methods in totalAttorneysPartners.cfc.  
		Here I am using the consumeLeadAndReturnStatusCode method
         <cfdump var="#ttlAttLead#" abort>
		 --->
        
   		<cfreturn ttlAttLead>
    </cffunction>
    
</cfcomponent>