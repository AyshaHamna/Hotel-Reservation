<%-- 
    Document   : viewReport
    Created on : May 2, 2020, 2:10:42 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

    <html>
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
            <title>View Report</title>
            
            <style>
                div.DFirst
                    {
                        position:absolute;
                        justify-content:center;
                        background-image: url("/image/report.jpg");
                        width:800px;
                        height:510px;
                        top:15%;
                        left:20%;
                        border-radius: 25px;
                    }
                div.transbox
                    {
                        position:absolute;
                        justify-content:center;
                        margin: 30px;
                        background-color: #07024B;
                        border: 1px solid black;
                        opacity: 0.8;
                        width:800px;
                        height:510px;
                        top:10%;
                        left:17.5%;
                        border-radius: 25px;
                    }
                div.Dsecond
                    {
                        position:absolute;
                        justify-content:center;
                        background-color:#fff;
                        width:450px;
                        height:250px;
                        top:34%;
                        left:33.5%;
                        border-radius: 25px;
                    }
                    h1 
                    {
                        color: white;
                        text-shadow: 1px 1px 2px black, 0 0 25px blue, 0 0 5px darkblue;
                    }
                    
                    .Dsecond button
                    {
                        
                        background-color:#07024B;
                        width:130px;
                        height:40px;
                        border-radius: 12px;
                        border: 2px solid #fff;	
                        margin-left:12px;
                        margin-top:105px;
                    }
                    
                    .Dsecond a
                    {
                        text-decoration: none;
                        color:white;
                    }

                    button:hover 
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
                        <li class="clicked"><a href="/add-reception">Register</a></li>
                        <li><a href="/view-all-reports">View Report</a></li>
                        <li><a href="/home">Logout</a></li>
                    </ul>
                </div>
            </header>
        
            <div class=DFirst>
            </div>
            <div class=transbox>
                <center><h1>Report</h1></center>
            </div>
            <div class=Dsecond>
                <button><a href="/all-contacts">Feedback</a></button>
                <button><a href="/all-receptions">Reception</a></button>
                <button><a href="/all-reservations">Booking</a></button>
            </div>
        
            <jsp:include page="/view/footer.jsp" />
            
        </body>
    </html>
