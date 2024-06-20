<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>どこつぶ</title>
</head>
<body>
	<h2>どこつぶ新規登録</h2>
	<form action="NewUser" method="post">
		ユーザー名：<input type="text" name="name" placeholder="username"><br>
		パスワード：<input type="password" name="pass" placeholder="password"
			required><br> パスワード（確認用）：<input type="password"
			name="confirm" placeholder="password" oninput="CheckPassword(this)"
			required><br> <input type="submit" value="新規登録"
			class="btn">
	</form>
	<%
	String errorMsg = (String) request.getAttribute("errorMsg");
	if (errorMsg != null) {
	%>
	<p style="color: red;"><%=errorMsg%></p>
	<%
	}
	%>
</body>
</html>