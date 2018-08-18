<%@page contentType="text/html" pageEncoding="UTF-8" language="java" import="java.sql.*,java.util.*"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head> 

<%
        if(session.getAttribute("adem")==null)
            {
            response.sendRedirect("index.jsp?ses=exp");
            return;
            }
 %>
 
 <table cellspacing="0" width="1230">
            <tr>
                <td colspan='3' height='80'   bgcolor='orange' align='center'>
                    <font size=20 color='black' align='center' >UCOE PORTAL</font>
                </td>
            </tr>
           
            </tr>
             <tr>
                 <td colspan="3" height=100 bgcolor="lightgrey">
                     <marquee><img src='images/anidog.gif'><img src='images/anidog.gif'><font size="20">WELCOME TO</font><font size="20" color="red"> UNIVERSITY COLLEGE OF ENGINEERING (UCOE) PUNJABI UNIVERSITY,PATIALA</font></marquee>   
                 </td>
             </tr>
</table>
 <br><br><font size="30"><b>Welcome <font color="orange"><%=session.getAttribute("usrname")%></font> in admin portal</b> <a href="adminlogout.jsp">(log out)</a></font><br><br><br><br>

 <table cellspacing="0" height="350"  width="1230" bgcolor="lightgrey" align="left">  
            <tr>
                <td width="630" valign="top" align="left">

                    <font size="18">*<a href="addadminnotice.jsp">Add new notice</a></font><br>
                    <font size="18">*<a href="studentrecord.jsp">Student record</a></font><br>
                    <font size="18">*<a href="addstudentrecord.jsp">Add new Student record</a></font><br>
                    <font size="18">*<a href="viewregistered.jsp">Registered Student</a></font><br>
                   
  </td>
            <td ><font size="6">