<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="model.User"%>
<%
//セッションスコープからユーザー情報を取得
User loginUser = (User)session.getAttribute("loginUser");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/loginResult.css" type="text/css">
<title>どこつぶ</title>
</head>
<body>
	<div class="disp">
		<h2>どこつぶログイン</h2>
		<div class="textContents">
			<%
			if (loginUser != null) {
			%>
			<p>ログインに成功しました</p>
			<p>
				ようこそ<%=loginUser.getName()%>さん
			</p>
			<a href="Main" class = "pageMove">つぶやき投稿・閲覧へ</a>
			<%
			} else {
			%>
			<p>ログインに失敗しました</p>
			<a href="index.jsp" class="pageMove">TOPへ</a>
			<%
			}
			%>
		</div>
	</div>
	<jsp:include page="../../footer.jsp"/>
</body>
</html>