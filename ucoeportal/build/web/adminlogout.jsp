<%
session.removeAttribute("usrname");
session.removeAttribute("adem");
response.sendRedirect("index.jsp");
%>