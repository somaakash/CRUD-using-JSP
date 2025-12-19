<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="dashboard.jsp"/>.

<style>
	table{
	    width: 100%;
	    border-collapse: collapse;
	    background-color: #a7f211;
	}
	
	th{
	    background-color: #88fce1;
	    padding: 30px;
	    border: 1px solid #2a0466;
	    
	}
	
	td{
	    padding: 15px;
	    border: 1px solid red;
	}
</style>


<div class="content">
   
	<h2 style="text-align:center">Welcome page</h2>
	<table border="1">
	<table>
		<tr>
			<th>Full Name</th>
			<th>Email</th>
			<th>Password</th>
			<th>Contact</th>
			<th>Actions</th>
		</tr>
		<%
			Class.forName("com.mysql.cj.jdbc.Driver");
			String url="jdbc:mysql://localhost:3306/crud";
			String user="root";
			String pwd="Soma@2003";
			Connection conn=DriverManager.getConnection(url,user,pwd);
			Statement stmt = conn .createStatement();
			String sql="select * from student "; 
			ResultSet rs= stmt.executeQuery(sql);
			while(rs.next()){
		%>
		
			<tr >
				<td><%= rs.getString(1) %></td>
				<td><%= rs.getString(2) %></td>
				<td><%= rs.getString(3) %></td>
				<td><%= rs.getString(4) %></td>
				<td>
					<a href="delete.jsp?fullname=<%= rs.getString(1) %>">Delete</a>
					<a href="edit.jsp?fullname=<%= rs.getString(1) %>">Edit</a>
				</td>
			</tr>
		
		
	<%} %>
		</table>
		</div>
</body>
</html>