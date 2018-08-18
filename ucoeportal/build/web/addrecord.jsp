<%
// insert the record in database
 String rollno=request.getParameter("t1");
 String sname=request.getParameter("t2");
 String gp=request.getParameter("t3");
 String s1=request.getParameter("t4");
 String fr1=request.getParameter("t5");
 String s2=request.getParameter("t6");
 String fr2=request.getParameter("t7");
 String s3=request.getParameter("t8");
 String fr3=request.getParameter("t9");
 String s4=request.getParameter("t10");
 String fr4=request.getParameter("t11");
 String dh=request.getParameter("rb");
 
 if(DBUCOE.dbucoelayer.executeq("insert into studentrecord values ("+rollno+",'"+sname+"','"+gp+"','"+s1+"',"+fr1+",'"+s2+"',"+fr2+",'"+s3+"',"+fr3+",'"+s4+"',"+fr4+",'"+dh+"')")==true)
       response.sendRedirect("adminwelcome.jsp?j=2");
 else
       response.sendRedirect("addteacher.jsp");
%>
