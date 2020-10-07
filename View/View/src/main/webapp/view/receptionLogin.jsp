<%-- 
    Document   : receptionLogin
    Created on : May 1, 2020, 12:07:28 AM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

    <html>
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
            <title>Reception Login</title>
            <style>
                div.DFirst
                {
                    position:absolute;
                    justify-content:center;
                    background-image: url("/image/log.jpg");
                    width:500px;
                    height:310px;
                    top:20%;
                    left:20%;
                }

                div.transbox
                {
                    position:absolute;
                    justify-content:center;
                    margin: 30px;
                    background-color: #07024B;
                    border: 1px solid black;
                    opacity: 0.6;
                    width:500px;
                    height:310px;
                    top:15%;
                    left:17.5%;
                }
                div.Dsecond
                {
                    position:absolute;
                    justify-content:center;
                    background-color:#fff;
                    width:300px;
                    height:310px;
                    top:20%;
                    left:60.5%;
                }

                input,textarea,select
                {
                    display:block;
                    margin:0 auto;
                    background-color:transparent;
                    color:#07024B;
                    font-weight:bold;
                }
                textarea
                {
                    height:120px;
                    width:200px
                }
                input[type=text],input[type=password],select
                {
                    width:200px;
                    height:27px;

                }
                .Dsecond p
                {
                    color:#07024B;
                    text-align:center;
                    font-size:24px;
                    font-weight:bold;
                    font-style:italic;

                }
                input[type=submit]
                {
                    color:white;
                    background-color:#07024B;
                    width:170px;
                    height:40px;
                    border-radius: 12px;
                    border: 2px solid #fff;	
                    margin-left:65px;
                    margin-top:-10px;
                }

                input[type=submit]:hover 
                {
                    background-color:black;
                    color: white;
                }

                .nav-bar{display:block;position:absolute;height:10%;width:100%;left:0;top:0;background-color: #0b037c;text-align: right;font-size:20px;}
                .nav-bar li{display: inline-block;}
                .nav-bar a{text-decoration:none;color:#bfbfbf;padding-right: 4em;}
                .nav-bar a:hover,.nav-bar a:active{color:white;}

                .clicked a{color:white;}
            </style>
        </head>
        <body bgcolor="#F0F8FF">
        <header>
            <div class="nav-bar">
                <ul>
                    <li><a href="/home">Home</a></li>
                    <li><a href="/add-reservation">Book</a></li>
                    <li><a href="/reservation-by-id">Find Reservation</a></li>
                    <li><a href="/add-contact">Contact</a></li>
                </ul>
            </div>
        </header>
        
        <div class=DFirst>
        </div>
        <div class=Dsecond>
            <form method="POST" action="/login-process" modelAttribute="reception" onsubmit="return validateForm()" name="receptionLoginForm">
                <p>Sign in to Account</p> <br>
                <input type=text name="username" id="username"  placeholder="Enter UserName"> <br>
                <input type=password name="password" id="password" placeholder="Enter Password"><br><br><br>
                <input type="submit" value="LOGIN" id="loginButton">
            </form>
        </div>
        <div class=transbox>
        </div>
        
        <jsp:include page="/view/footer.jsp"/>
        
        <script>
                function validateForm() {
                  var un = document.forms["receptionLoginForm"]["username"].value;
                  var pw = document.forms["receptionLoginForm"]["password"].value;
                  if (un === "" || pw === "") {
                    alert("Please fill all details");
                    return false;
                  }
                }
        </script>
        
        </body>
    </html>
