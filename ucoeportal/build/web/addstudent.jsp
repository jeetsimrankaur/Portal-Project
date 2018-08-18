<%
// insert the record in database
 String studentid=request.getParameter("t0");
 String email=request.getParameter("t1");
 String name=request.getParameter("t2");
 String rollno=request.getParameter("t3");
 String gender=request.getParameter("rb");
 String city=request.getParameter("t5");
 String mobile=request.getParameter("t7");
 String state=request.getParameter("t8");
 String password=request.getParameter("t9");
 
if(DBUCOE.dbucoelayer.executeq("insert into student(email,studentname,rollno,gender,city,password,mobileno,state) values ('"+email+"','"+name+"',"+rollno+",'"+gender+"','"+city+"','"+password+"',"+mobile+",'"+state+"')")==true)
    response.sendRedirect("studadded.jsp");
else
       response.sendRedirect("addstudent.jsp");
 

%>