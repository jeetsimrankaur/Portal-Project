



<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
             String id=request.getParameter("id");
            String title=request.getParameter("t1");
            String quantity=request.getParameter("t2");
            String category=request.getParameter("cat");
            String description=request.getParameter("t4");
            String mrp=request.getParameter("t5");
            String discount=request.getParameter("t8");
            
     if(DBUCOE.dbucoelayer.executeq("update item set quantity="+quantity+",discountedprice="+discount+" where itemid="+id+" and contact="+session.getAttribute("contact"))==true)
            response.sendRedirect("sitem.jsp?p=2&iid="+id);  
  %>



