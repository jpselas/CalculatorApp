<%-- 
    Document   : areaCalculator
    Created on : Feb 1, 2016, 8:08:03 AM
    Author     : John
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Area Calculator</title>
        <style>
            body{
                background-image: url('javaBCKGRND.png');
            }
            .btn{
                background-color: yellow;
                font-style: italic;
                height: 100px;
                border-width: thick;
                border-color: white;
                width: 500px;
                font-size: 48px;
                border-radius: 50%;
            }
            .btn:hover{
                background-color: purple;
            }
            #circle{
                background-color: blue;
                font-size: 24px;
                width: 800px;
                color: white;
                border-color: orange;
                border-style: outset;
                border-width: thick;
            }
            #triangle{
                background-color: green;
                border-width: thick;
                font-size: 24px;
                border-color: gold;
                width: 800px;
                color: white;
                border-style: outset;
                
            }
            #rectangle{
                background-color: black;
                border-width: thick;
                border-color: red;
                font-size: 24px;
                width: 800px;
                color: white;
                border-style: outset;
                
            }
            
        </style>
    </head>
    <body>
    <center><div id="rectangle"><h1>Find the area of a Rectangle</h1>
        
        <form  method="POST" action="areaCalc?calculator=rectangle">
            <label>Enter Width</label>
            <input type="number" name="width" value=""/>
            <label>Enter Length</label>
            <input type="number" name="length" value=""/>
            <br>
            <br>
            <input class="btn" type="submit" name="submit" value="Calculate"/>
            
            
        </form>
            <h1><c:out value="${myRecMSG}"></c:out></h1></div>
    
        <div id="circle"><h1>Find the area of a Circle</h1>
        
        <form  method="POST" action="areaCalc?calculator=circle">
            <label>Enter Radius</label>
            <input type="number" name="radius" value=""/>
            <br>
            <br>
            <input class="btn" type="submit" name="submit" value="Calculate"/>
            
            
        </form>
            <center><h1><c:out value="${myCirMSG}"></c:out></h1></div>
        
        <div id="triangle"><h1>Find the area of a Triangle</h1>
        
        <form  method="POST" action="areaCalc?calculator=triangle">
            <label>Enter Base</label>
            <input type="number" name="base" value=""/>
            <label>Enter Height</label>
            <input type="number" name="height" value=""/>
            <br>
            <br>
            <input class="btn" type="submit" name="submit" value="Calculate"/>
            
            
        </form>
        <h1><c:out value="${myTriMSG}"></c:out></h1></div></center>
    </body>
</html>
