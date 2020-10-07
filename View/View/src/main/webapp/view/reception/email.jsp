<%-- 
    Document   : email
    Created on : May 3, 2020, 1:23:00 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

    <html>
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
            <title>Email</title>
            
            <style>
                div.DFirst
                    {
                        position:absolute;
                        justify-content:center;
                        background-image: url("image/feedback2.jpg");
                        width:900px;
                        height:520px;
                        top:15%;
                        left:15%;
                        border-radius: 25px;
                    }
                div.transbox
                    {
                        position:absolute;
                        justify-content:center;
                        margin: 30px;
                        background-color: #07024B;
                        border: 1px solid black;
                        opacity: 0.7;
                        width:900px;
                        height:520px;
                        top:-6%;
                        left:-3.3%;
                        border-radius: 25px;
                    }
                div.Dsecond
                    {
                        position:absolute;
                        justify-content:center;
                        background-color:#fff;
                        width:720px;
                        height:330px;
                        top:18%;
                        left:10.5%;
                        border-radius: 25px;
                    }
                div.Dthird
                    {
                        position:absolute;
                        justify-content:center;
                        width:200px;
                        height:255px;
                        top:5%;
                        left:20.5%;
                        background-image: url("image/email2.png");
                        position: relative;
                        position: relative;
                        animation: mymove 5s infinite;
                    }
                div.Dfourth
                    {
                        position:absolute;
                        justify-content:center;
                        background-color:#fff;
                        width:360px;
                        height:330px;
                        top:18%;
                        left:50.5%;
                        border-radius: 25px;
                    }
                    .Dfourth p
                    {
                        color:#07024B;
                        text-align:center;
                        font-size:24px;
                        font-weight:bold;
                        font-style:italic;
                    }
                    input,textarea
                    {
                        display:block;
                        margin:0 auto;
                        background-color:transparent;
                        color:#07024B;
                        font-weight:bold;
                    }
                    textarea
                    {
                        height:50px;
                        width:250px
                    }
                    input[type=text],input[type=password],select,input[type=email],input[type=datetime]
                    {
                        width:250px;
                        height:27px;
                    }

                    input[type=submit]
                    {
                        color:white;
                        background-color:#07024B;
                        width:170px;
                        height:40px;
                        border-radius: 12px;
                        border: 2px solid #fff;	
                        margin-left:100px;
                        margin-top:5px;
                    }

                    input[type=submit]:hover 
                    {
                        background-color:black;
                        color: white;
                    }
                    
                    @keyframes mymove {
                      from {left: 0px;}
                      to {left: 150px;}
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
                            <li><a href="/view-all-contacts">View Feedback</a></li>
                            <li><a href="/view-all-reservations">View bookings</a></li>
                            <li><a href="/rec-add-reservation">Book</a></li>
                            <li class="clicked"><a href="/add-email">Email</a></li>
                            <li><a href="/home">Logout</a></li>
                        </ul>
                    </div>
            </header>
        
            <div class=DFirst>
            <div class=transbox>
            </div>
            <div class=Dsecond>
            <div class=Dthird>
            </div>
            </div>
            <div class=Dfourth>
                <form method="POST" action="/send-email" modelAttribute="email" onsubmit="return validateForm()" name="emailForm">
                    <p>Send Email</p>
                    <!--<input type="email" name="from" id="from" placeholder="codingdevelopers2020@gmail.com" readonly><br>-->
                    <input type="email" name="to" id="to" placeholder="To"><br>
                    <input type="text" name="subject" id="subject" placeholder="subject"><br>
                    <textarea name="message" id="message" placeholder="Massage"></textarea> <br>
                    <input type=submit value="Send Email">
                </form>
            </div>
            </div>
            
            <jsp:include page="/view/footer.jsp" />
            
            <script>
                function validateForm() {
                  var f = document.forms["emailForm"]["from"].value;
                  var t = document.forms["emailForm"]["to"].value;
                  var s = document.forms["emailForm"]["subject"].value;
                  var msg = document.forms["emailForm"]["message"].value;
                  if (f === "" || t === "" || s === "" || msg === "") {
                    alert("Please fill all details");
                    return false;
                  }
                }
            </script>
            
        </body>
    </html>
