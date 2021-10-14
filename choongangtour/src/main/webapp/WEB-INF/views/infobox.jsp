<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<style type="text/css">
.login{
	width: 200px;
	height: 80px;
	background-color: pink;
	text-align: center;
	vertical-align: middle;
}
</style>
<script type="text/javascript">
function logout() {
	if (confirm("로그아웃 하시겠습니까?")) {
		location.href = "logout.do";
	}
}
</script>
<body>
	<div class="login">
		<c:choose>
			<c:when test="${sessionScope.l_id ne null }">
               ${sessionScope.l_name }님 반갑습니다 <br>
               <button onclick="location.href='./myinfo.do'">내 정보</button>
				<button onclick="return logout()">로그아웃</button>
			</c:when>

			<c:otherwise>
				<div id="menu">
					<button type="button" onclick="location.href='login.do'">
						로그인</button>
				</div>
				<a href="./join.do"> 회원가입 </a>
				<a href="./findid.do"> 아이디 찾기 </a>
			</c:otherwise>
		</c:choose>
		<br>
		<a href="./home.do">홈으로</a>
	</div> <!-- end of login -->
</body>