<%
String id=DBUCOE.dbucoelayer.getScaler("select studentid from student where email='"+request.getParameter("t1")+"' and password='"+request.getParameter("t2")+"' and active=true");
if(id==null || id.equals(""))
    response.sendRedirect("slogin.jsp?p=2");
else
{
    session.setAttribute("sid",id);
    session.setAttribute("sem",request.getParameter("t1"));
    String sname=DBUCOE.dbucoelayer.getScaler("select studentname from student where studentid="+id);
    session.setAttribute("sname",sname);
    String cont=DBUCOE.dbucoelayer.getScaler("select mobileno from student where studentid="+id);
    session.setAttribute("contact",cont);
    
    response.sendRedirect("swelcome.jsp");

}
%>