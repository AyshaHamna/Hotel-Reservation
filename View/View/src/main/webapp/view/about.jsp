<%-- 
    Document   : about
    Created on : Apr 28, 2020, 3:23:36 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

    <html>
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
            <title>About Us</title>
            <style>
                .nav-bar{display:block;position:absolute;height:10%;width:100%;left:0;top:0;background-color: #0b037c;text-align: right;font-size:20px;}
                .nav-bar li{display: inline-block;}
                .nav-bar a{text-decoration:none;color:#bfbfbf;padding-right: 4em;}
                .nav-bar a:hover,.nav-bar a:active{color:white;}
                .aboutHotel{margin-top: 20%;}
            </style>
        </head>
        <body bgcolor="#e8e6fe">
            <header>
                <div class="nav-bar">
                    <ul>
                        <li><a href="/home">Home</a></li>
                        <li class="clicked"><a href="/add-reservation">Book</a></li>
                        <li><a href="/reservation-by-id">Find Reservation</a></li>
                        <li><a href="/add-contact">Contact</a></li>
                    </ul>
                </div>
            </header>
        
        <div class="aboutHotel">
            <p>The Panoramic Hotel is a modern, elegant 4-star hotel overlooking the sea, perfect for a romantic, charming vacation, in the enchanting setting of Taormina and the Ionian Sea.

The rooms at the Panoramic Hotel are new, well-lit and inviting. Our reception staff will be happy to help you during your stay in Taormina, suggesting itineraries, guided visits and some good restaurants in the historic centre.</p>
        </div>
        
            <jsp:include page="/view/footer.jsp" />
        </body>
    </html>
