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
                    <cfform name="loginform" action="#CGI.script_name#?#CGI.query_string#" method = "post">
                        <div class="form-control">
                            <cfinput type="email" name="j_username" 
                             placeholder="Username" autocomplete="">
                        </div>
                        <div class="form-control">
                            <cfinput type="password" name="j_password" 
                             placeholder="Password" autocomplete="off">
                        </div>
                        <div class="form-btn-control">
                            <cfinput type="submit" class="common-btn" name="Log In" 
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