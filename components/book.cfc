<cfcomponent>
    <cffunction name ="showBooks" returntype = "string"
     access ="remote" output ="no">
        <cfargument name ="store" type="string" required="yes">
           <cfset var BookList = "">
           <cfset var getBooks = "">
               <cfquery name = "getBooks" dataSource = "streetstore2">
                  SELECT customer_id,store_id,first_name,last_name,email
                  FROM sakila.customer
                  WHERE store_id = '#store#'
                  ORDER BY address_id asc
               </cfquery>
        <cfsavecontent variable="BookList">
            <books>
                <cfoutput query = "getBooks">
                    <book id="#customer_id#">
                    <booktitle>#first_name#</booktitle>
                </cfoutput>
            </books>
        </cfsavecontent>
        <cfreturn BookList>
    </cffunction>
</cfcomponent>