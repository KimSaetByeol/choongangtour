<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<!-- include libraries(jQuery, bootstrap) -->
<link href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<!-- include summernote css/js -->
<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>
<meta charset="UTF-8">
<title>write</title>
<style type="text/css">
#write{
	margin: 0 auto;
	height: 300px;
	width: 600px;	
}
input{
	width: 100%;
	height: 30px;
}
textarea{
	width: 100%;
	height: 300px
}
</style>
</head>
<body>
<h1>adminWrite</h1>
<div id="write">
<form action="./write.do" enctype="multipart/form-data" method="post">

	<select name="region">
	 <option value="1" >서울</option>
	 <option value="2" >경기도</option>
	 <option value="3" >강원도</option>
	 <option value="4" >인천</option>
	 <option value="5" >세종</option>
	 <option value="6" >경상북도</option>
	 <option value="7" >경상남도</option>
	 <option value="8" >전라북도</option>
	 <option value="9" >전라남도</option>
	 <option value="10" >충청북도</option>
	 <option value="11" >충청남도</option>
	 <option value="12" >대구</option>
	 <option value="13" >대전</option>
	 <option value="14" >울산</option>
	 <option value="15" >제주도</option>
	 <option value="16" >독도</option>
	 <option value="17" >울릉도</option>
	 <option value="18" >광주</option>
	 <option value="19" >북한</option>
	 <option value="20" >부산</option>
	 	</select>
	<input type="text" name="b_title" placeholder="관광지를 입력해주세요."> <br>
	<textarea name="b_content" id="summernote" >상세정보를 입력</textarea> <br>  
<script type="text/javascript">
						$('#summernote').summernote({
							  height: 500,                 
							  minHeight: null,             // set minimum height of editor
							  maxHeight: null,             // set maximum height of editor
							  focus: true                  // set focus to editable area after initializing summernote
						
							});

				</script>
	<input type="file" name="file" accept="*"/> <br>
	<button type="submit">쓰기</button>
</form>
	</div>
</body>
</html>