<%
session.removeAttribute("tid");
session.removeAttribute("tname");
session.removeAttribute("tem");
response.sendRedirect("index.jsp");
%>