<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>admin page</title> 
</head>
<script type="text/javascript">
	function del(no){
/* 	alert(no);*/		
 if (confirm("delete number " + no + "?")) {
	alert("deleting "+ no);
	 location.href="./adminDelete.do?b_no="+no;
	}

	}
	
	
	function modify(no){
		location.href="./adminModify.do?b_no="+no;
	}
	function cancelDel(no){
		location.href="./adminCancelDelete.do?b_no="+ no; 
	}
	
</script>
<body>
	<h1>admin 입니다.</h1>
	

	<table>
		<tr>
			<td>num</td>
			<td>지역</td>
			<td>관광지</td>
			<td>쓴날짜</td>
			<td>내용</td>
			<td>주소<small>(첫번째 관광지에만 적기)</small></td>
			<td>전화번호</td>
			<td>웹</td>
			<td>이용시간</td>
			<td>추가 정보</td>
			<td>사진</td>
			<td>파일</td>
			<td>아이디 숫자</td>
			<td>아이디 이름</td>
			<td>아이디</td>
			<td>삭제 여부 <small>(0이면 삭제)</small></td>
			<td></td>
			<td></td>
		</tr>
		<c:forEach items="${list }" var="l">
		<tr><!--  권지안 아드민 페이지 보여주기 및 삭제 페이징 하셨으면 안해도 됨 -->
			<td>${l.b_no }</td>
			<td>${l.re_category }</td>
			<td>${l.b_title }</td>
			<td>${l.re_no}</td>
			<td>${l.b_date }</td>
			<td>${l.b_content }</td>
			<td>${l.b_addr }</td>
			<td>${l.b_tele }</td>
			<td>${l.b_time }</td>
			<td>${l.b_tip }</td>
			<td>${l.b_imgTitle }</td>
			<td>${l.b_url }</td>
			<td>${l.l_no }</td>
			<td>${l.l_name }</td>
			<td>${l.l_id }</td>
			<td>${l.visi }</td>
			<td>	<button onclick="cancelDel(${l.b_no})">삭제취소 </button></td>
			<td>	<button onclick="del(${l.b_no})">삭제 </button></td>
			<td>	<button onclick="modify(${l.b_no})">수정</button></td>


		</tr>
		
		</c:forEach>

	</table>
	











	<button onclick="location.href='./write.do'">게시글 올리기</button>


</body>
</html>