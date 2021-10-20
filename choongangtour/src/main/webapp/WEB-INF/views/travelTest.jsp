<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>travelTest</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="./resources/js/typeList.js"></script>
<script type="text/javascript" src="./resources/js/travelTest.js"></script>
<link rel="stylesheet" href="./resources/css/travelTest.css">
<script type="text/javascript">
			$(document).ready(function() {
				$("#save").click(function() {
					
					alert(result);
				});
			});
			</script>
</head>
<body>
	<div>
		<section id="main">
			<h3>나의 여행 목적은?</h3>
			<img src="./resources/img/paperplane.png" alt="testimg">
			<p>
				간단한 테스트를 통해<br> 나와 어울리는 여행지를 찾아볼까요?
			</p>
			<input type="button" value="시작" class="btn"
				onclick="document.body.className='start'">
		</section>

		<section id="test">
			<div class="status">
				<div class="statusBar"></div>
			</div>
			<div class="qBox"></div>
			<div class="aBox"></div>
		</section>

		<section id="result">
			<h1>당신의 결과는?</h1>
			<div class="resultname"></div>
			<div class="resultDesc"></div>
			<button type="submit" id="save" class="btn2">결과 저장하기</button>
			<br>
			<button onclick="location.href='./'"class="btn2">메인페이지 돌아가기</button>
		</section>
	</div>
</body>
</html>