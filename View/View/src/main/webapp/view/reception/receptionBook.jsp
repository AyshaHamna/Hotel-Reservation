<%-- 
    Document   : receptionBook
    Created on : May 2, 2020, 12:58:21 PM
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
            <title></title>
            <style>
                div.DFirst
                    {
                        position:absolute;
                        justify-content:center;
                        background-image: url("/image/book2.jpg");
                        width:830px;
                        height:450px;
                        top:20%;
                        left:15%;
                        bottom:15em;
                    }
                div.transbox
                    {
                        position:absolute;
                        justify-content:center;
                        margin: 30px;
                        background-color: #07024B;
                        border: 1px solid black;
                        opacity: 0.6;
                        width:828px;
                        height:448px;
                        top:15.4%;
                        left:12.8%;
                    }
                    div.DSecond 
                    {
                        position:absolute;
                        justify-content:center;
                        background-color:#fff;
                        width:300px;
                        height:550px;
                        top:13%;
                        left:50.5%;
                    }
                    .DSecond p
                    {
                        color:#07024B;
                        text-align:center;
                        font-size:24px;
                        font-weight:bold;
                        font-style:italic;

                    }
                    input,textarea,select
                    {
                        display:block;
                        margin:0 auto;
                        background-color:transparent;
                        color:#07024B;
                        font-weight:bold;
                    }
                    textarea,select
                    {
                            height:120px;
                            width:200px
                    }
                    input[type=text],input[type=password],input[type=number], input[type=date], select,input[type=email],input[type=datetime]
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
                        margin-left:70px;
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
        <body bgcolor="#e8e6fe">
            
            <header>
                <div class="nav-bar">
                    <ul>
                        <li><a href="/view-all-contacts">View Feedback</a></li>
                        <li><a href="/view-all-reservations">View bookings</a></li>
                        <li class="clicked"><a href="/rec-add-reservation">Book</a></li>
                        <li><a href="/add-email">Email</a></li>
                        <li><a href="/home">Logout</a></li>
                    </ul>
                </div>
            </header>

            <div class=DFirst>
            </div>
            <div class=transbox>
            </div>
             <div class=DSecond>
                <form method="POST" action="/rec-reservation-added" modelAttribute="book" onsubmit="return validateForm()" name="reservationForm">
                   
                    <p>Make Your Reservation</p><br>
                    <input type="text" path="firstName" name="firstName" id="fname" placeholder="First Name"><br>
                    <input type="text" path="lastName" name="lastName" id="lname" placeholder="Last Name"><br>
                    <input type="email" path="email" name="email" id="email" placeholder="Email"><br>
                    <input type="text" path="phoneNumber" name="phoneNumber" id="phone" placeholder="phone number"><br>
                    <select path="roomType" name="roomType" id="roomType" onchange="calAmount()"><br>
                        <option value="roomType">--Select Room  Type--</option>
                        <option value="single">Single Room</option>
                        <option value="double">Double Room</option>
                    </select> <br>
                    <input type="date" path="fromDate" name="fromDate" id="fromDate" placeholder="From"><br>
                    <input type="date" path="toDate" name="toDate" id="toDate" placeholder="TO" onchange="cal()">
                    <input type="hidden" name="days" id="days" value="0"><br>
                    <input type="number" path="amount" name="amount" id="amount" placeholder="Amount" value="0" readonly><br><br><br>
                    <!--${exception}-->
                    <input type=submit value="Submit">
                </form>
            </div>
                    
            <jsp:include page="/view/footer.jsp" />
            
            <script type="text/javascript">
                
                function calAmount() {
                  var selectBox = document.getElementById("roomType");
                  var selectedValue = selectBox.options[selectBox.selectedIndex].value;
                  if(selectedValue==="single"){
                  document.getElementById("amount").value = 1000;
                  }
                  else if(selectedValue==="double"){
                  document.getElementById("amount").value = 2000;
                  }
                  else{
                  document.getElementById("amount").value = 0;
                  }
                }
                
                function GetDays(){
                            var todt = new Date(document.getElementById("toDate").value);
                            var fromdt = new Date(document.getElementById("fromDate").value);
                            return parseInt((todt - fromdt) / (24 * 3600 * 1000));
                      }
	
                function cal(){
                    if(document.getElementById("toDate")){
                        var days = document.getElementById("days").value=GetDays();
                        var amount = document.getElementById("amount").value;
                        document.getElementById("amount").value = (days*amount);
                    }  
                }
                
                function validateForm() {
                  var fn = document.forms["reservationForm"]["firstName"].value;
                  var ln = document.forms["reservationForm"]["lname"].value;
                  var e = document.forms["reservationForm"]["email"].value;
                  var p = document.forms["reservationForm"]["phone"].value;
                  var rt = document.forms["reservationForm"]["roomType"].value;
                  var fd = document.forms["reservationForm"]["fromDate"].value;
                  var td = document.forms["reservationForm"]["toDate"].value;
                  var a = document.forms["reservationForm"]["amount"].value;
                  if (fn === "" || ln === "" || e === "" || p === "" || rt === "" || fd === "" || td === "" || a === "") {
                    alert("Please fill all details");
                    return false;
                  }
                }
                
            </script>
            
                    
        </body>
    </html>
