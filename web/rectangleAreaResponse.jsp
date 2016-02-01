<%-- 
    Document   : rectangleAreaResponse
    Created on : Jan 27, 2016, 7:16:39 PM
    Author     : John
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <center><h1>Your Area</h1></center>
        <center><h1><%
                Object responseObj = request.getAttribute("myMSG");
                Object errObj = request.getAttribute("errorMSG");
                
                if(responseObj != null){
                   out.println(responseObj.toString()); 
                }
                if(errObj != null){
                   out.println(errObj.toString()); 
                }
        %></h1></center> 
    </body>
</html>
