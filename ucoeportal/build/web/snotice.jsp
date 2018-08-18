
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
        <font size=8 color=green>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; Notices.......</font>
   
   
   
        <table cellspacing="18" width=800 align="center">
            <tr>
                
                <th width=100 >Title</th>
                <th width=400 >Description</th>
                <th width=50 >Active</th>
                <th width="100"></th>
              
            </tr>
        <%
          ResultSet rs=DBUCOE.dbucoelayer.getResult("select * from notice ");
          while(rs.next())
              {
                  
                    if(request.getParameter("id")!=null &&  request.getParameter("id").equals(rs.getString(1)) )
                        out.print("<form name=ff method=post action=updatesnotice.jsp?id="+rs.getString(1)+" ><tr height=40 bgcolor=yellow ><td>"+rs.getString(2)+"</td><td>"+rs.getString(4)+"</td><td><input type=checkbox name=chk1 "+(rs.getString(6).equals("1")?" checked ":"" )+"  ></td><td align=center><input type=submit value=save > - <input type=button value=cancel onclick=\"window.location='snotice.jsp'\"></td></tr></form>"); 
                    else
                        out.print("<tr><td>"+rs.getString(2)+"</td><td>"+rs.getString(4)+"</td><td><input type=checkbox name=chk1 "+(rs.getString(6).equals("1")?" checked ":"" )+" disabled ></td>"+(rs.getString(3).equals(session.getAttribute("sid"))?"<td align=center><a href=snotice.jsp?id="+rs.getString(1)+" >edit </a> - <a href=deletesnotice.jsp?id="+rs.getString(1)+" >delete</a></td>":"<td></td>")+"</tr>");
              }
          if(request.getParameter("p")!=null)
                out.print("<BR><font color=green>noticeid= "+request.getParameter("nid")+" updated</font><br>");
          if(request.getParameter("q")!=null)
                out.print("<BR><font color=green>noticeid= "+request.getParameter("nid")+" deleted</font><br>");
          
        %>
        
        </table>
        <br><br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<a href="swelcome.jsp">Back to Welcome Page</a>

    </body>
</html>
   
    
