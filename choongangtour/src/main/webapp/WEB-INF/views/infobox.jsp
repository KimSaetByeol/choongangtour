<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script type="text/javascript" src="./resources/js/typeList.js"></script>
<script type="text/javascript">
window.onload = function() {
function masking(email) {	
	var len = email.split('@')[0].length-3;
	return email.replace(new RegExp('.(?=.{0,' + len + '}@)', 'g'), '*');	 
	}
	const eemail = document.querySelector(".email");
	eemail.innerHTML = masking("${infobox.l_email }");

//	if(${infobox.l_type ne null}) {
//		const resultName = document.querySelector(".info");
//		resultName.innerHTML = (resultList[${infobox.l_type}].name + ", ");
//		return resultName;
//		}
}
</script>
<script type="text/javascript">

</script>
<style type="text/css">
.login {
	width: 60%;
	height: auto;
	background-color: #CCCCCC;
	border-radius: 10px;
	vertical-align: middle;
}
</style>
<script type="text/javascript">
function logout() {
	if (confirm("로그아웃 하시겠습니까?")) {
		location.href = "logout.do";
	}
}

function goInfo() {
	var newWindow = window.open("about:blank");
	newWindow.location.href = './myinfo.do';
}

</script>
<body>
	<div class="login">
		<c:choose>
			<c:when test="${sessionScope.l_id ne null }">
			<a class="info"></a>${infobox.l_name }님 반갑습니다 <br>
			닉네임: ${infobox.l_name } <br> 
			email: <a class="email"></a> <br>
				<button onclick="goInfo()">내 정보 수정</button>
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
		<br> <a href="./home.do">홈으로</a>
	</div>
	<!-- end of login -->
</body>