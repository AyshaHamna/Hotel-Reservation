<%-- 
    Document   : home
    Created on : Mar 26, 2020, 4:40:51 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

    <html>
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
            <title>Home</title>
            <style>
   .main
    {
          position:absolute;
           background-image: url("home.jpg");
       width: 100%;height: 100%;
           top:0;
       left:0;
        }
        .main img{ top: 0; left: 0;width: 100%;height: 100%;}
   .main-cover
    {
          opacity: 0.4;
          position:absolute;
          background-color: #07024B;
      width:100%;
      height:100%;
          bottom:0;
      left:0;
        }
        .main-nav{
          position:absolute;
      width:70%;
      height:70px;
          bottom:20%;
      left:13%;
          }
    li {list-style-type: none;}
    a{text-decoration:none;}
        .main-nav a{color: white;}
    .main-nav a:link{color: white;}
        .main-nav a:hover, .main-nav a:active {color: white;}
    .main-nav ul{float:right}
    .main-nav li{display: inline-block;margin-left:0.5em;margin-right:2em;font-size:2em;}
        .button{
           position:absolute;
            border-radius: 12px;
                background-color:#4CAF50;
                border: none;
                color: white;
                padding: 16px 32px;
                text-align: center;
                text-decoration: none;
                display: inline-block;
                font-size: 20px;
                margin: 4px 2px;
                transition-duration: 0.4s;
                cursor: pointer;
                left:43%;
                top:30%;
                }
                .button a, .footer-button a{color: white;}
                 .button:hover {
                  background-color: #3e8e41;
                  color: white;
        }
                .button:hover {
  box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24), 0 17px 50px 0 rgba(0,0,0,0.19);
}
       .qoute {position:absolute;left:31%;top:5%;color: #c68c53;font-size:32;

                        .vl {border-left: 3px solid green;height: 60px;}

            </style>
        </head>
        <body bgcolor="#F0F8FF">
             <div class=main>
	 <img src="/image/home.jpg" alt="Hotel Image"/>
	</div>
	<div class=main-cover>
	</div>
	<h2 class="qoute"><i>"Suit yourself with comfort and Luxury"</i></h2>
	<button class="button"><a href="/add-reservation">BOOK NOW</a></button>
	<div class="main-nav">
            <ul><b>
               <li><a href="/about">ABOUT</a></li>
               <li><a href="/reservation-by-id">FIND RESERVATION</a></li>
               <li><a href="/add-contact">CONTACT</a></li></b>
            </ul>
	</div>
        <jsp:include page="/view/footer.jsp" />
        </body>
    </html>
