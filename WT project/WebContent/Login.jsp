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
        String username1 = request.getParameter("LUsername");   
        String password1 = request.getParameter("Lpassword");
        Class.forName("com.mysql.jdbc.Driver");  // MySQL database connection
        java.sql.Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/employees",
        		"root","Shashidhar123");    
       Statement pst = conn.createStatement();
        ResultSet rs = pst.executeQuery("Select *from emp where username='"+username1+"'");
      if(rs.next())
        { 
        	if(rs.getString(4).equals(password1))
        		{
        		response.sendRedirect("welcome.html");
               }    
        else
           response.sendRedirect("Login.jsp");           
   }
      else
    	  out.println("enter all values");
         conn.close();
         pst.close();
%>

</body>
</html>