<!DOCTYPE html>
<html>
    <head>
        <title>Arrithnius | Registrations</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <style type="text/css">
            body {
                position: relative;
                margin: 0;
                padding: 0;  
                background: white;
            }
            .con-reg {
                height: 700px;
                position: relative;
                width: 100%;
                display: flex;
                justify-content: center;
                background-repeat: no-repeat;
                background-size: cover;
                background-image: url(IMAGES/newsamuel-regan-asante-fBU0PHaRMgE-unsplash.jpg);
                padding-top: 2%;     
            }
            .reg-container {
                height: 680px;
                width: 80%;
                display: flex;
                flex-direction: column;
                justify-content: center;
                position: relative;
                background-repeat: no-repeat;
                background-size: cover;
                border-radius: 0 0 20px 20px;
                box-shadow: 6px 6px 10px 6px #ACACAC;
                background-image: url(IMAGES/markus-winkler-ahjzVINkuCs-unsplash.jpg);
            }
            .reg-con-background {
                background-color: rgba(0, 0, 0, 0.7);
                position: relative;
                height: 680px;
                border-radius: 0 0 20px 20px;
                width: 100%;
                padding-top: 20px;
                display: flex;
                flex-direction: column;
            }
            .register-container {
                width: 100%;
                height: 60px;
                display: flex;
                justify-content: center;
            }
            .register-container > label {
                font-size: 50px;
                border-bottom: 3.5px solid #FFFFFF;
                font-family: 'Times New Roman', Times, serif;
                color: #FFFFFF;
                font-weight: 500;
            }
            .for_form {
                height: 450px;
                width: 100%;
                display: flex;
                justify-content: center;
                position: relative;
                padding-top: 1%;
            }
            .for_form > .con-form {
                height: 450px;
                width: 35%;
                display: flex;
                justify-content: center;
                position: relative;
                text-align: center;
            }
            form > span{ 
                color: #FFFFFF;
                font-size: 15px;
                font-family: "Times New Roman", Times, serif;
                position: relative;
                font-weight: 500;
                
            }
            input[type=text],
            input[type=password],
            input[type=email],
            input[type=number] {
                border: 0;
                border-style: none;
                background: #eeeeee;
                height: 20px;
                margin-top: 1%;
                width: 100%;
            }
        </style>
    </head>
    <body>
        <div class="con-reg">
            <div class="reg-container">
                <div class="reg-con-background">
                    <div class="register-container">
                        <label>Register</label>
                    </div>
                    <div class="for_form">
                        <div class="con-form">
                            <form method="POST" action="RegisterServ">
                                <span>Username :</span>
                                <input type="text" name="uname" required autofocus="" placeholder="  Arrithnius"/><br><br>
                                <span>Email : </span>
                                <input type="email" name="mail" required placeholder="  khulisojunior500mail.com"/><br><br>
                                <span>Confirm Email :</span>
                                <input type="email" name="mailconf" required/><br><br>
                                <span>Phone number :</span>
                                <input type="number" name="phoneno" required placeholder="  0606528387"/><br><br>
                                <span>Password :</span>
                                <input type="password" name="pword" required placeholder="  *********"/><br><br>
                                <span>Confirm Password :</span>
                                <input type="password" name="pwordconf" required/><br><br>
                                <span>Account no. :</span>
                                <input type="number" name="accno" required/><br><br>
                                <input type="submit" value="Submit"/>
                            </form>
                        </div>
                    </div> 
                </div>
            </div>
        </div>
    </body>
</html>
