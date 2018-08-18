

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
             String id=request.getParameter("id");
            String title=request.getParameter("tt");
            String description=request.getParameter("td");
            String active=(request.getParameter("chk1")==null?"0":"1");
            
     if(DBUCOE.dbucoelayer.executeq("update notice set active='"+active+"' where noticeid="+id+" and posterid="+session.getAttribute("sid"))==true)
            response.sendRedirect("snotice.jsp?p=2&nid="+id);  
  %>

