<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="model.User, model.Mutter, java.util.List"%>
<%
//セッションスコープに保存されたユーザー情報を取得
User loginUser = (User) session.getAttribute("loginUser");
//アプリケーションに保存されたつぶやきリストを取得
List<Mutter> mutterList = (List<Mutter>) application.getAttribute("mutterList");
//リクエストスコープに保存されたエラーメッセージを取得
String errorMsg = (String) request.getAttribute("errorMsg");
%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>どこつぶ</title>
<!-- 

 --><link rel="stylesheet" type="text/css" href="css/main1.css">
</head>
<body>
	<div class="disp">
		<h2>どこつぶメイン</h2>
		<div class="textContents">
			<p>
				<c:out value="${loginUser.name}" />さん、ログイン中
			</p>
			<div class="ankerDiv">
				<a href="Logout" class="pageMove">ログアウト</a>
			</div>
			<p>
			<div class="ankerDiv">
				<a href="Main" method="post" class="pageMove">更新</a>
			</div>
			</p>
			<form action="Main" method="post">
				<input type="text" name="text">
				 <input type="submit" value="つぶやく">
			</form>
			<c:if test="${not empty errorMsg }">
				<p><c:out value="${errorMsg}" /></p>
			</c:if>
			<c:forEach var="mutter" items="${mutterList }">
				<p><c:out value = "${mutter.userName }" />：<c:out value="${mutter.text }" /></p>
			</c:forEach>			
		</div>

	</div>
	<jsp:include page="../../footer.jsp"/>
</body>
</html>