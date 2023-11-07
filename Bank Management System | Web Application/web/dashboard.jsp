<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Arrithnius | dashboard</title>
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
                height: 550px;
                position: relative;
                width: 100%;
                display: flex;
                justify-content: center;
                background-repeat: no-repeat;
                background-size: cover;
                background-image: url(IMAGES/newsamuel-regan-asante-fBU0PHaRMgE-unsplash.jpg);
                padding-top: 6%;
            }
            .dash-container {
                height: 500px;
                width: 70%;
                display: flex;
                flex-direction: row;
                border-radius: 0 0 20px 20px;
                position: relative;/*
                background: red;*/
                background-image: url(IMAGES/samuel-regan-asante-fBU0PHaRMgE-unsplash.jpg);
            }
            .dark {
                height: 500px;
                width: 100%;
                display: flex;
                flex-direction: row;
                border-radius: 0 0 20px 20px;
                background: rgba(0, 0, 0, 0.8);
            }
            .sidebar {
                height: 480px;
                width: 20%;
                display: flex;
                border-right: 1px solid #FFFFFF;
                flex-direction: column;
                position: relative;/*
                background: green;*/
            }
            .sidebar > a {
                padding: 16px 20px;
                background: rgba(31, 31, 31, 0.9);
                text-decoration: none;
                color: #FFFFFF;
                font-size: 20px;
                font-family:'Times New Roman', Times, serif;
                transition: 0.3s ease;
            }
            .sidebar > a:hover {
                background: rgba(0, 0, 0, 0.5);
            }
            .sidebar > a.active {
                background:rgba(0, 0, 0, 0.3);  
            }
            .bar-content {
                height: 480px;
                width: 80%;
                overflow: hidden;
                display: flex;
                flex-direction: column;
                position: relative;/*
                background: yellow;*/
            }
            .bar-content > #getting-started {
                width: 95%;
                height: 60px;
                position: relative;/*
                background: black;*/
            }
            #getting-started {
                display: flex;
                padding-top: 5%;
                justify-content: center;
            }
            #getting-started > label {
                color: #FFFFFF;
                font-size: 35px;
                text-align: center;
                border-bottom: 2px solid #FFFFFF;
                font-family: "Times New Roman", Times, serif;
                position: relative;
                font-weight: 500;
            }
            #para {
                width: 95%;
                display: flex;
                padding-top: 3%;
                margin: 0 auto 0 auto;
                justify-content: center;/*
                background: red;*/
            }
            #para > label {
                color: #FFFFFF;
                font-size: 20px;
                font-family: "Times New Roman", Times, serif;
                position: relative;
            }
        </style>
    </head>
    <body>
        <div class="container">
            <div class="dash-container">
                <div class="dark">
                    <div class="sidebar">
                        <a href="dashboard.jsp" class="active">Getting Started</a>
                        <a href="balance.jsp">Balance</a>
                        <a href="deposit.html">Deposit</a>
                        <a href="withdraw.html">Withdraw</a>
                        <a href="create.html">Create Receipt</a>
                        <a href="send.html">Send Money</a>
                        <a href="index.html">Log out</a>
                    </div>
                    <div class="bar-content">
                        <div id="getting-started">
                            <label>Arrithnius Bank Management Service(ABMS)</label>
                        </div>
                        <div id="para">
                            <label>ABMS, provides online banking services from wherever you are. A customer can deposit, send, and check balance of money money though out website and also be able to see their transactions history. Unfortunately, some services are currently offline for some new upcoming updates that are only meant for you. We apologies for the incovinience. Have a good day ahead.</label>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
