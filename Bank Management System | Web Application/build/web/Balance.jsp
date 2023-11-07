<%-- 
    Document   : balance
    Created on : 25 Jul 2021, 14:15:14
    Author     : arrithnius
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Arrithnius | Balance</title>
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
                background: rgba(85, 85, 85, 0.7);
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
                position: relative;
            }
            .bar-content > #balance {
                height: 450px;
                width: 95%;
                display: block;
                position: relative;/*
                background: rgb(255, 255, 255);*/
            }
            #balance  .nameforuser-con {
                height: 100px;
                width: 90%;
                position: relative;
                background-color: #332626;
            }
            #balance .acctypename-con {
                height: 50px;
                width: 90%;
                position: relative;
                background: #160202;
            }
            #balance .userbalance-con {
                height: 70px;
                width: 90%;
                position: relative;
                background: pink;
            }
        </style>
    </head>
    <body>
        <%
            HttpSession hs = request.getSession(false);
            Beans.RegisterBean[] rBean = (Beans.RegisterBean[])hs.getAttribute("RG");
        %>
        <div class="container">
            <div class="dash-container">
                <div class="dark">
                    <div class="sidebar">
                        <a href="output.jsp">Getting Started</a>
                        <a href="balance.jsp" class="active">Balance</a>
                        <a href="deposit.html">Deposit</a>
                        <a href="withdraw.html">Withdraw</a>
                        <a href="create.html">Create Receipt</a>
                        <a href="send.html">Send Money</a>
                        <a href="index.html">Log out</a>
                    </div>
                    <div class="bar-content">
                        <div id="balance">
                            <div class="nameforuser-con">
                                <label>
                                    <%=rBean[0].getUsername()%>
                                </label>
                            </div>
                                <div class="acctypename-con">
                                    <label>
                                        <%=rBean[0].getAccount()%>
                                    </label>
                                </div>
                            <div class="userbalance-con"></div>
                        </div>
                    </div>
                </div>  
            </div>
        </div>
    </body>
</html>
