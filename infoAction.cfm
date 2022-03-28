<cfif isDefined("submit")>
    <cfinvoke component="components.createInfo"
    method="createInfoDetails" returnVariable="insertedData"
    argumentCollection="#Form#">
    </cfinvoke>
</cfif>


<cfif isDefined("update")>
   <cfinvoke component ="components.createInfo"
   method="updateInfoDetails" argumentCollection="#Form#">
   </cfinvoke>
</cfif>

<cfif DELETE>
   <cfinvoke component = "components.createinfo"
   method="deleteInfoDetails">
   <cfinvokeargument  name="deleteId"  value="#DELETE#">
   </cfinvoke>
</cfif>