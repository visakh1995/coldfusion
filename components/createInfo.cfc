<cfcomponent>
    <!--- insert data --->

    <cffunction name="createInfoDetails">
        <cfset imageValue = #cffile.serverFile#>
        <cfquery name="addData" result = result  datasource="cruddb">
            INSERT INTO sakila.info (firstName,lastName,email,images)
            VALUES(
                <cfqueryparam value="#form.firstName#">,
                <cfqueryparam value="#form.lastName#">,
                <cfqueryparam value ="#form.email#">,
                "#imageValue#"
            )
        </cfquery>
    <cflocation url="./desk.cfm" > 
    </cffunction>

    <!--- list data --->

    <cffunction name="listInfoDetails">
        <cfquery name="showData" datasource="cruddb">
            SELECT * FROM sakila.info;
        </cfquery>
         <cfreturn showData>
    </cffunction>

    <!--- edit --->

    <cffunction name="editInfoDetails">
        <cfargument name ="editId" type="string" required="yes">
        <cfquery name="editData" datasource="cruddb">
            SELECT * FROM sakila.info WHERE userId = '#editId#'
        </cfquery>
        <cfreturn editData>
        <cfdump var=#editData#>
    </cffunction>

    <!---update--->

    <cffunction name="updateInfoDetails">
        <cfquery name="updateData" datasource="cruddb">
           UPDATE sakila.info SET 
           firstName = <cfqueryparam CFSQLType="cf_sql_varchar" value="#arguments.firstName#">,
           firstName = <cfqueryparam CFSQLType="cf_sql_varchar" value="#arguments.firstName#">,
           lastName  = <cfqueryparam CFSQLType="cf_sql_varchar" value="#arguments.lastName#">,
           email     = <cfqueryparam CFSQLType="cf_sql_varchar" value="#arguments.email#">,
        </cfquery>
        <cflocation url="./desk.cfm" >
    </cffunction>

    <!--- delete --->

    <cffunction name="deleteInfoDetails">
        <cfargument name="deleteId" required="yes">
        <cfquery name="deleteData" datasource="cruddb">
            DELETE FROM sakila.info WHERE userId = "#deleteId#"
        </cfquery>
        <cflocation  url="./desk.cfm">
    </cffunction>

    <!--- signin --->
    
    <cffunction name="createInfoSignin">
        <cfdump var = #form.firstName#>
    </cffunction>
</cfcomponent>


