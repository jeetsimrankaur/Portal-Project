 <%
        DBUCOE.dbucoelayer.executeq("delete from item where itemid="+request.getParameter("id"));
        
        response.sendRedirect("sitem.jsp?q=2&iid="+request.getParameter("id"));  
  %>
   
