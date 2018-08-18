<%
session.removeAttribute("sid");
session.removeAttribute("sname");
session.removeAttribute("sem");
response.sendRedirect("index.jsp");
%>