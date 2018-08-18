
<%@page language="java" import="java.sql.*" contentType="text/html" pageEncoding="UTF-8"%>


<%
// insert the record in database
 String itemid=DBUCOE.dbucoelayer.getScaler("select itemid from item");
 String title=request.getParameter("t1");
 String quantity=request.getParameter("t2");
 String category=request.getParameter("cat");
  String description=request.getParameter("t4");
 String mrp=request.getParameter("t5");
  String itemstatus=request.getParameter("t7");
  String discount=request.getParameter("t8");
 
            
 if(DBUCOE.dbucoelayer.executeq("insert into item(title,quantity,category,description,mrp,Contact,itemstatus,discountedprice) values ('"+title+"',"+quantity+",'"+category+"','"+description+"',"+mrp+","+session.getAttribute("contact")+",'"+itemstatus+"',"+discount+")")==true)
 
       response.sendRedirect("swelcome.jsp?j=2");
 else
       response.sendRedirect("additem.jsp");

%>

 
       
   