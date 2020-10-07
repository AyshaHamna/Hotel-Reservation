<%-- 
    Document   : findReservation
    Created on : Apr 7, 2020, 5:19:10 PM
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
            <title>Find Reservation</title>
            <style>
                div.DFirst
                    {
                        position:absolute;
                        justify-content:center;
                        background-image: url("/image/reserve.jpg");
                        width:900px;
                        height:520px;
                        top:15%;
                        left:15%;
                    }
                    .DFirst img
                    {
                        max-width: 40%;
                        max-height: 40%;
                        display: block; 
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
                    }
                div.Dthird
                    {
                        position:absolute;
                        justify-content:center;
                        width:120px;
                        height:130px;
                        top:25%;
                        left:20%;
                        background-image: url("/image/find.png");
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
                        width:200px
                    }
                    input[type=text]
                    {
                        width:200px;
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
                        cursor: pointer;
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
                        <li><a href="/home">Home</a></li>
                        <li><a href="/add-reservation">Book</a></li>
                        <li class="clicked"><a href="/reservation-by-id">Find Reservation</a></li>
                        <li><a href="/add-contact">Contact</a></li>
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
                <div class=Dfourth><br>
                    <form method="POST" action="/view-reservation" modelAttribute="book">
                        <p>Find your reservation</p><br>
                        <input type="text" path="bookReferenceId" name="bookReferenceId" placeholder="Confirmation Number"><br><br>
                        <input type=submit value="Search">
                    </form>
                </div>
            </div>
        
            <jsp:include page="/view/footer.jsp" />
        
        </body>
    </html>
