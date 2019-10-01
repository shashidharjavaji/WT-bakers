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
	String s=request.getParameter("un");
String s2=request.getParameter("em");
int s3 = Integer.parseInt(request.getParameter("ph"));
String s5=request.getParameter("pw");


try{
Class.forName("com.mysql.jdbc.Driver"); 
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/employees",
"root","Shashidhar123");   
Statement psmt=null;
psmt=con.createStatement();
ResultSet rs = psmt.executeQuery("Select *from emp where username='"+s+"'");
if(rs.next()){
psmt.executeUpdate("update emp set email='"+s2+"',phno="+s3+",password='"+s5+"' where username='"+s+"'");
out.println("<h1>Updated</h1>"); 
psmt.close();
con.close();
}
else{
	out.println("<h1>user does not exist to update</h1>");
}

}
catch(Exception e){out.println("error");}


%>
<a href="Display.jsp"><input type="button" value="Display Page"></a>
</body>
</html>