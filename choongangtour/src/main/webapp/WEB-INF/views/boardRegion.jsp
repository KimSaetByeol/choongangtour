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
	font-size: 15pt;
	position: relative;
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
			<a href="./regionMap.do?re_no=${param.re_no }&b_title=${param.b_title}">지도</a> &ensp;&ensp;<!--  re_no를 request로 받아와서 mv로 가져오기 -->
			<a href="./boardRegion.do?re_no=${param.re_no }">주변 관광지</a> &ensp;&ensp;<!--  re_no를 request로 받아와서 mv로 가져오기 -->
		</div>
		
		</c:if>
		
		<c:if test="${param.b_title != null }">
		<hr>		<!--  줄 ----------------------------------------------------  세부 관광페이지에서만 줄 보이게 해놓았습니다.--> 
		</c:if>
		
		<!--  1st paragraph---------------------------------------------------- -->
		<div id="모든 관광지들 ">
			 <c:if test="${fn:length(list) == 0 }"> <!--  상세정보값 없으면 이거 띄우기  (상세정보 페이지에 이거 안 보이게 할려고)-->
				<h1 style="font-size: xxx-large; font-weight: bold;">${list2[0].re_category }</h1> <!-- 각 행정구역  re_category-->
			<div id="list2,rightBeforeDetailSeparatedBySites 부산 황령산 / 서울 남산타워" style="border: 2px solid black">
			<!--  select * from boardRegionview2 where re_no= #re_no and visi =#visi  order by b_no 지역에 있는 관광지(3번지) (6번지) (7번지로 지정했음) 들을 찾아라 -->
			<!--  각 지역(region)에는 보여주는 게시물이 4(단락)/3/4  총(10~12) 게시물(단락)으로  구성되어 있고, 이것에 따라 n번지의 이미지를 미리보기 할 수 있음  -->
				<h2>${list2[3].b_title} </h2> <img alt="" src="${list2[3].b_url }"  height="600px" onclick="location.href='boardRegion.do?re_no=${list2[0].re_no}&b_title=${list2[0].b_title}'"> <!-- region에 있는 0번지의 이미지-->
			</div><br>
			
			<c:if test="${list2[6].b_title != null}"><!-- 만약 관광지가 있다면 -->
			<div id="list2,rightBeforeDetailSeparatedBySites 부산 호천마을/ " style="border: 2px solid black">
				<h2>${list2[6].b_title} </h2> <img alt="" src="${list2[6].b_url }"  height="600px" onclick="location.href='boardRegion.do?re_no=${list2[6].re_no}&b_title=${list2[6].b_title}'"> <!-- region에 있는 6번지의 이미지-->
			</div><br>
			
			</c:if>
			<c:if test="${list2[7].b_title != null}"> <!-- 만약 관광지가 있다면 -->
			<div id="list2,rightBeforeDetailSeparatedBySites 부산 해운대 / " style="border: 2px solid black">
				<h2>${list2[7].b_title}<!--  해운대 -->  </h2> <img alt="" src="${list2[7].b_url}"  height="600px" onclick="location.href='boardRegion.do?re_no=${list2[7].re_no}&b_title=${list2[7].b_title}'">  <!-- region에 있는 7번지의 이미지-->
			</div><br>
			</c:if>
			
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
			<c:when test="${l.b_url != null}"> <br>  <!--  이미지 있으면 보여주고  -->
				<img alt="img" src="${l.b_url }">
				
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
		<c:if test="${param.b_title != null }">
			<div id= box>
<table> 
				<tr valign="top"> <!--  이것또한 상단 이미지 미리보기와 같게 region의 첫번쨰 게시물에 있는 정보만 보여주게 한다.  -->
				<th>주 소</th>
				
					<td>${list[0].b_addr } </td>
				</tr> 
				
				<tr valign="top">
				<th> 홈페이지 </th>
					<td>${list[0].b_web} </td>
				</tr> 
				<tr valign="top">
				<th> 전화번호</th>
					<td>${list[0].b_tele} </td>
				</tr> 
				<tr valign="top">
				<th>이용시간</th>
					<td>${list[0].b_time } </td>
				</tr> 
				<tr valign="top">
				<th>이용요금</th>
					<td>${list[0].b_price }</td>
				</tr> 
				<tr valign="top">
				<th>기타 정보 </th>
					<td> ${list[0].b_tip } </td>
				</tr> 
			
				
		
