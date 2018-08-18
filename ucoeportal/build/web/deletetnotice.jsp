 <%
        DBUCOE.dbucoelayer.executeq("delete from notice where noticeid="+request.getParameter("id"));
        
        response.sendRedirect("tnotice.jsp?q=2&nid="+request.getParameter("id"));  
  %>
   
