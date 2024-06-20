<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="css/login.css">
<title>どこつぶ</title>
</head>
<body>
<div class = "log-form">
	<h2>どこつぶへようこそ</h2>
	<form action="Login" method="post">
	ユーザー名：<input type = "text" name="name" placeholder="username"><br>
	パスワード：<input type = "password" name = "pass" placeholder="password"><br>
	<input type = "submit" value ="ログイン" class = "btn"> 
	<a class="forgot" href="forgotUser.jsp">Forgot Username?</a>
	</form>
</div>
<jsp:include page="footer.jsp"/>
</body>
</html>