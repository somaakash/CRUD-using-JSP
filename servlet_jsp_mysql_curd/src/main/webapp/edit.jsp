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
			<% String fullname=request.getParameter("fullname");
			Class.forName("com.mysql.cj.jdbc.Driver");
			String url="jdbc:mysql://localhost:3306/crud";
			String user="root";
			String pwd="Soma@2003";
			Connection conn=DriverManager.getConnection(url,user,pwd);
			String sql="select*from student where fullname=?";
			PreparedStatement psmt=conn.prepareStatement(sql);
			psmt.setString(1,fullname);
			ResultSet rs=psmt.executeQuery();
			if(rs.next()){
			
			%>
			
			
			<form action="save.jsp">
	Full Name:<input type ="text" name ="fullname" placeholder="enter fullname" value="<%=rs.getString(1)%>"/><br><br>
	Email:<input type ="email" name ="email" placeholder="enter email "value=<%=rs.getString(2)%>""/><br><br>
	Password:<input type ="password" name ="password" placeholder="enter password" value="<%=rs.getString(3)%>"/><br><br>
	Contact:<input type ="number" name ="contact" placeholder="enter contact" alue="<%=rs.getString(4)%>"/><br><br>
	<input type ="submit" />
	</form>
			<%} %>
</body>
</html>