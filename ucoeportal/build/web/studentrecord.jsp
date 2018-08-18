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
              
        <font size=8 color=green>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; Student Record.....</font>
   
   
   
        <table cellspacing="18"  align="center">
            <tr>
                
                <th width=100 >Rollno.</th>
                <th width=150 >Student name</th>
                <th width=100 >Group</th>
                <th width=100 >SGPA SEM1</th>
                <th width=100 >Fee receipt SEM1</th>
                <th width=100 >SGPA SEM2</th>
                <th width=100 >Fee receipt SEM2</th>
                <th width=100 >SGPA SEM3</th>
                <th width=100 >Fee receipt SEM3</th>
               <th width=100 >SGPA SEM4</th>
                <th width=100 >Fee receipt SEM4</th>
                <th width=150 >Day scholar/hosterler</th>
               
              
            </tr>
        <%
          ResultSet rs=DBUCOE.dbucoelayer.getResult("select * from studentrecord ");
          while(rs.next())
              {
                  
                       out.print("<tr><td>"+rs.getString(1)+"</td><td>"+rs.getString(2)+"</td><td>"+rs.getString(3)+"</td><td>"+rs.getString(4)+"</td><td>"+rs.getString(5)+"</td><td>"+rs.getString(6)+"</td><td>"+rs.getString(7)+"</td><td>"+rs.getString(8)+"</td><td>"+rs.getString(9)+"</td><td>"+rs.getString(10)+"</td><td>"+rs.getString(11)+"</td><td>"+rs.getString(12)+"</td></tr>");
          }
          
        %>
        
        </table>
        <br><br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<a href="adminwelcome.jsp">Back to Welcome Page</a>

    </body>
</html>
   
