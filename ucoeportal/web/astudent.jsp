<%
    DBUCOE.dbucoelayer.executeq("update student set active='0' where studentid="+request.getParameter("id"));
    
    response.sendRedirect("viewregistered.jsp?z=2&studentid="+request.getParameter("id"));
      

%>
   
