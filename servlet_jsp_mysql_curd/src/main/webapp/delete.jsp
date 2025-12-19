<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.sql.*"
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% 		
			String fullname=request.getParameter("fullname");
			Class.forName("com.mysql.cj.jdbc.Driver");
			String url="jdbc:mysql://localhost:3306/crud";
			String user="root";
			String pwd="Soma@2003";
			Connection conn=DriverManager.getConnection(url,user,pwd);
			String sql="delete from student where fullname=?";
			PreparedStatement psmt=conn.prepareStatement(sql);
			psmt.setString(1,fullname);
			psmt.executeUpdate();
			response.sendRedirect("welcome.jsp");
		%>
			
</body>
</html>