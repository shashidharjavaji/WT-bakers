<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ page import ="java.sql.*" %>
<%
String uu=request.getParameter("un1");
Class.forName("com.mysql.jdbc.Driver"); 
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/employees",
"root","Shashidhar123");   
Statement psmt=null;
psmt=con.createStatement();
ResultSet rs = psmt.executeQuery("Select *from emp where username='"+uu+"'");
if(rs.next()){
psmt.executeUpdate("DELETE FROM emp WHERE username='"+uu+"'");
psmt.close();
con.close();
out.println("<h1>User deleted Succesfully<h1>");}
else
{
	out.println("<h1>No user Found<h1>");
}
%>
<a href="Display.jsp"><input type="button" value="Display Page"></a>
</body>
</html>