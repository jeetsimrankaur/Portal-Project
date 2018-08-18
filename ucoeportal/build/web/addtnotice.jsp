<%@ include file="teachheader.jsp"  %>  
 
<form name=frm method=post action="tnoticeadded.jsp" >
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
         <td>active</td>
         <td><input type=checkbox name=t6 ></td>
   </tr>
   <tr>
       <td colspan="2" align="Center">
           <input type="submit" value="save">
               <br><br>
               <a href=twelcome.jsp> Back</a>
       </td>   
   </tr>
</table>
</form>
<%@ include file="teachfooter.jsp"  %>


         
