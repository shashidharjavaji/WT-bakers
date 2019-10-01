<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<%@ page import ="java.sql.*" %>
<%

        Class.forName("com.mysql.jdbc.Driver");  // MySQL database connection
        java.sql.Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/employees",
        		"root","Shashidhar123");    
       Statement pst = conn.createStatement();
        ResultSet rs = pst.executeQuery("Select *from emp");
      
while(rs.next()){%>
<table align="center" cellpadding="15" border="1" style="background-color: #ffffcc;table-layout:fixed;">
<col width="130">
  <col width="80">
  <tr>
<td style="width:25%"><%=rs.getString(1) %></td>
<td style="width:25%"><%=rs.getString(2) %></td>
<td style="width:25%"><%=rs.getString(3) %></td>
<td style="width:25%"><%=rs.getString(4) %></td>
</tr>
</table>
<% } %>
<body>
<div style="text-align:center">
<a href="edit.html"><input type="button" value="edit" name="edit"></a>
<a href="Del.html"><input type="button" value="Delete" name="delete"></a>
<a href="welcome.html"><input type="button" value="Welcome Page" name="Welcome Page"></a>
</div>
</body>
</html>