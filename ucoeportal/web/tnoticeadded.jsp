<%
// insert the record in database
 String noticeid=request.getParameter("t1");
 String noticetitle=request.getParameter("t2");
 String description=request.getParameter("t4");
 String active=request.getParameter("t6")==null?"0":"1";
 
            
 if(DBUCOE.dbucoelayer.executeq("insert into notice(noticetitle,posterid,description,dateofnotice,active,postertype) values ('"+noticetitle+"',"+session.getAttribute("tid")+",'"+description+"','"+java.time.LocalDate.now()+"','"+active+"','teacher')")==true)
       response.sendRedirect("twelcome.jsp?p=2");
 else
       response.sendRedirect("tnoticeadded.jsp");

%>