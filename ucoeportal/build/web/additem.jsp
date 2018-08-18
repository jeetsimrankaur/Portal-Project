
<%@ include file="studheader.jsp"  %>  
 

<form name=frm method=post action="itemadded.jsp" >
<table border=0 width=300 height=300 align="center" >
    <tr>
        <td colspan=2 ><font >Enter Details regarding the important notice</font></td>  
    </tr>
     <tr>
        <td colspan="2" height="18"></td>
    </tr>
     <tr>
        <td>title</td>
        <td><input type=text name=t1 required ></td>
    </tr>
     <tr>
        <td>quantity</td>
        <td><input type=text name=t2 ></td>
    </tr>
     <tr>
         <td>category</td>
         <td>
              
<select name="cat"  >
    <option value=0 >Select... </option>
<%
  ResultSet rr=DBUCOE.dbucoelayer.getResult("select categoryname from category ");
  while(rr.next())
      if(request.getParameter("pub")!=null && request.getParameter("pub").equals(rr.getString(1)))
         out.print("<option value='"+rr.getString(1)+"' selected >"+rr.getString(1)+"</option>");
      else
         out.print("<option value='"+rr.getString(1)+"'  >"+rr.getString(1)+"</option>");

%>
</select>
         </td>
   </tr>
   
   <tr>
       <td>Description</td>
       <td><textarea name=t4 required ></textarea></td>
   </tr>
     <tr>
         <td>mrp</td>
        <td><input type=text name=t5 ></td>
    </tr>
    
     <tr>
         <td>item status</td>
         <td><input type=text name=t7  ></td>
   </tr>
   
   <tr>
       <td>discounted price</td>
       <td><input type=text name=t8 required></td>
   </tr>
  
   
   
   <tr>
       <td colspan="2" align="Center">
           <input type="submit" value="Add item">
               <br><br>
               <a href=swelcome.jsp> Back</a>
       </td>   
   </tr>
</table>
</form>

<%@ include file="studfooter.jsp"  %>

