<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page session="false"%>
<html>
<head>
<title>boardRegion</title>
<style type="text/css">
#header {
	background-color: gray;
	width: 100%;
	height: 300px;
}

#menu {
	font-size: 15pt;
	height: 100px;
	text-align: center;
	line-height: 100px;
}

body {
	width: 100%;
	height: auto;
	border: solid black 2px;
	font-family: Malgun gothic;
	color: #191919;
}

#main {
	width: 60%;
	margin: 0 auto;
}

img {
	width: 100%;
}

#uploadDate {
	float: right;
}

#content {
	position: relative;
}

#contextText {
	position: relative;
	font-size: 15pt;
}

</style>

</head>
<body>



	<div id="header">
		<h1 style="text-align: center">중앙 투어</h1>
	</div>

	<div id="main">
	<c:if test="${param.b_title != null  }">
	<!--  menu 바  -->
		<div id="menu" style="text-align: center">
			<a href="./boardRegion.do?re_no=${param.re_no }&b_title=${param.b_title}">상세정보</a> &ensp;&ensp;
			<a href="./busanMtMap.do?re_no=${param.re_no }&b_title=${param.b_title}">지도</a> &ensp;&ensp;<!--  re_no를 request로 받아와서 mv로 가져오기 -->
			<a href="./boardRegion.do?re_no=${param.re_no }">주변 관광지</a> &ensp;&ensp;<!--  re_no를 request로 받아와서 mv로 가져오기 -->
			<a>여행사진</a>&ensp;&ensp;
			<a>리뷰</a>
		</div>
		
		</c:if>
		
		<hr>		<!--  줄 ---------------------------------------------------- -->
		
		<!--  1st paragraph---------------------------------------------------- -->
		<div id="모든 관광지들 ">
			 <c:if test="${fn:length(list) == 0 }"> <!--  상세정보값 없으면 이거 띄우기  (상세정보 페이지에 이거 안 보이게 할려고)-->
				<h1 style="font-size: xxx-large; font-weight: bold;">${list2[0].re_category }</h1> <!-- 각 행정구역  re_category-->
			<div id="list2,rightBeforeDetailSeparatedBySites 부산 황령산 / 서울 남산타워" style="border: 2px solid black">
			<!--  select * from boardRegionview2 where re_no= #re_no and visi =#visi  order by b_no 부산에 있는 관광지(3번지) (6번지) (7번지로 지정했음) 들을 찾아라 -->
			
				<h2>${list2[3].b_title} </h2> <img alt="" src="./resources/img/${list2[3].b_img }"  height="600px" onclick="location.href='boardRegion.do?re_no=${list2[0].re_no}&b_title=${list2[0].b_title}'"> <!-- 부산 황령산 이미지-->
			</div><br>
			<div id="list2,rightBeforeDetailSeparatedBySites 부산 호천마을/ " style="border: 2px solid black">
			
				<h2>${list2[6].b_title} </h2> <img alt="" src="./resources/img/${list2[6].b_img }"  height="600px" onclick="location.href='boardRegion.do?re_no=${list2[6].re_no}&b_title=${list2[6].b_title}'"> <!--광안리 이미지-->
			</div><br>
			<div id="list2,rightBeforeDetailSeparatedBySites 부산 해운대 / " style="border: 2px solid black">
			
				<h2>${list2[7].b_title}<!--  해운대 -->  </h2> <img alt="" src="./resources/img/${list2[7].b_img}"  height="600px" onclick="location.href='boardRegion.do?re_no=${list2[7].re_no}&b_title=${list2[9].b_title}'"> <!-- 부산 호천마을 이미지-->
			</div><br>
	
				
		</c:if>
		
		</div>
		
		<div id="DetailedInfoOnTheSelected"><!--  상세정보 -->
		<c:forEach items="${list }" var="l" varStatus="status" >
		 <c:if test="${status.count == 1}"><!-- 있다면 그냥 foreach문 무시하고 하나로 보이게  -->
		            <option value="${l.re_category }"  style="font-size: xxx-large; font-weight: bold;">${l.re_category}</option> <br>
		            <option value="${l.b_title }" style="font-size: x-large; font-weight: bold;">${l.b_title }</option>
		            <option value="${l.b_date }" style="float:right;" >업로드 날짜 : <fmt:formatDate value="${l.b_date }" pattern="yyyy-MM-dd HH:mm"/></option>
		        </c:if>

		</c:forEach>
		
		<c:forEach items="${list }" var="l">
		<c:choose>
			<c:when test="${l.b_img != null}"> <br>  <!--  이미지 있으면 보여주고  -->
		<img alt="" src="./resources/img/${l.b_img }">
				
			</c:when>
		
			<c:otherwise>
			
			</c:otherwise>
			</c:choose>
		
			<br>
			
			<div id="content">
				<table>
					<tr>
						<td id="contextText"><br>${l.b_content}<br></td>
						
					</tr>
				</table>
			</div>
		</c:forEach>

						
						<div id="citations" style="float: right"> <!--  출저 보여주기  -->
						<c:if test="${param.re_no == 20 }"> <!--  부산이면 -->
							출저 : <a href="https://www.visitbusan.net/kr/index.do"> https://www.visitbusan.net/kr/index.do</a>
						</c:if>
						<c:if test="${param.re_no == 1 }"> <!--  서울이면  -->
							출저 : <a href="https://korean.visitseoul.net/index">https://korean.visitseoul.net/index</a>
						</c:if>
						</div>

	<div id="footer">
	
					
	
					
	</div>
	</div>
	</div>


</body>
</html>
