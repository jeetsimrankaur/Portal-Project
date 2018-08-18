<%@ include file="studheader.jsp"  %>  
 

<form name=frm method=post action="snoticeadded.jsp" >
<table border=0  align="center" >
    <tr>
        <td colspan=2 ><font  >Enter Details regarding the important notice</font></td>  
    </tr>
    <tr>
        <td colspan="2" height="18"></td>
    </tr>
     <tr>
        <td>Notice title</td>
        <td><input type=text name=t1 required ></td>
    </tr>
     
     <tr>
         <td>Description</td>
         <td><textarea name=t3 required ></textarea></td>
   </tr>
   
   <tr>
       <td>Active</td>
       <td><input type=checkbox name=t4  ></td>
   </tr>
    
   
   
   <tr>
       <td colspan="2" align="Center">
           <input type="submit" value="Add Notice">
               <br><br>
               <a href=swelcome.jsp> Back</a>
       </td>   
   </tr>
</table>
</form>
<%@ include file="studfooter.jsp"  %>
