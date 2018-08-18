                   
<%@ include file="welcomeheader.jsp"  %>           
                    
        <form name="frm" method="post" action="checktlogin.jsp">            
                    <table width=250 border=0 align="center" height=200  >
                        <tr><td colspan="2" align="center">Authenticate your Self</td></tr>
                        <tr>
                            <td>email</td>
                            <td><input type=text name=t1 required ></td>
                        </tr>
                        <tr>
                            <td>password</td>
                            <td><input type=password name=t2  ></td>
                        </tr>
                        <%
                          if(request.getParameter("p")!=null)
                              out.print("<tr><td colspan=2 align=center><font color=red> invalid email or pwd</font></td></tr>");
                        %>
                        <tr>
                        <Td colspan="2" align=center >
                            <input type="submit" value="Teacher login" ><br><br>
                            <a href='teachersignup.jsp'>New User/ Sign Up</a>
                        </TD>
                        </tr>
                        <tr>
                            <td colspan="2" align='center'>
                                <a href='index.jsp'>Back</a>
                            </td>
                        </tr>
                    </table>
                </form>
        
        
<%@ include file="welcomefooter.jsp"  %>                   
        
        
        