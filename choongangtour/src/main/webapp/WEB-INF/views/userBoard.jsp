<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>board</title>
<script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.6.0.js"></script>
<script type="text/javascript">
	function linkPage(pageNo) {
		<c:if test="${searchName != null}">
			var search = "&searchName=${searchName}&search=${search}";
			location.href = "./userBoard.do?pageNo=" + pageNo + search;
		</c:if>
		<c:if test="${searchName == null}">
			location.href = "./userBoard.do?pageNo=" + pageNo;
		</c:if>
	}
	
	function detail(b_no){
		location.href="./ubdetail.do?b_no="+b_no;
	}
</script>
</head>
<body>
	
	<div id="infobox"><c:import url="infobox.jsp"/></div>

	<!-- 샛별추가 1020 -->
	<c:if test="${sessionScope.l_id ne null}">
		<a href="./userWrite.do">글쓰기</a>
	</c:if>
	<table>
		<tr>
			<td>글번호</td>
			<td>글제목</td>
			<td>쓴날짜</td>
			<td>쓴사람</td>
			<td>추천수</td>
		</tr>
		<c:forEach items="${list }" var="l">
			<tr>
				<td>${l.b_no }</td>
				<td onclick="location.href='./ubdetail.do?b_no='+${l.b_no}">[${l.re_category}] ${l.b_title }</td>
				<td>${l.b_date }</td>
				<td>${l.l_name }(${l.l_id })</td>
				<td>${l.b_like }</td>
			</tr>
		</c:forEach>
	</table>

	<ui:pagination paginationInfo="${paginationInfo }" type="text"
		jsFunction="linkPage" />

	<form action="./userBoard.do">
		<select name="searchName">
			<option>선택하세요</option>
			<option value="title" <c:if test="${searchName eq 'title' }">selected="selected"</c:if>>제목</option>
			<option value="content" <c:if test="${searchName eq 'content' }">selected="selected"</c:if>>내용</option>
			<option value="writer" <c:if test="${searchName eq 'writer' }">selected="selected"</c:if>>글쓴이</option>
		</select>
		
		<input type="text" name="search" value="${search}">
		<button type="submit">검색</button>
	</form>
	
	<a href="./home.do">홈으로</a>
</body>
</html>