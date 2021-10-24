<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page session="false"%>
<html>
<head>
	<title>Home</title>
<style type="text/css">
body{
	font-size: 30pt;
	margin: 0 auto;
	text-align: center;

}


</style>
</head>

<body>
<h1>
	Hello world!  
</h1>

<P>  The time on the server is ${serverTime}. </P>


<a href="./admin.do">관리자</a> <br>
<a href="./touristSites.do">tour</a> <br>

<a href="./userBoard.do">userBoard</a> <br>
<a href="./infobox.do">로그인박스(임시)</a> <br>
<a href="./travelTest.do">여행테스트</a> <br>
</body>
</html>
