<%-- 
    Document   : footer
    Created on : Apr 3, 2020, 11:18:36 AM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
    <html>
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
            <title></title>
            <style>
                footer li{display: inline-block;}
	   
           .footer-info{position:absolute;height:25%;width:100%;left:0;top:100%;background-color: #ecd9c6;margin:0;display:flex;color:  #734d26;bottom:2em;display:block;}

           .footer-info a{color: #734d26;text-decoration:none;}
           .footer-info li{padding-left: 95px;padding-right: 12px;}
	   
           .footer-button{
                        border-radius: 8px;
                        background-color:#595959;
                        border: none;
                        padding: 16px 32px;
                        text-align: center;
                        text-decoration: none;
                        display: inline-block;
                        font-size: 14px;
                        margin: 4px 2px;
                        transition-duration: 0.4s;
                        cursor: pointer;
                        }
			
                        .footer-button a{
                            color: white;
                        }

                        .footer-icons{display:block;position:absolute;height:51%;width:100%;left:0;bottom:0; top:100%;background-color: #dfbf9f;display:flex;color:  #734d26;bottom:2em;display:block;font-size:16;margin: 0;padding-left: 0;list-style: none;}
                        .footer-icons li{padding-left: 10px;padding-right: 10px;}
            </style>
        </head>
        <body>
            <footer>
	 <div class="footer-info">
	  <ul>
		  <li><p>+ 94 11 2 492 4922<br><br>Sir Chittampalam A Gardiner Mawatha, Colombo 02</p></li>
		  <li><b><a style="font-size:20;" href="/reception-login">Reception Login</a></b></li>
		  <li><b><a style="font-size:20;" href="/admin-login">Admin Login</a></b></li>
		  <li><button class="footer-button"><a href="/add-contact">ContactUs</a></button></li>
	  </ul>
	  <div>
	  <div class="footer-icons">
	   <ul>
		  <li><p style="padding-right: 60em;">Hilton</p></li>
		  <li><a href="https://www.facebook.com/HiltonColombo/"><img src="/image/facebook.png"/></a></li>
		  <li><a href="https://www.instagram.com/hiltoncolombo/"><img src="/image/instagram.png"/></a></li>
		  <li><a href="https://twitter.com/ColomboHilton"><img src="/image/twitter.png"/></a></li>
		  <li><a href="https://www.youtube.com/user/thehiltoncolombo1"><img src="/image/youtube.png"/></a></li>
	  </ul>
	  <div>
	</footer>
        </body>
    </html>
