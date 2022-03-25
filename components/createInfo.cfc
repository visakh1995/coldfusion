<cfcomponent>
    <!--- insert data --->
    <cffunction name="createInfoDetails">
        <cfquery name="addData" result = result  datasource="cruddb">
            INSERT INTO sakila.info (firstName,lastName,email)
            VALUES(
                <cfqueryparam value="#form.firstName#">,
                <cfqueryparam value="#form.lastName#">,
                <cfqueryparam value ="#form.email#">
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
</cfcomponent>


