 <%@ include file="studheader.jsp"  %>  
 
 <td align="center" >
     <font size="18"> </font>
 
 <%
    if(request.getParameter("p")!=null)
       out.print("<BR><br><font color=green size=18>notice added</font><br>");        
 if(request.getParameter("j")!=null)
       out.print("<BR><br><font color=green size=18>item added</font><br>");        
%>
 </td>
<%@ include file="studfooter.jsp"  %> 