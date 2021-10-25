<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    	<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
    
<!DOCTYPE html>
<html>
<script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.6.0.js"></script>
<link
	href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"
	rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<!-- include summernote css/js -->
<link
	href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>
<meta charset="UTF-8">
<title>modify</title>
<style type="text/css">
#detail{
	margin: 0 auto;
	width: 800px;
	height: auto;
	padding: 5px;
}
#box{
 width: calc(100% - 40px) auto ;
 height: auto;
 margin: 30px auto 0px;
  padding: 10px 20px;
  border: 1px solid #bfbfbf;
 clear: both;
 background-color: #fafafa;
    color: #081e52;
}
th{
	width: 100px auto; 
}
</style>
<script type="text/javascript">

</script>
</head>
<body>
	<c:forEach items="${list }" var="l" varStatus="status">
<div id="detail">
	
	
 <div id="box">
<h1>${list[0].re_category }  ${list[0].b_title }</h1> 
	
	 글번호 : ${l.b_no} 
				<br>
	 선택한 지역 : ${l.re_category } 
				<br>
	 선택한 관광지 : ${l.b_title }
				<br>
				쓴 날짜 : <fmt:formatDate value="${l.b_date }" pattern="yyyy-MM-dd (HH:mm)" />
				<br>
				<br>
				<div>내용 :${l.b_content } </div>

					<br>
	주소 : ${l.b_addr }
					<br>
	전화번호 : ${l.b_tele }
					<br>
	웹사이트 : ${l.b_web }
					<br>
	이용시간 : ${l.b_time }
					<br>
	이용요금 : ${l.b_price }
					<br>
	기타 정보 : ${l.b_tip }
					<br>
	이미지 파일 : ${l.b_imgTitle }
	 <br>
	이미지  : <img alt="" src="${l.b_url }" width="200" onclick="location.href='${l.b_url}'">
	
	
	</div>
	

			<button onclick="location.href='./adminModify.do?b_no=${l.b_no}'" type="submit" style="float: right" title="수정하기 페이지로 이동">수정하기</button>
	</div>
	</c:forEach>
</body>
</html>