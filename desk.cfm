
<cfinvoke component = "components.createInfo"
method="listInfoDetails" returnVariable="showData">
</cfinvoke>
<!--- <cfdump var = #showData#> --->
<html>
    <head>
        <link rel="stylesheet" href = "css/desk.css">
        <title>Info list</title>
    </head>
    <body>
        <h3 class="table-head">INFO LIST</h3>
        <table cellpadding:"2" cellspacing="4">
            <tr>
                <th>User Id</th>
                <th>First Name</th>
                <th>Last Name</th>
                <th>Email</th>
                <th></th>
                <th></th>

            </tr>
            <cfoutput query="showData">
            <tr>
                <td>#userId#</td>
                <td>#firstName#</td>
                <td>#lastName#</td>
                <td>#email#</td>
                <td>
                    <form>
                        <form action="indexAction.cfm?From=Edit&ID=#userId#" 
                        method="post">
                        <input type="submit" value="Edit">
                    </form>
                </td>
                <td><a href="">delete</a></td>
            </tr>
            </cfoutput>
        </table>
    </body>
</html>