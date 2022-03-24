<cfcomponent displayName ="Customer"
    hint ="cold fusion component for customers">
    <cffunction name = "retrieveCustomers"
        hint="gets all customers from database"
        returntype = "query">
      <cfquery datasource ="streetstore2" name ="getCustomers">
         select *from sakila.film  
      </cfquery>
      <cfreturn getCustomers>
    </cffunction>
</cfcomponent>


