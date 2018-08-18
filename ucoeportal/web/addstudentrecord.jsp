<%@ include file="adminheader.jsp"  %>          
 
<form name=frm method=post action="addrecord.jsp" >
<table border=0  >
    <tr>
        <td colspan=2 align="center"><b>Enter Details</b></td>  
    </tr>
     <tr>
        <td>Roll no.</td>
        <td><input type=text name=t1 required ></td>
    </tr>
     <tr>
        <td>Student name</td>
        <td><input type=text name=t2 required ></td>
    </tr>
     
    <tr>
         <td>Group</td>
         <td><input type=text name=t3 required ></td>
   </tr>
   
   <tr>
       <td>SGPA SEM 1</td>
       <td><input type=text name=t4  ></td>
   </tr>
    
    <tr>
         <td>Fee receipt SEM 1</td>
         <td><input type=text name=t5  ></td>
   </tr>
   
   <tr>
       <td>SGPA SEM 2</td>
       <td><input type=text name=t6  ></td>
   </tr>
    
    <tr>
         <td>Fee receipt SEM 2</td>
         <td><input type=text name=t7  ></td>
   </tr>
   
   <tr>
       <td>SGPA SEM 3</td>
       <td><input type=text name=t8  ></td>
   </tr>
    
    <tr>
         <td>Fee receipt SEM 3</td>
         <td><input type=text name=t9  ></td>
   </tr>
   
   <tr>
       <td>SGPA SEM 4</td>
       <td><input type=text name=t10  ></td>
   </tr>
    
    <tr>
         <td>Fee receipt SEM 4</td>
         <td><input type=text name=t11  ></td>
   </tr>
   
    <tr>
         <td>Day scolar/hostler</td>
          <td>
             <input type=radio name=rb value="Day scholar"  >Day scholar
             <input type=radio name=rb value="Hostler"  >Hostler
         </td>
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