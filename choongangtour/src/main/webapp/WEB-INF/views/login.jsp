<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:if test="${sessionScope.l_id ne null || sessionScope.l_name ne null}">
	<c:redirect url="./main.do"/>
	<!-- 세션이 있으면 메인 페이지로 -->
</c:if>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login</title>
<style type="text/css">
#error{
	color: red;
}
</style>
</head>
<body>
	<h1>Login</h1>
		<c:if test="${param.code eq 'loginfail' }">
			<p id="error">로그인 실패, 아이디나 비밀번호를 다시 입력하세요.</p>
		</c:if>
		<c:if test="${param.code eq 'join' }">
			<p style="color: gray;">회원가입을 축하합니다!<br>가입한 아이디로 로그인하세요.</p>
		</c:if>
		<c:if test="${code eq 'changepw' }">
			<p>비밀번호가 변경되었습니다.<br>바뀐 비밀번호로 로그인하세요.</p>
		</c:if>
		
	<form action="./login.do" method="post">
		<input type="text" name="l_id">
		<input type="password" name="l_pw">
		<button type="submit">로그인</button>
		<a href="./join.do">회원가입</a>
		<a href="./findid.do">아이디 찾기</a>
	</form>
</body>
</html>