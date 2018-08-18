<%@page contentType="text/html" pageEncoding="UTF-8" language="java" import="java.sql.*,java.util.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <table cellspacing="0" width="1430" align="center">
            
            <tr>
            <td colspan='3' height='80'   bgcolor='orange' align='center'>
                    <font size=20 color='black' align='center' >UCOE PORTAL</font>
                </td>
            </tr>
           
            
             <tr>
                 <td colspan="3" height=100 bgcolor="lightyellow">
                     <marquee><img src='images/anidog.gif'><img src='images/anidog.gif'><font size="20">WELCOME TO</font><font size="20" color="red"> UNIVERSITY COLLEGE OF ENGINEERING (UCOE) PUNJABI UNIVERSITY,PATIALA</font></marquee>   
                 </td>
             </tr>
           
            <tr>
                <td colspan='3'>
                    <img src='images/1.jpg' width='1430' height='400'/>
                    
                </td>
            <tr>
                <td width="350" bgcolor="lightyellow">
                    
                    <font size="5" > <b><font color="red">*-</font></b><a href="intro.jsp">Introduction</a><br>
                    <b><font color="red">*-</font></b><a href="itemavail.jsp">Items available for sale</a><br>
                    <b><font color="red">*-</font></b><a href="viewmap.jsp">Click here to find the location</a> <br>
                    <b><font color="red">*-</font></b>Login Here......<br>
                    <b>----<a href="slogin.jsp">Student</a></b><br>
                    <b>----<a href="tlogin.jsp">Teacher</a></b><br>
                    </font>
                </td>
                <td width="600" height=400 align="center" valign="top" background='images/bulb1.jpg' >
                    <font size=10 color='yellow' bgcolor='orange' >IMPORTANT NOTICES</font>
                <marquee direction="up" height=300 onmouseover="stop()" onmouseout="this.start()">    
                    <%
                    ResultSet rs=DBUCOE.dbucoelayer.getResult("select * from notice where active=true order by noticeid desc");
                    while(rs.next())
                    {
                        out.print("<font size=4 color=white><br><br><b>Date of Notice</b>:-"+rs.getString(5)+"</font>");
                        out.print("<font size=4 color=white><br><b>"+rs.getString(2)+"</b><br>"+rs.getString(4)+"<br>From "+rs.getString(7)+"</font><hr>");
                    }
                    %>
                </marquee>
                </td>
                <td bgcolor="lightyellow" align="center">
                    