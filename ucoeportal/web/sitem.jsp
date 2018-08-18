

<%@page contentType="text/html" pageEncoding="UTF-8" language="java" import="java.sql.*"%>
<html>
    <body bgcolor="lightyellow">
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
<font size=8 color=green >&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; ITEMS.......</font>

        <table border=0 width=1000 align="center" cellspacing="20">
            <tr>
                
                <th width=200 >Title</th>                
                <th width=70 >Quantity</th>
                <th width=70 >category</th>
                <th width=450 >Description</th>               
                <th width=100 >mrp</th>
                <th width=70 >itemstatus</th>
                <th width=100 >discountedprice</th>
                <th width="100"></th>
              
            </tr>
        <%
          ResultSet rs=DBUCOE.dbucoelayer.getResult("select * from item where contact="+session.getAttribute("contact"));
          while(rs.next())
              {
                  
                    if(request.getParameter("id")!=null &&  request.getParameter("id").equals(rs.getString(1)) )
                        out.print("<form name=ff method=post action=updateitem.jsp?id="+rs.getString(1)+" ><tr height=40 bgcolor=yellow ><td>"+rs.getString(2)+"</td><td align=center><input type=text name=t2 value="+rs.getString(3)+"></td><td>"+rs.getString(4)+"</td><td>"+rs.getString(5)+"</td><td>"+rs.getString(6)+"</td><td>"+rs.getString(8)+"</td><td align=center><input type=text name=t8 value="+rs.getString(9)+"></td><td align=center><input type=submit value=save > - <input type=button value=cancel onclick=\"window.location='sitem.jsp'\"></td></tr></form>"); 
                    else
                        out.print("<tr><td>"+rs.getString(2)+"</td><td>"+rs.getString(3)+"</td><td>"+rs.getString(4)+"</td><td>"+rs.getString(5)+"</td><td>"+rs.getString(6)+"</td><td>"+rs.getString(8)+"</td><td>"+rs.getString(9)+"</td><td align=center><a href=sitem.jsp?id="+rs.getString(1)+" >edit </a> - <a href=deleteitem.jsp?id="+rs.getString(1)+" >delete</a></td></tr>");
              }
        if(request.getParameter("p")!=null)
                out.print("<BR><font color=green>itemid= "+request.getParameter("iid")+" updated</font><br>");
          if(request.getParameter("q")!=null)
                out.print("<BR><font color=green>itemid= "+request.getParameter("iid")+" deleted</font><br>");
            
        %>
        </table>
        <br><br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<a href="swelcome.jsp">Back to Welcome Page</a>
        
    </body>
</html>
   
    
