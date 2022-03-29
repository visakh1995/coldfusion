<cfheader name="Content-Disposition" value="inline; filename=acmesalesQ1.xls">
<cfcontent type="application/vnd.msexcel">
<cfinvoke component = "components.createInfo"
method="listInfoDetails" returnVariable="showData">
</cfinvoke>
<table cellpadding:"2" cellspacing="4">
    <tr>
        <th>User Id</th>
        <th>First Name</th>
        <th>Last Name</th>
        <th>Email</th>
        <th></th>
    </tr>
    <cfoutput query="showData">
    <tr>
        <td>#userId#</td>
        <td>#firstName#</td>
        <td>#lastName#</td>
        <td>#email#</td>
        <td>
        <button class="btn">
        <a href="update.cfm?ID=#userId#">edit</a>

        <button class="btn">
        <a href="infoAction.cfm?DELETE=#userId#">delete</a>
        </button>           
        </td>
    </tr>
    </cfoutput>
</table>
