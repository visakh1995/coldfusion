
<html>
    <head>
        <link rel="stylesheet" href = "css/desk.css">
        <title>Info list</title>
    </head>
    <cfhtmltopdf
        destination="convert.pdf" overwrite="yes"
        source="http://www.google.com/"
        unit="in" pageheight="8" pagewidth="4"
        pagetype="custom">
   </cfhtmltopdf>
    <body>
        <cfinvoke component = "components.createInfo"
           method="listInfoDetails" returnVariable="showData">
        </cfinvoke>
        <h3 class="table-head">INFO LIST</h3>
        <button class="btn"><a href="./csvprocess.cfm">csv</a></button>
        <button class="btn"><a href="./convert.cfm">pdf</a></button>
        <button class="btn"><a href="./spread.cfm">excel</a></button>

        <table cellpadding:"2" cellspacing="4">
            <tr>
                <th>User Id</th>
                <th>First Name</th>
                <th>Last Name</th>
                <th>Email</th>
            </tr>
            <cfoutput query="showData">
            <tr>
                <td>#userId#</td>
                <td>#firstName#</td>
                <td>#lastName#</td>
                <td>#email#</td>
            </tr>
            </cfoutput>
        </table>
            <cfoutput> 
                E-Turtleneck is proud to say that we have sold #Session.firstName# turtlenecks to date. 
            </cfoutput> 

    </body>
</html>