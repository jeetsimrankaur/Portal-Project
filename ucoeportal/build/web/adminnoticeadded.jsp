
<%
// insert the record in database
 String noticeid=request.getParameter("t0");
 String noticetitle=request.getParameter("t2");
 String description=request.getParameter("t4");
 String active=request.getParameter("t6")==null?"0":"1";
            
 if(DBUCOE.dbucoelayer.executeq("insert into notice(noticetitle,posterid,description,dateofnotice,active,postertype) values ('"+noticetitle+"',0,'"+description+"',now(),'"+active+"','admin')")==true)
       response.sendRedirect("adminwelcome.jsp?p=2");
 else
       response.sendRedirect("addadminnotice.jsp");

%>