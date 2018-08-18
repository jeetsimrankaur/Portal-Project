<%
// insert the record in database
 String teacherid=request.getParameter("t0");
 String email=request.getParameter("t1");
 String name=request.getParameter("t2");
 String mobileno=request.getParameter("t4");
 String subject=request.getParameter("t5");
 String password=request.getParameter("t6");
 
 
 if(DBUCOE.dbucoelayer.executeq("insert into teacher(email,teachername,password,mobileno,subject) values ('"+email+"','"+name+"','"+password+"',"+mobileno+",'"+subject+"')")==true)
       response.sendRedirect("teachadded.jsp");
 else
       response.sendRedirect("addteacher.jsp");
%>