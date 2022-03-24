<cfinvoke component = "components.customer"
     method = "retrieveCustomers"
     returnVariable = "allCustomers">
</cfinvoke>

<table width="100%" cellpadding="5" 
cellspacing="8">
    <tr>
        <th>film_id</th>
        <th>title</th>
        <th>description</th>
        <th>release year</th>

    </tr>
    <cfoutput query = allCustomers>
    <tr>
        <td>#film_id#</td>
        <td>#title#</td>
        <td>#description#</td>
        <td>#release_year#</td>
    
    </tr>
</cfoutput>
</table>
<style>
    td,th{
        border :1px solid #000;
    }
</style>
