<%
String id=DBUCOE.dbucoelayer.getScaler("select teacherid from teacher where email='"+request.getParameter("t1")+"' and password='"+request.getParameter("t2")+"' and active=true");
if(id==null || id.equals(""))
    response.sendRedirect("tlogin.jsp?p=2");
else
{
    session.setAttribute("tid",id);
    session.setAttribute("tem",request.getParameter("t1"));
    String tname=DBUCOE.dbucoelayer.getScaler("select teachername from teacher where teacherid="+id);
    session.setAttribute("tname", tname);
    String cont=DBUCOE.dbucoelayer.getScaler("select mobileno from teacher where teacherid="+id);
    session.setAttribute("contact",cont);
   
    response.sendRedirect("twelcome.jsp");

}
%>