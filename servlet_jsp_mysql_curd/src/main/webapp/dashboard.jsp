<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
		*{
			margin:0px;
			padding:0px;
		}
		.navbar{
			background-color: yellow;
			position: fixed;
		    top: 0;
		    width: 100%;
		    height: 70px;
			
		
		}
		.navbar ul{
			list-style: none;
		    display: flex;
		    align-items: center;
		    height: 100%;
		}
		.navbar ul li{
			float:left;
			margin-left:40px;
		}
		.navbar ul li a{
		    font-size: 30px;
		    font-weight: bold;
		    text-decoration: none;
}
		.footer{
			  background-color: grey;
		    color: white;
		    font-size: 18px;
		    position: fixed;
		    bottom: 0;
		    width: 100%;
		    height: 50px;
		    text-align: center;
		    line-height: 50px;
		
		
		}
		</style>
</head>
<body>
<nav class="navbar">
	<ul>
		<li><a href="index.jsp">Registration</a> </li>
		<li><a href="logout.jsp">Logout</a> </li>
		<li><a href="login.jsp">login</a> </li>
 

	</ul>
		
</nav>
	
<footer class="footer">
	@ All copy Rights reserved to Codegnan
</footer>

</body>
</html>