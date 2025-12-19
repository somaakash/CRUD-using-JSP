<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Registration form</h1>
	<form action="registration.jsp">
	Full Name:<input type ="text" name ="fullname" placeholder="enter fullname"/><br><br>
	Email:<input type ="email" name ="email" placeholder="enter email"/><br><br>
	Password:<input type ="password" name ="password" placeholder="enter password"/><br><br>
	Contact:<input type ="number" name ="contact" placeholder="enter contact"/><br><br>
	<input type ="submit" />
	</form>
	<a href="login.jsp"><button>Login</button></a>
</body>
</html>