<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>UserBoard Detail</title>
<style type="text/css">
table{
	border-collapse: collapse;
}
td{
	padding: 10px;
	border: 1px solid;
}
img{
	height: 500px;
}
</style>

<script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.6.0.js"></script>
<script type="text/javascript">

function ublike(b_no){
	if(confirm("게시글을 추천할까요?")){
		$.ajax({
			url : "./ublike.do",
			type : "post",
			cache : false,
			dataType : "html",
			data : {'b_no' : b_no},
			success : function(chk){
				if(chk == 1){
					location.reload();
				} else{
					alert("추천 실패, 다시 이용해주세요");
				}
			},
			error : function(request, status, error){
				//alert(error);
			}
		});
	}
}

</script>
</head>
<body>
	<table>
		<tr><td colspan="2">[${detail.re_category }] ${detail.b_title}</td></tr>
		<tr><td>${detail.l_name }(${detail.l_id })</td><td>${detail.b_date }</td></tr>
		<tr><td>좋아요</td><td id="b_like">${detail.b_like }<button onclick="ublike(${detail.b_no})">❤</button></td></tr>
		<tr><td colspan="2">
			<c:if test="${detail.b_file ne null }">
				<img alt="${detail.b_img }" src="./resources/img/userboard/${detail.b_file}"><br>
			</c:if>
			${detail.b_content }
		</td></tr>
		<tr><td><a href="userBoard.do">리스트로</a><td></tr>
	</table>
</body>
</html>