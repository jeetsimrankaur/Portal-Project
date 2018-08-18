<%@page contentType="text/html" pageEncoding="UTF-8" language="java" import="java.sql.*"%>

<html>
    <body bgcolor="lightgrey">
         <table cellspacing="0">
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
        <font size=20 color='black' align='center' >ADMIN PORTAL</font><br>
              
        <font size=8 color=green>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; Registered Students.....</font>
   
   
   
        <table cellspacing="18"  align="center">
            <tr>
                
                <th width=100 >Rollno.</th>
                <th width=150 >Student name</th>
                <th width=150 ></th>
                <th width=150 ></th>
               
              
            </tr>
        <%
          ResultSet rs=DBUCOE.dbucoelayer.getResult("select * from student ");
          while(rs.next())
              {
                  
                       out.print("<tr><td>"+rs.getString(3)+"</td><td>"+rs.getString(2)+"</td><td><a href=astudent.jsp?id="+rs.getString(3)+" >inactive</a></td><td><a href=actstudent.jsp?id="+rs.getString(3)+" >active</a></td></tr>");
          }
          
        if(request.getParameter("z")!=null)
                out.print("<BR><font color=green>StudentRollno= "+request.getParameter("studentid")+" inactivated</font><br>");
        if(request.getParameter("p")!=null)
                out.print("<BR><font color=green>StudentRollno= "+request.getParameter("studentid")+" activated</font><br>");
         
          
        %>
        
        </table>
        <br><br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<a href="adminwelcome.jsp">Back to Welcome Page</a>

    </body>
</html>
   
