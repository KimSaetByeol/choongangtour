<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>infobox 테스트 페이지입니다. (삭제예정)</title>
<!-- 이름을 일단 main으로 해놨음!! 삭제하거나 필요한 부분만 가지고 가주세요 -->
<script type="text/javascript">
function logout() {
	if (confirm("로그아웃 하시겠습니까?")) {
		location.href = "logout.do";
	}
}
</script>
</head>
<body>
	<div class="login">
		<c:choose>
			<c:when test="${sessionScope.l_id ne null }">
               ${sessionScope.l_name }님 <br>반갑습니다
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
	</div>
	<!-- end of login -->
</body>
</html>