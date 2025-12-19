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
	String em=request.getParameter("email");
	String pss=request.getParameter("password");
	
	Class.forName("com.mysql.cj.jdbc.Driver");
	String url="jdbc:mysql://localhost:3306/crud";
	String user="root";
	String pwd="Soma@2003";
	Connection conn=DriverManager.getConnection(url,user,pwd);
	Statement stmt = conn .createStatement();
	String sql="select * from student where email='"+em+"' and password='"+pss+"'"; 
	ResultSet rs=stmt.executeQuery(sql);
	if(rs.next()){
		HttpSession s = request.getSession();
		s.setAttribute("email", em);
		
		out.println("login success");
		response.sendRedirect("welcome.jsp");
		
	}
	
	else{
		out.println("login denied");
		RequestDispatcher rd= request.getRequestDispatcher("login.jsp");
		rd.include(request,response);
	}
	%>
	
</body>
</html>