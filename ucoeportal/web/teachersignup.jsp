<%@ include file="welcomeheader.jsp"  %>          
 
<form name=frm method=post action="addteacher.jsp" >
<table border=0 width=300 height=300 >
    <tr>
        <td colspan=2 >Enter Your Details</td>  
    </tr>
     <tr>
        <td>email</td>
        <td><input type=text name=t1 required ></td>
    </tr>
     <tr>
        <td>Name</td>
        <td><input type=text name=t2 required ></td>
    </tr>
    
    <tr>
         <td>mobile no</td>
         <td><input type=text name=t4  ></td>
   </tr>
    <tr>
         <td>subject</td>
         <td><input type=text name=t5 ></td>
   </tr>
   
   <tr>
         <td>password</td>
         <td><input type=password name=t6 ></td>
   </tr>
   
   <tr>
       <td colspan="2" align="Center">
           <input type="submit" value="save">
               <br><br>
               <a href=tlogin.jsp> Back</a>
       </td>   
   </tr>
</table>
</form>


<%@ include file="welcomefooter.jsp"  %>           