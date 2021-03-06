<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="resources/css/style.css">
<script type="text/javascript"
	src="http://code.jquery.com/jquery-1.7.2.min.js"></script>
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
#write {
	margin: 0 auto;
	height: 300px;
}

input {
	width: 100%;
	height: 30px;
	align: center;
}

textarea {
	width: 100%;
	height: 300px
}
</style>
<script type="text/javascript">
	function fileToImgbb() {
		var formData = new FormData($("#fileForm")[0]);
		$.ajax({
			url : "https://api.imgbb.com/1/upload",
			method : "post",
			contentType : false,
			processData : false,
			data : formData,
			success : function(response) {
				alert("success!");
				console.log(response);
				var jx = response;
				console.log(jx.data.url);
				$("#b_url").val(jx.data.url);
				$("#b_imgTitle").val(jx.data.title);
			},
			error : function(error) {
				alert("ėŽė§ėė");
			}
		})
	}
</script>
</head>
<body>
	<c:import url="./banner.jsp" />
	<div id="middle" align="center"
		style="padding-top: 20px; padding-bottom: 30px; display: flex; flex-direction: row; justify-content: space-evenly;">
		<div style="width: 20px;"></div>


		<div id="article"
			style="display: flex; flex-direction: column; justify-content: flex-start; box-shadow: 1px 1px 1px 1px #C9C9C9; border-style: outset; border-radius: 10px; padding: 5px; border-radius: 10px; padding-top: 10px; width: 1150px;">




			<h1>${list[0].re_category }${list[0].b_title }</h1>
			<div id="modify">
				<form action="./adminModify.do" id="fileForm"
					enctype="multipart/form-data" method="post">
					<c:forEach items="${list }" var="l" varStatus="status">


						<input type="text" name="re_category" disabled="disabled"
							value="${l.b_no}ëē ęļ">
						<br>

						<select name="region">
							<option value="1">ėėļ</option>
							<option value="2">ęē―ęļ°ë</option>
							<option value="3">ę°ėë</option>
							<option value="4">ėļėē</option>
							<option value="5">ėļėĒ</option>
							<option value="6">ęē―ėëķë</option>
							<option value="7">ęē―ėëĻë</option>
							<option value="8">ė ëžëķë</option>
							<option value="9">ė ëžëĻë</option>
							<option value="10">ėķĐėē­ëķë</option>
							<option value="11">ėķĐėē­ëĻë</option>
							<option value="12">ëęĩŽ</option>
							<option value="13">ëė </option>
							<option value="14">ėļė°</option>
							<option value="15">ė ėĢžë</option>
							<option value="16">ëë</option>
							<option value="17">ėļëĶë</option>
							<option value="18">ęīėĢž</option>
							<option value="19">ëķí</option>
							<option value="20">ëķė°</option>
						</select>  ėīė ė ė íí ė§ė­ : ${l.re_category } <small>(ęž­ ė§ė­ė ė ííīėĢžėļė!)</small>
						<input type="text" name="b_title" placeholder="ė§ė­ ėë Ĩ"
							value="${l.b_title }">
						<br>
						<textarea name="b_content" id="summernote">${l.b_content }</textarea>
						<br>
						<script type="text/javascript">
							$(document).ready(function() {
								$('#summernote').summernote({
									height : 400
								});
							});
						</script>
						<input type="text" name=" b_addr" placeholder="ëëĄëŠėĢžė ėë Ĩ"
							value="${l.b_addr }">
						<input type="text" name=" b_tele" placeholder="ė íëēíļ ėë Ĩ"
							value="${l.b_tele }">
						<input type="text" name=" b_web" placeholder="ėđėŽėīíļ ėë Ĩ"
							value="${l.b_web }">
						<input type="text" name=" b_time" placeholder="ėīėĐėę° ėë Ĩ"
							value="${l.b_time }">
						<input type="text" name=" b_price" placeholder="ėīėĐëĢ ėë Ĩ"
							value="${l.b_price }">
						<input type="text" name=" b_tip" placeholder="ęļ°í ė ëģī ėë Ĩ "
							value="${l.b_tip }">
						<br>
						<c:set var="url" value="${l.b_url }" />
						<c:choose>
							<c:when test="${fn:length(url)>0 }">
				ėīė ė ėŽėĐí ėīëŊļė§ : <br>
								<img alt="" src="${l.b_url }" width="200">
								<small>(${l.b_imgTitle })</small>
							</c:when>
							<c:otherwise>
				ėīė ė ėŽėĐíė  ėīëŊļė§ę° ėėĩëëĪ. 
				</c:otherwise>
						</c:choose>
						<input type="file" name="image" id="file" accept="*" />
						<input type="hidden" name="key"
							value="21adc3a0b114307e42a3adf011d0240b">
						<input type="hidden" name="b_url" id="b_url">
						<input type="hidden" name="b_imgTitle" id="b_imgTitle">
						<input type="hidden" name="b_no" value="${l.b_no }">
			íėž ė í í ęž­ ėëĄë ëēížė ëëŽėĢžėļė.<button type="button" onclick="fileToImgbb()">íėž
							ėëĄë</button>
						<br>
						<button type="submit">ėė íęļ°</button>
					</c:forEach>
				</form>
			</div>

		</div>
	<c:import url="./sidebar.jsp" />
	</div>
	<c:import url="./footer.jsp" />
</body>
</html>