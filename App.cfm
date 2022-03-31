
<cflogin>
    <cfif NOT IsDefined("cflogin")>
      <cfinclude template = "./login.cfm">
    <cfabort>
    <cfelse>
        <cfquery name = "loginCheck" datasource="cruddb">
           SELECT * FROM sakila.info WHERE 
           email = "#cflogin.name#" AND firstName = "#cflogin.password#"
        </cfquery>
        <cfdump var = #loginCheck#>
        <cfif loginCheck.recordcount gt 0>
            <!---<cfdump var =#loginCheck#> --->
            <cfapplication name="signins" sessionTimeout = #CreateTimeSpan(0, 0, 0, 60)#
                sessionManagement = "Yes">
                <!--- Initialize session and application variables used by E-Turtleneck. --->
                <cfoutput query = loginCheck> 
                <cfparam name="application.number" default="1"> 
                <cfparam name="session.userId" default= "#userId#"> 
                <cfparam name="session.firstName" default= "#firstName#"> 
                <cfparam name="session.lastName" default="#lastName#"> 
                </cfoutput> 
                 <!--- #StructKeyList(Session)# --->
                <cflocation  url="./desk.cfm"> 
        <cfelse>
            <cflocation  url="./App.cfm">
        </cfif>
            
    </cfif>
</cflogin>