<!DOCTYPE html>
<html>
    <head>
        <title>Arrithnius | Signing in</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <style type="text/css">
            body {
                position: relative;
                margin: 0;
                padding: 0;  
                background: white;
            }
            .container {
                height: 590px;
                position: relative;
                width: 100%;
                display: flex;
                justify-content: center;
                background-repeat: no-repeat;
                background-size: cover;
                background-image: url(IMAGES/samuel-regan-asante-fBU0PHaRMgE-unsplash.jpg);
                padding-top: 2%;            
            }
            .log-container {
                height: 550px;
                width: 450px;
                display: flex;
                flex-direction: column;
                position: relation;
                background-color: rgba(0, 0, 0, 0.5);
            }
            .log-in {
                height: 120px;
                justify-content: center;
                display: flex; 
                width: 100%;
            }
            .log-in > label {
                color: #FFFFFF;
                font-size: 80px;
                font-family: "Times New Roman", Times, serif;
                position: relative;
                font-weight: 500;
            }
            .form-container {
                width: 100%;
                height: 250px;
                display: flex;
                justify-content: center;/*
                background: red;*/
                position: relative;
            }
            .the_form {
                width: 60%;
                height: 250px;
                position: relative;/*
                background: green;*/
            }
            input[type=text],
            input[type=number],
            input[type=password] {
                border: 0;
                border-style: none;
                background: #ACACAC;
                height: 35px;
                margin-top: 3%;
                width: 100%;
            }
            input[type=submit] {
                border: 0;
                border-style: none;
                margin-top: 5%;
                background: rgba(255, 255, 255, 0.4);
                height: 40px;
                width: 100%;
                font-size: 20px;
                color: #FFFFFF;
                font-family: 'Times New Roman', Times, serif;
            }
            input[type=submit]:hover {
                transition: .3s ease;
                background-color: rgba(0, 0, 0, 0.5);
            }
            form > span{ 
                color: #FFFFFF;
                font-size: 20px;
                font-family: "Times New Roman", Times, serif;
                position: relative;
                font-weight: 500;
            }
            .forgot_pass {
                height: 70px;
                width: 100%;
            }
            .forgot_pass > a {
                color: #FFFFFF;
                text-decoration: none;
                text-align: center;
                display: flex;
                font-style: italic;
                justify-content: center;
                font-size: 15px;
                font-family: "Times New Roman", Times, serif;
                position: relative;
                font-weight: 500;
                transition: 0.3s ease-in;
            }
            .forgot_pass > a:hover {
                text-decoration: underline;
            }
        </style>
    </head>
    <body>
        <div class="container">
            <div class="log-container">
                <div class="log-in">
                    <label>Login</label>
                </div>
                <div class="form-container">
                    <div class="the_form">
                        <form method="POST" action="login">
                            <span>Account no :</span><br>
                            <input type="number" name="accno" required autofocus="" placeholder="account number"/><br><br>
                            <span>Password :</span><br>
                            <input type="password" name="pword" required placeholder="  *********"/><br><br>
                            <input type="submit" value="login"/>
                        </form>
                    </div>
                </div>
                <div class="forgot_pass">
                    <a href="register.jsp">Don't have an account? click here</a>
                </div>
            </div>
        </div>
    </body>
</html>
