    
<%@page contentType="text/html" pageEncoding="UTF-8" language="java" import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>    <table cellspacing="0" width="1430" align="center">
            
            <tr>
            <td colspan='3' height='80'   bgcolor='orange' align='center'>
                    <font size=20 color='black' align='center' >UCOE PORTAL</font>
                </td>
            </tr>
           
            
             <tr>
                 <td colspan="3" height=100 bgcolor="lightyellow">
                     <marquee><img src='images/anidog.gif'><img src='images/anidog.gif'><font size="20">WELCOME TO</font><font size="20" color="red"> UNIVERSITY COLLEGE OF ENGINEERING (UCOE) PUNJABI UNIVERSITY,PATIALA</font></marquee>   
                 </td>
             </tr>
</table>
       
        <table cellspacing="25" height="30"></table>
<script language="javascript">
    function abc()
    {
        document.forms[0].submit();
    }
</script>

<font bgcolor="lightyellow"><form name="frm" method="post" action="itemavail.jsp" >
      &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
      <input type="radio" name="r1" value='title' <%= (request.getParameter("r1")==null || request.getParameter("r1").equals("title")?" checked ":"")  %> onclick="abc()"> Item Title  
      &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
      <input type="radio" name="r1" value='category' <%= (request.getParameter("r1")!=null && request.getParameter("r1").equals("category")?" checked ":"")  %> onclick="abc()" > Category  
      &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
      <input type="radio" name="r1" value='description' <%= (request.getParameter("r1")!=null && request.getParameter("r1").equals("description")?" checked ":"")  %>  onclick="abc()"> Description  
      &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
      <font size="4" ><a href='index.jsp'>Home</a></font>
      
 <p align="center">
       <input type=text name="t1" value='<%= request.getParameter("t1")==null?"":request.getParameter("t1") %>' /> <input type="submit" value="Go" />
</p>  
</form></font>
<table border=0 align="center" cellspacing="50">


<%

  ResultSet rs;
  if(request.getParameter("t1")==null)
        rs=DBUCOE.dbucoelayer.getResult("select * from item order by itemid desc"); 
  else    
        rs=DBUCOE.dbucoelayer.getResult("select * from item where "+request.getParameter("r1")+" like '%"+request.getParameter("t1")+"%'"); 
  int i=0;
  while(rs.next())
      {
           String name=DBUCOE.dbucoelayer.getScaler("select studentname from student where mobileno="+rs.getString(7)); 
  
           out.print("<tr align=center><td><img src='category/"+rs.getString(4)+".jpg' width=120 height=130 /></td>");
           out.print("<td><font size=4><br><b>Title</b>:-"+rs.getString(2)+"<br><b>Category:-"+rs.getString(4)+"</b><br>Discription:-"+rs.getString(5)+"<br>Quantity:-"+rs.getString(3)+"<br><img src='images/call1.jpg' width=20 height=20 /> Contact:-<a title='"+name+"'>"+rs.getString(7)+"</a><br>Status:-"+rs.getString(8)+"<br><img src='images/rs.jpg' width=20 height=20 />MRP of one item in Rupees:-<b>"+rs.getString(6)+"</b> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<img src='images/discount.jpg' align=bottom width=20 height=20 /> Discounted Price in Rupees:-<b>"+rs.getString(9)+"</b></font></td><td>"+(rs.getString(3).equals("0")?"<img src='images/soldout.jpg' width=120 height=130 />":"<img src='images/available.jpg' width=120 height=130 />")+"<hr></td></tr>");
        i++;
      }
 
%>

</table>


</body>
</html>


          
  