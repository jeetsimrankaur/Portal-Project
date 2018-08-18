<%@page contentType="text/html" pageEncoding="UTF-8" language="java" import="java.sql.*,java.util.*,java.time.*"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body bgcolor="">             
         
        <%
       if(session.getAttribute("sem")==null)
            {
            response.sendRedirect("index.jsp?ses=exp");
            return;
            }
     %>
     <table cellspacing="0" width="1430">
            <tr>
                <td colspan='3' height='80'   bgcolor='orange' align='center'>
                    <font size=20 color='black' align='center' >UCOE PORTAL</font>
                </td>
            </tr>
           
            </tr>
             <tr>
                 <td colspan="3" height=100 bgcolor="orange">
                     <marquee><img src='images/anidog.gif'><img src='images/anidog.gif'><font size="20">WELCOME TO</font><font size="20" color="red"> UNIVERSITY COLLEGE OF ENGINEERING (UCOE) PUNJABI UNIVERSITY,PATIALA</font></marquee>   
                 </td>
             </tr>
</table>
 
 <br><br><font size="35"><b>Welcome <font color="orange"><%=session.getAttribute("sname")%></font> in student portal</b> <a href="slogout.jsp">(log out)</a></font><br><br><br><br>

 
          <table cellspacing="0" height="350" align="left" width="1430" bgcolor="lightyellow" align="center">  
            <tr>
                <td width="630" valign="top" halign="left">

<font size="18">*<a href="addsnotice.jsp">Add new notice</a></font><br>
<font size="18">*<a href="additem.jsp">Add new item for sale</a></font><br>
<font size="18">*<a href="snotice.jsp">View Notices</a></font><br>
<font size="18">*<a href="sitem.jsp">View items for sale</a></font><br><br>



            </td>
            <td ><font size="6">