</table>
		

		</div>
		</c:if>
						<!--  맨 아래에 있는 출저 -->
						
						<div id="citations" style="float: right"> <!--  출저 보여주기  -->
						<c:if test="${param.re_no == 1  && param.b_title != null}"> <!--  서울이면  -->
							출저 : <a href="https://korean.visitseoul.net/index">https://korean.visitseoul.net/index</a>
						</c:if>
						<c:if test="${param.re_no == 2  && param.b_title != null}"> <!--  경기도-->
							출저 : <a href="https://grand.ggtour.or.kr/">https://grand.ggtour.or.kr/</a>
						</c:if>
						<c:if test="${param.re_no == 3  && param.b_title != null}"> <!--  강원-->
							출저 : <a href="https://www.gangwon.to/gwtour">https://www.gangwon.to/gwtour</a>
						</c:if>
						<c:if test="${param.re_no == 4  && param.b_title != null}"> <!--  인천-->
							출저 : <a href="https://itour.incheon.go.kr/">https://itour.incheon.go.kr/</a>
						</c:if>
						<c:if test="${param.re_no == 5  && param.b_title != null}"> <!--  세종-->
							출저 : <a href="https://www.sejong.go.kr/">https://www.sejong.go.kr/</a>
						</c:if>
						<c:if test="${param.re_no == 6  && param.b_title != null}"> <!--  경북-->
							출저 : <a href="https://tour.gb.go.kr/">https://tour.gb.go.kr/</a>
						</c:if>
						<c:if test="${param.re_no == 7  && param.b_title != null}"> <!--  경남-->
							출저 : <a href="https://tour.gyeongnam.go.kr/">https://tour.gyeongnam.go.kr/</a>
						</c:if>
						<c:if test="${param.re_no == 8  && param.b_title != null}"> <!--  전북-->
							출저 : <a href="https://tour.jb.go.kr/">https://tour.jb.go.kr/</a>
						</c:if>
						<c:if test="${param.re_no == 9  && param.b_title != null}"> <!--  전남-->
							출저 : <a href="https://www.namdokorea.com/">https://www.namdokorea.com/</a>
						</c:if>
						<c:if test="${param.re_no == 10  && param.b_title != null}"> <!--  충북-->
							출저 : <a href="https://tour.chungbuk.go.kr/www/index.do">https://tour.chungbuk.go.kr/www/index.do</a>
						</c:if>
						<c:if test="${param.re_no == 11  && param.b_title != null}"> <!--  충남-->
							출저 : <a href="https://tour.chungnam.go.kr/">https://tour.chungnam.go.kr/</a>
						</c:if>
						</div>
						<c:if test="${param.re_no == 12  && param.b_title != null}"> <!--  대구-->
							출저 : <a href="https://tour.daegu.go.kr/">https://tour.daegu.go.kr/</a>
						</c:if>
						<c:if test="${param.re_no == 13  && param.b_title != null}"> <!--  대전-->
							출저 : <a href="https://www.daejeon.go.kr/tou/index.do">https://www.daejeon.go.kr/tou/index.do</a>
						</c:if>
						<c:if test="${param.re_no == 14  && param.b_title != null}"> <!--  울산-->
							출저 : <a href="https://tour.ulsan.go.kr/">https://tour.ulsan.go.kr/</a>
						</c:if>
						<c:if test="${param.re_no == 15  && param.b_title != null}"> <!--  제주도-->
							출저 : <a href="https://www.visitjeju.net/en">https://www.visitjeju.net/en</a>
						</c:if>						
						<c:if test="${param.re_no == 16  && param.b_title != null}"> <!--  독도-->
							출저 : <a href="https://dokdo.mofa.go.kr/kor/">https://dokdo.mofa.go.kr/kor/</a>
						</c:if>
						<c:if test="${param.re_no == 17 && param.b_title != null}"> <!--  울릉-->
							출저 : <a href="http://ulleung.go.kr/">http://ulleung.go.kr/</a>
						</c:if>
						<c:if test="${param.re_no == 18 && param.b_title != null}"> <!--  광주-->
							출저 : <a href="https://www.gjcity.go.kr/tour/contents.do?mId=0101010100">https://www.gjcity.go.kr/tour/contents.do?mId=0101010100 </a>
						</c:if>
						<c:if test="${param.re_no == 20 && param.b_title != null}"> <!--  부산이면 -->
							출저 : <a href="https://www.visitbusan.net/kr/index.do"> https://www.visitbusan.net/kr/index.do</a>
						</c:if>
						</div>
						
						
	<br>
						

	<div id="footer">
	
					
	
					
	</div>
	</div>


</body>
</html>
