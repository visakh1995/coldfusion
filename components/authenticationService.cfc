<cfcomponent>
    <!---validate user--->
    <cffunction name="validateUser" access="public" output="false" returntype="array">
        <cfargument name="userEmail" type="string" required="true">
        <cfargument name="userPassword" type="string" required="true">

        <cfset aErrorMessages =  Arraynew(1)>
        <cfif form.j_username EQ '' OR NOT isValid("email",form.j_username)>
           <cfset arrayAppend(aErrorMessages,'Please provide valid username')/>
        </cfif>
        <cfif form.j_password EQ ''>
         <cfset arrayAppend(aErrorMessages,'Please provide valid password')/>
        </cfif>
        <cfreturn aErrorMessages/>
    </cffunction>

    <!---do login --->
    <cffunction name="doLogin" access="public" output="false" returntype="boolean">
        <cfargument name="userEmail" type="string" required="true">
        <cfargument name="userPassword" type="string" required="true">
        <cfset isUserLoggedIn = false>

        <cfquery name = "loginCheck" datasource="cruddb">
            SELECT * FROM sakila.info WHERE 
            email = "#cflogin.name#" AND firstName = "#cflogin.password#"
         </cfquery>
         <cfdump var = #loginCheck#>

         <cfif loginCheck.recordcount gt 0>
            <cflogin>
                <cfloginuser  name="#loginCheck.firstName# #loginCheck.lastName#"  
                password="#loginCheck.firstName#"  roles="admin">
            </cflogin>
            <cfset session.stLoggedInUser = {'userFirstName' = loginCheck.firstName,'userLastName' = loginCheck.lastName,
            'userEmail' = loginCheck.email}/>
            <cfset isUserLoggedIn = true/>
         </cfif>

         <cfreturn isUserLoggedIn/>
    </cffunction>

     <!--- logout--->
     <cffunction  name="doLogout" access="public" output="false" returntype="void">
        <cfset structDelete(session, "stLoggedInUser")/>
        <cflogout>
     </cffunction>
</cfcomponent>