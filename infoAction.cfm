<cfif isDefined("submit")>
   <cfif len(trim(form.images))>
      <!--- <cffile action="upload"
      fileField="images"
      destination="C:\coldFusion2021\cfusion\wwwroot\test\uploads\">
      <p>Thankyou, your file has been uploaded.</p> --->
      <cfinvoke component="components.createInfo" 
      method="createInfoDetails" returnVariable="insertedData" 
      argumentCollection="#Form#"> 
      </cfinvoke>

   </cfif>
</cfif>

<cfif isDefined("signin")>
   <cfinvoke component="components.createInfo"
   method="createInfoSignin" argumentCollection="#Form#">
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