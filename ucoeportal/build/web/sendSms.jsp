<%@ page  language="java" import="java.sql.*,java.net.*,java.io.*" errorPage="" %>

<%
String no=""+session.getAttribute("ph");
String message=(""+session.getAttribute("msg")).replaceAll(" ","%20");
try
{
	URL url;
	HttpURLConnection connection=null;
	
	String strUrl=("http://api.mvaayoo.com/mvaayooapi/MessageCompose?user=jaspreetkaur17701@gmail.com:Pb723636&senderID=TEST%20SMS&receipientno="+no+"&msgtxt="+message+"&state=1");
	
	url=new URL(strUrl);
	connection=(HttpURLConnection)url.openConnection();
	connection.connect();
	
	DataInputStream inp=new DataInputStream(connection.getInputStream());
//	String msg=inp.readLine();
//	out.print(msg);
	connection.disconnect();
	response.sendRedirect(""+session.getAttribute("returnpage"));
	}
	catch(Exception e)
	{
		out.print("errorrrrr"+e.getMessage());
	} 

%>