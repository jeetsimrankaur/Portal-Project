<%@ include file="welcomeheader.jsp"  %>          
 
<form name=frm method=post action="addstudent.jsp" >
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
        <td>Roll no.</td>
        <td><input type=text name=t3 required ></td>
    </tr>
    
    <tr>
         <td>Gender</td>
         <td>
             <input type=radio name=rb value="Male"  >Male
             <input type=radio name=rb value="Female"  >Female
         </td>
   </tr>
   
   <tr>
       <td>city</td>
       <td><input type=text name=t5  ></td>
   </tr>
    
    <tr>
         <td>mobileno</td>
         <td><input type=text name=t7  ></td>
   </tr>
    <tr>
         <td>state</td>
         <td><input type=text name=t8 ></td>
   </tr>
   <tr>
       <td>password</td>
       <td><input type="password" name="t9"</td>
   </tr>
   
   <tr>
       <td colspan="2" align="Center">
           <input type="submit" value="save">
               <br><br>
               <a href=slogin.jsp> Back</a>
       </td>   
   </tr>
</table>
</form>


<%@ include file="welcomefooter.jsp"  %>           