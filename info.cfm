<html>
    <head>
        <link rel="stylesheet" href = "css/style.css">
        <title>Info</title>
    </head>
    <style>
    .card{
        height:468px;
    }
    </style>
    <body>
        <section>
            <div class="main_container">
                <div class = "forms card">
                    <h3>Fill up your info here !!!</h3>
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
                            <input type="file" name="images" 
                            required placeholder="file">
                        </div>
                        <div class="form-btn-control">
                            <input type="submit" class="common-btn" name="submit" 
                            value="create"/>
                        </div>
                    </form>
                </div>
            </div>
        </section>
    </body>
</html>