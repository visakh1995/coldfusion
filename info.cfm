<html>
    <head>
        <link rel="stylesheet" href = "css/style.css">
        <title>Info</title>
    </head>
    <style>
    .form-control{
        padding:18px;
    }
    .side-note{
        padding:20px;
    }
    </style>
    

    <body>
        <section>
            <div class="main_container">
                <div class = "forms card">
                    <h3>Signup here !!!</h3>
                    <form enctype="multipart/form-data" action="infoAction.cfm" method = "post">
                        <div class="form-control">
                            <input type="text" name="firstName" 
                            required placeholder="First name" autocomplete="off">
                        </div>
                        <div class="form-control">
                            <input type="text" name="lastName" 
                            required placeholder="Last name" autocomplete="off">
                        </div>
                        <div class="form-control">
                            <input type="email" name="email" 
                             placeholder="Email" autocomplete="">
                        </div>
                        <div class="form-control">
                            <input type="password" name="password" 
                             placeholder="Password" autocomplete="off">
                        </div>
                        <div class="form-control">
                            <input type="password" name="confirmPassword" 
                             placeholder="Confirm Password" autocomplete="off">
                        </div>
                        <!--- <div class="form-control">
                            <input type="file" name="images" 
                            required placeholder="file">
                        </div> --->
                        <div class="form-btn-control">
                            <input type="submit" class="common-btn" name="submit" 
                            value="sign up"/>
                        </div>
                        <div class="side-note">
                        <span>Don't have an account ?</span><a href="./login.cfm"> login</a>
                        </div>
                    </form>
                </div>
            </div>
        </section>
    </body>
</html>