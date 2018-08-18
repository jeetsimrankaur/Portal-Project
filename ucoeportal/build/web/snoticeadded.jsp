
<%
// insert the record in database
 String noticeid=request.getParameter("t0");
 String noticetitle=request.getParameter("t1");
 String description=request.getParameter("t3");
  String active=request.getParameter("t4")==null?"0":"1";
 
            
 if(DBUCOE.dbucoelayer.executeq("insert into notice(noticetitle,posterid,description,dateofnotice,active,postertype) values ('"+noticetitle+"',"+session.getAttribute("sid") +",'"+description+"','"+java.time.LocalDate.now()+"','"+active+"','student')")==true)
       response.sendRedirect("swelcome.jsp?p=2");
 else
       response.sendRedirect("addsnotice.jsp");

%>