<%
String unm=DBUCOE.dbucoelayer.getScaler("select username from admin where email='"+request.getParameter("t1")+"' and password='"+request.getParameter("t2")+"'");
if(unm==null || unm.equals(""))
    response.sendRedirect("adminlogin.jsp?p=2");
else
{
    session.setAttribute("usrname",unm);
    session.setAttribute("adem",request.getParameter("t1"));
     response.sendRedirect("adminwelcome.jsp");

}
%>