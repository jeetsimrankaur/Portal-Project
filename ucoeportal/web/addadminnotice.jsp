<%@ include file="adminheader.jsp"  %> 
<form name=frm method=post action="adminnoticeadded.jsp" >
<table border=0 width=300 height=300 align="center" >
    <tr>
        <td colspan=2 ><font size=6 >Enter notice details here</font></td>  
    </tr>
    
     <tr>
        <td>notice title</td>
        <td><input type=text name=t2 required ></td>
    </tr>
    
    <tr>
         <td>description</td>
         <td><input type=text name=t4  ></td>
   </tr>
   
  
    
    <tr>
       <td>Active</td>
       <td><input type=checkbox name=t4  ></td>
   </tr>
   <tr>
       <td colspan="2" align="Center">
           <input type="submit" value="save">
               <br><br>
               <a href=adminwelcome.jsp> Back</a>
       </td>   
   </tr>
</table>
</form>
<%@ include file="adminfooter.jsp"  %> 

         
