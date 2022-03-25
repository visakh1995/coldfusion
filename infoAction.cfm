<cfif isDefined("submit")>
    <cfinvoke component="components.createInfo"
    method="createInfoDetails" returnVariable="insertedData"
    argumentCollection="#Form#">
    </cfinvoke>
<cfelse>
<p>failed to get it!
</cfif>


<cfif IsDefined("URL.From")>
    <cfif #URL.From# IS "Edit">
        <cfoutput>
            <cflocation url="./desks.cfm" >

     </cfoutput>
    </cfif>
<cfelse>
    heyyy
</cfif>