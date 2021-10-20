<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="org.json.simple.parser.JSONParser" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>write</title>
<script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.6.0.js"></script>
<script>
function wtf(){
	var formData = new FormData($("#fileForm")[0]);
	/* var fileForm = document.getElementById("fileForm");
	formData.append("FormData", fileForm); */
	console.log(formData);
	fileTT = $("#file")[0].files[0];
	console.log(fileTT);
	
	$.ajax({
		url: "https://api.imgbb.com/1/upload",
		method: "post",
		contentType: false,
		processData: false,
		data: formData,
		success: function(response){
			alert("success!");
			console.log(response);
			var jx = response;
			console.log(jx.data.url);
			$("#url").val(jx.data.url);
		},
		error: function(error){
			alert("에러");
		}
	})
}
</script>
</head>
<body>
<h1>글쓰기</h1>
<div id="write">
<form action="/testUpload.do" id="fileForm" enctype="multipart/form-data" method="post" onsubmit="wtf()">
	<input type="file" name="image" id="file" accept="*"/> <br>
	<input type="hidden" name="key" value="f6d096ba35b6760c08fb692ed72043ad">
	<input type="text" name="other" value="??">
	<input type="text" name="url" id="url">
	<button type="button" onclick="wtf()">누르삼</button>
	<button type="submit">dd</button>
</form>

	</div>
</body>
</html>