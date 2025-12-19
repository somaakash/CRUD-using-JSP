<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String fn = request.getParameter("fullname");
		String em=request.getParameter("email");
		String pss=request.getParameter("password");
		String cn=request.getParameter("contact");
		
		
		String fullname=request.getParameter("fullname");
		Class.forName("com.mysql.cj.jdbc.Driver");
		String url="jdbc:mysql://localhost:3306/crud";
		String user="root";
		String pwd="Soma@2003";
		Connection conn=DriverManager.getConnection(url,user,pwd);
		String sql="update student set fullname=?,password=?,contact=? where email=?";
		PreparedStatement psmt = conn.prepareStatement(sql);
		
		psmt.setString(1,fn);
		psmt.setString(2,pss);
		psmt.setString(3,cn);
		psmt.setString(4,em);
		psmt.executeUpdate();
		out.println("saved successfully");
		response.sendRedirect("welcome.jsp");
	%>
</body>
</html>