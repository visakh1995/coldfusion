
<cfif ID>
    <cfinvoke component="components.createInfo"
    method="editInfoDetails" returnVariable="edits">
    <cfinvokeargument name="editId" value=#ID#>
    </cfinvoke>
</cfif>
<cfif ID>
  <cfloop query = "edits">
    <cfoutput>
    <html>
    <head>
        <link rel="stylesheet" href = "css/style.css">
        <title>Update Info</title>
    </head>
    <body>
        <section>
            <div class="main_container">
                <div class = "forms card">
                    <h3>update your info!!!</h3>
                    <form action="infoAction.cfm" method = "post">
                        <div class="form-control">
                            <input type="text" name="firstName" value="#firstName#"
                            required placeholder="First name" autocomplete="off">
                            <input type="hidden" value="#userId#" name="userUpdateId">
                        </div>
                        <div class="form-control">
                            <input type="text" name="lastName" value="#lastName#"
                            required placeholder="Last name" autocomplete="off">
                        </div>
                        <div class="form-control">
                            <input type="email" name="email" value="#email#"
                            required placeholder="Email" autocomplete="off">
                        </div>
                        <div class="form-btn-control">
                            <input type="submit" class="common-btn" name="update" 
                            value="update"/>
                        </div>
                    </form>
                </div>
            </div>
        </section>
    </body>
</html>
</cfoutput>
</cfloop>
</cfif>