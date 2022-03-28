
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
   <cfhtmltopdf  encryption="AES_128"  destination="destination"  marginBottom="marginBottom"  marginTop="marginTop"  marginLeft="marginLeft"  marginRight="marginRight"  name="name"  orientation="portrait"  overwrite="overwrite"  ownerPassword="ownerPassword"  userPassword="userPassword"  permissions="AllowPrinting"  pageType="legal"  pageWidth="pageWidth"  pageHeight="pageHeight"  saveAsName="saveAsName"  unit="in">
    <body>
        <cfinvoke component = "components.createInfo"
        method="listInfoDetails" returnVariable="showData">
        </cfinvoke>
        <h3 class="table-head">INFO LIST</h3>
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
    </body>
</html>