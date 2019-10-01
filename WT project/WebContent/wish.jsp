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
String s=request.getParameter("user");
String s2=request.getParameter("email");
int s3 = Integer.parseInt(request.getParameter("phno"));
String s5=request.getParameter("password");


PreparedStatement psmt=null;
Class.forName("com.mysql.jdbc.Driver"); 
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/employees",
"root","Shashidhar123");   
psmt=con.prepareStatement("insert into emp values(?,?,?,?)");
psmt.setString(1,s);
psmt.setString(2,s2);
psmt.setInt(3,s3);
psmt.setString(4,s5);
psmt.executeUpdate();
out.println("<h1>Registered</h1>"); 
psmt.close();
con.close();
%>

</body>
</html>