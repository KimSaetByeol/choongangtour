<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:if test="${sessionScope.l_id ne null || sessionScope.l_name ne null}">
	<c:redirect url="./main.do" />
	<!-- 세션이 있으면 메인 페이지로 -->
</c:if>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login</title>
<link rel="stylesheet" href="resources/css/style.css">
<style type="text/css">
#error {
	color: red;
}
</style>
<script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.6.0.js"></script>
<script>
$(document).ready(function(){
	document.getElementById("infoboxDiv").style.display = 'none';
})
</script>
</head>
<body>
	<c:import url="./banner.jsp" />
	<div id="middle" align="center"
		style="padding-top: 20px; padding-bottom: 30px; display: flex; flex-direction: row; justify-content: space-evenly;">
		<div style="width: 20px;"></div>


		<div id="article"
			style="display: flex; flex-direction: column; justify-content: flex-start; box-shadow: 1px 1px 1px 1px #C9C9C9; border-style: outset; border-radius: 10px; padding: 5px; border-radius: 10px; padding-top: 10px; width: 1150px;">

			<h2>Login</h2>
			<c:if test="${param.code eq 'loginfail' }">
				<p id="error">로그인 실패, 아이디나 비밀번호를 다시 입력하세요.</p>
			</c:if>
			<c:if test="${param.code eq 'join' }">
				<p style="color: gray;">
					회원가입을 축하합니다!<br>가입한 아이디로 로그인하세요.
				</p>
			</c:if>
			<c:if test="${code eq 'changepw' }">
				<p>
					비밀번호가 변경되었습니다.<br>바뀐 비밀번호로 로그인하세요.
				</p>
			</c:if>

			<form action="./login.do" method="post">
						<div>
							<div>
								<input type="text" name="l_id" style=" margin-bottom:5px; width: 150px;"><br>
								<input type="password" name="l_pw" style=" width: 150px;"><br>
							</div>
							<div>
								<button type="submit" style="margin-top: 10px;margin-bottom: 10px;width: 155px;">로그인</button>
							</div>
						</div>
						</form>
						<div style="display: inline-block; margin-top: 5px; ">
							<a href="./join.do"> 회원가입</a> | 
							<a href="./findid.do">아이디 찾기</a>
						</div>
		</div>
		<c:import url="./sidebar.jsp" />
	</div>
	<c:import url="./footer.jsp" />
</body>
</html>