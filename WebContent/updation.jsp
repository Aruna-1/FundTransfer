<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Banking</title>
</head>
<body>
<form action="transfer.jsp" method="post">
<table>
<%
Connection con =null ;
ResultSet rs = null ;
String fromacc = request.getParameter("fromacc");
String toacc = request.getParameter("toacc");
String amt = request.getParameter("amt");
%>
<tr>
<td>Accno</td>
<td>Balance</td>
</tr>

<%
try{  
Class.forName("com.mysql.jdbc.Driver");  
 con=DriverManager.getConnection("jdbc:mysql://localhost:3306/transaction","student","student");     
String sql = "update bankdata set balance=balance-"+Integer.parseInt(amt)+" where accountno = '"+fromacc+"' " ;
PreparedStatement ps=con.prepareStatement(sql) ; 
ps.execute();
String sql1 = "update bankdata set balance=balance+"+Integer.parseInt(amt)+" where accountno = '"+toacc+"'" ;
PreparedStatement ps1=con.prepareStatement(sql1) ; 
ps1.execute();

}
catch(Exception e){
	e.printStackTrace();
}
response.sendRedirect("index.jsp");
%>

</table>

</form>
</body>
</html>