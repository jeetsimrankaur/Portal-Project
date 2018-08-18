<%@ include file="adminheader.jsp"  %>  
 
 <td align="center" >
     <font size="18"> </font>
 
<%
    if(request.getParameter("p")!=null)
       out.print("<BR><font size=18 color=green>notice added</font><br>");        
    if(request.getParameter("j")!=null)
       out.print("<BR><font size=18 color=green>Student record added</font><br>");        
 

%>
 </td>
<%@ include file="adminfooter.jsp"  %>                    
                    
                   