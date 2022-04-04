<cfif structKeyExists(form,'Login')>
    <cfset aErrorMessages =  Arraynew(1)>
       <cfif form.j_username EQ '' OR NOT isValid("email",form.j_username)>
          <cfset arrayAppend(aErrorMessages,'Please provide valid username')/>
       </cfif>
       <cfif form.j_password EQ ''>
        <cfset arrayAppend(aErrorMessages,'Please provide valid password')/>
       </cfif>
       <cfif ArrayIsEmpty(aErrorMessages)>
        <!--- insert into db--->
       </cfif>
</cfif>

<html>
    <head>
        <link rel="stylesheet" href = "css/style.css">
        <title>Info</title>
    </head>
    <style>
    .side-note{
        padding:20px;
    }
    .card-samll{
        background-color: #fff;
        border-radius: 5px;;
        padding:30px;
        width:400px;
        height:380px;
    }
    </style>
    <body>
        <section>
            <div class="main_container">
                <div class = "forms card-samll">
                    <h3>Login here !!!</h3>
                    <cfif isDefined('aErrorMessages') AND NOT ArrayIsEmpty(aErrorMessages)>
                        <cfoutput>
                            <cfloop array = #aErrorMessages# index="message">
                                <p>#message#</p>
                            </cfloop>
                        </cfoutput>
                    </cfif>
                    <cfform name="loginform" action="#CGI.script_name#?#CGI.query_string#">
                        <div class="form-control">
                            <cfinput type="text" name="j_username" validate="email" 
                            message="please provide valid email" 
                            placeholder="Username" autocomplete="">
                        </div>
                        <div class="form-control">
                            <cfinput type="password" name="j_password" 
                            message = "please fill the password field"
                            placeholder="Password" autocomplete="off">
                        </div>
                        <div class="form-btn-control">
                            <cfinput type="submit" class="common-btn" name="Login" 
                            value="Signin"/>
                        </div>
                        <div class="side-note">
                        <span>Don't have an account ?</span><a href="./info.cfm">Sign up</a>
                        </div>
                    </cfform>
                </div>
            </div>
        </section>
    </body>
</html>