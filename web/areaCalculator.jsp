<%-- 
    Document   : areaCalculator
    Created on : Feb 1, 2016, 8:08:03 AM
    Author     : John
--%>

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
                
                height: 100px;
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
                border-style: outset;
            }
            #triangle{
                background-color: green;
                font-size: 24px;
                width: 800px;
                color: white;
                border-style: outset;
                
            }
            #rectangle{
                background-color: black;
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
            
            <input class="btn" type="submit" name="submit" value="Calculate"/>
            
            
        </form>
        <h1><%
                Object responseObj = request.getAttribute("myRecMSG");
                Object errObj = request.getAttribute("errorMSG");
                
                if(responseObj != null){
                   out.println(responseObj.toString()); 
                }
                if(errObj != null){
                   out.println(errObj.toString()); 
                }
        %></h1></div>
    
        <div id="circle"><h1>Find the area of a Circle</h1>
        
        <form  method="POST" action="areaCalc?calculator=circle">
            <label>Enter Radius</label>
            <input type="number" name="radius" value=""/>
            <br>
            
            <input class="btn" type="submit" name="submit" value="Calculate"/>
            
            
        </form>
        <center><h1><%
                Object responseObj2 = request.getAttribute("myCirMSG");
                Object errObj2 = request.getAttribute("errorMSG");
                
                if(responseObj2 != null){
                   out.println(responseObj2.toString()); 
                }
                if(errObj2 != null){
                   out.println(errObj2.toString()); 
                }
        %></h1></div>
        
        <div id="triangle"><h1>Find the area of a Triangle</h1>
        
        <form  method="POST" action="areaCalc?calculator=triangle">
            <label>Enter Base</label>
            <input type="number" name="base" value=""/>
            <label>Enter Height</label>
            <input type="number" name="height" value=""/>
            
            <input class="btn" type="submit" name="submit" value="Calculate"/>
            
            
        </form>
        <h1><%
                Object responseObj3 = request.getAttribute("myTriMSG");
                Object errObj3 = request.getAttribute("errorMSG");
                
                if(responseObj3 != null){
                   out.println(responseObj3.toString()); 
                }
                if(errObj3 != null){
                   out.println(errObj3.toString()); 
                }
                %></h1></div></center>
    </body>
</html>
