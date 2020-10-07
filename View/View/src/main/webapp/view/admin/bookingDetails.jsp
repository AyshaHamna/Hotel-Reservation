<%-- 
    Document   : bookingDetails
    Created on : May 3, 2020, 12:23:55 PM
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
            <title>Booking Details</title>
            <style>
                div.DFirst
                    {
                        position:absolute;
                        justify-content:center;
                        background-color:#07024B;
                        width:1260px;
                        height:510px;
                        top:15%;
                        left:4%;
                    }
	
                div.Dsecond
                    {
                        position:absolute;
                        justify-content:center;
                        background-color:#fff;
                        width:1208px;
                        height:400px;
                        top:32%;
                        left:8%;
                    }
                    .Dsecond table
                    {
                        border-collapse: collapse;
                        width: 100%;
                    }

                    .Dsecond td,.Dsecond th 
                    {
                        border: 1px solid #dddddd;
                        text-align: left;
                        padding: 8px;
                    }

                    tr:nth-child(even) {
                        background-color: #dddddd;
                    }
                    h1 
                    {
                        color: white;
                        text-shadow: 1px 1px 2px black, 0 0 25px blue, 0 0 5px darkblue;
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
                        <li><a href="/add-reception">Register</a></li>
                        <li class="clicked"><a href="/view-all-reports">View Report</a></li>
                        <li><a href="/home">Logout</a></li>
                    </ul>
                </div>
            </header>
        
            <div class=DFirst>
                <center><h1>Booking Details</h1></center>
            </div>
            <div class=Dsecond>
                <div>
                    <table>
                        <tr>
                            <th>Booking Reference ID</th>
                            <th>First Name</th>
                            <th>Last Name</th>
                            <th>Email</th>
                            <th>Phone Number</th>
                            <th>Room Type</th>
                            <th>From Date</th>
                            <th>To Date</th>
                            <th>Amount</th>
                        </tr>
                        <c:forEach items="${books}" var="book">
                            <tr>                        
                                <td><c:out value="${book.bookReferenceId}"/></td>
                                <td><c:out value="${book.firstName}"/></td>
                                <td><c:out value="${book.lastName}"/></td>
                                <td><c:out value="${book.email}"/></td>
                                <td><c:out value="${book.phoneNumber}"/></td>
                                <td><c:out value="${book.roomType}"/></td>
                                <td><c:out value="${book.fromDate}"/></td>
                                <td><c:out value="${book.toDate}"/></td>
                                <td><c:out value="${book.amount}"/></td>
                            </tr>                                  
                        </c:forEach>
                    </table>
                </div>
            </div>
            <jsp:include page="/view/footer.jsp"/>
        </body>
    </html>

