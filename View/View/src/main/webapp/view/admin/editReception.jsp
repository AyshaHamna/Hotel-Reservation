<%-- 
    Document   : editReception
    Created on : Apr 9, 2020, 1:00:27 PM
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
            <title>Edit Reception</title>
            <style>
                div.DFirst
                    {
                        position:absolute;
                        justify-content:center;
                        top:15%;
                        left:20%;
                    }
	
                div.DSecond
                    {
                        position:absolute;
                        justify-content:center;
                        background-color:#fff;
                        width:350px;
                        height:500px;
                        top:15%;
                        left:60.5%;
                    }
                    .mySlides
                    {
                        display:none;
                    }
	
                    .DSecond p
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
                        height:120px;
                        width:200px
                    }
                    input[type=text],input[type=password]
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
                        margin-left:97px;
                        margin-top:5px;
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
                        <li class="clicked"><a href="/add-reception">Register</a></li>
                        <li><a href="/view-all-reports">View Report</a></li>
                        <li><a href="/home">Logout</a></li>
                    </ul>
                </div>
            </header>
        
            <div class=DFirst>
                <img class="mySlides" src="/image/registering/register3.jpg" width=500px height=500px>
                <img class="mySlides" src="/image/registering/register4.jpg" width=500px height=500px>
                <img class="mySlides" src="/image/registering/register6.jpg" width=500px height=500px>
                <img class="mySlides" src="/image/registering/register7.jpg" width=500px height=500px>
                <img class="mySlides" src="/image/registering/register8.jpg" width=500px height=500px>
                <img class="mySlides" src="/image/registering/register9.jpg" width=500px height=500px>
            </div>
        
            <script>
                var myIndex = 0;
                carousel();

                function carousel() {
                    var i;
                    var x = document.getElementsByClassName("mySlides");
                    for (i = 0; i < x.length; i++) {
                    x[i].style.display = "none";  
                    }
                    myIndex++;
                    if (myIndex > x.length) {myIndex = 1;}    
                    x[myIndex-1].style.display = "block";  
                    setTimeout(carousel, 2000); // Change image every 2 seconds
                }
            </script>
        
            <div class=DSecond>
                <form method="POST" action="/reception-updated/${reception.id}" modelAttribute="reception" onsubmit="return validateForm()" name="receptionEditForm">
                    <center><p>Edit a Reception</p></center>
                    <input type=text path="nic" name=nic id=nic value="${reception.nic}" placeholder="NIC"> <br>
                    <input type=text path="firstName" name=FirstName id=FirstName value="${reception.firstName}" placeholder="First Name"> <br>
                    <input type=text path="lastName" name=LastName  id=LastName  value="${reception.lastName}" placeholder="Last  Name"> <br>
                    <input type=text path="address" name=Address id=Address value="${reception.address}" placeholder="Address"> <br>
                    <input type=text path="username" name=Username id=Username value="${reception.username}" placeholder="Username"> <br>
                    <input type=text path="password" name=Password id=Password value="${reception.password}" placeholder="Password"> <br>
                    <input type=text name=confirmPassword id=confirmPassword value="${reception.password}" placeholder="Confirm Password"><br>
                    <input type="hidden" id="receptionReferenceId" name="receptionReferenceId" value="${reception.receptionReferenceId}">
                    <input type= submit value="Edit">
                </form>
            </div>

            <jsp:include page="/view/footer.jsp" />
            
            <script type="text/javascript">
                function validateForm() {
                  var n = document.forms["receptionEditForm"]["nic"].value;
                  var fn = document.forms["receptionEditForm"]["firstName"].value;
                  var ln = document.forms["receptionEditForm"]["lastName"].value;
                  var add = document.forms["receptionEditForm"]["address"].value;
                  var un = document.forms["receptionEditForm"]["username"].value;
                  var pw = document.forms["receptionEditForm"]["password"].value;
                  var cpw = document.forms["receptionEditForm"]["confirmPassword"].value;
               
                  if (n === "" || fn === "" || ln === "" || add === "" || un === "" || pw === "" || cpw === "") {
                    alert("Please fill all details");
                    return false;
                  }
                  else if(pw!==cpw){
                      alert("Both passwords should match");
                      return false;
                  }
                }
            </script>
            
        </body>
    </html>
