<cfcomponent>
    
    <cffunction name="wsdl" access="remote" returntype="xml">

        <cfinvoke webservice="https://partners.secure.totalattorneys.com/leadExchange.asmx" method="wsdl" returnvariable="statusCode"/>
		<cfreturn statusCode>
	</cffunction>
    
	<cffunction name="consumeLeadAndReturnXMLResponse" access="remote" returntype="xml">
		<cfargument name="XMLLead" type="string" required="yes">

        <cfinvoke webservice="https://partners.secure.totalattorneys.com/leadExchange.asmx?WSDL" method="ConsumeLeadAndReturnXmlResponse" returnvariable="statusCode"> 
        	<cfinvokeargument name="xmlStrDoc" value="#arguments.XMLLead#" omit="no"/> 
        </cfinvoke> 
		<cfreturn statusCode>
	</cffunction>
    
    <cffunction name="consumeLeadAndReturnStatusCode" access="remote" returntype="string">
		<cfargument name="XMLLead" type="string" required="yes">

		<cfinvoke webservice="https://partners.secure.totalattorneys.com/leadExchange.asmx?WSDL" refreshwsdl="yes" method="ConsumeLeadAndReturnStatusCode" returnvariable="statusCode">
        <cfinvokeargument name="xmlStrDoc" value="#arguments.XMLLead#" omit="no" />
        </cfinvoke>
		<cfreturn statusCode>
	</cffunction>
    
    <cffunction name="generateStatusCodeForPingPost" access="remote" returntype="string">
		<cfargument name="XMLLead" type="string" required="yes">

		<cfinvoke webservice="https://partners.secure.totalattorneys.com/leadExchange.asmx?WSDL" refreshwsdl="yes" method="generateStatusCodeForPingPost" returnvariable="statusCode"> 
        	<cfinvokeargument name="xmlStrDoc" value="#arguments.XMLLead#" omit="no"/> 
        </cfinvoke> 
		<cfreturn statusCode>
	</cffunction>
    
    <cffunction name="generateXMLResponseForPingPost" access="remote" returntype="string">
		<cfargument name="XMLLead" type="string" required="yes">
		<cfinvoke webservice="https://partners.secure.totalattorneys.com/leadExchange.asmx?WSDL" refreshwsdl="yes" method="generateXMLResponseForPingPost" returnvariable="statusCode"> 
        	<cfinvokeargument name="xmlStrDoc" value="#arguments.XMLLead#" omit="no"/> 
        </cfinvoke> 
		<cfreturn statusCode>
	</cffunction>
</cfcomponent>