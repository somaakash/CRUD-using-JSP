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
		String fn=request.getParameter("fullname");
		if(fn!=null && !fn.trim().equals("")){
			String em = request.getParameter("email");
			String pss = request.getParameter("password");
			String cn = request.getParameter("contact");
			
			Class.forName("com.mysql.cj.jdbc.Driver");
			String url="jdbc:mysql://localhost:3306/crud";
			String user="root";
			String pwd="Soma@2003";
			Connection conn=DriverManager.getConnection(url,user,pwd);
			String sql="insert into student(fullname,email,password,contact) values(?,?,?,?)";
			PreparedStatement psmt =conn.prepareStatement(sql);
			psmt.setString(1,fn);
			psmt.setString(2,em);
			psmt.setString(3,pss);
			psmt.setString(4,cn);
			
			psmt.executeUpdate();
			
			out.println("registration success........");
			response.sendRedirect("login.jsp");
		}
	
	%>
</body>
</html>