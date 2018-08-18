<%
    DBUCOE.dbucoelayer.executeq("update student set active='1' where studentid="+request.getParameter("id"));
    
    response.sendRedirect("viewregistered.jsp?p=2&studentid="+request.getParameter("id"));
      

%>
   
