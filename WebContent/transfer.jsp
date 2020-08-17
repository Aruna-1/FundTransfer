<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="updation.jsp" method="post" onsubmit="return validateData();">
<table align="center">
<%
Connection con =null ;
ResultSet rs = null ;
%>
<tr>
<td>From Acc no.</td>
<td><input type="text" name="fromacc"></td>
</tr>
<tr>
<td>To Acc no.</td>
<td><input type="text" name="toacc"></td>
</tr>
<tr>
<td>Enter Amount</td>
<td><input type="text" name="amt"></td>
</tr>
<tr>
<tr><td></td><td><input type = "submit" value="Transfer"></td></tr>
</tr>
</table>

</form>
</body>
</html>