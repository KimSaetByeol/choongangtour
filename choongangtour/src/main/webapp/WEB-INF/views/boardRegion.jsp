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
.jzdbox1 {
	width: 300px;
	background: #332f2e;
	border-radius: 5px;
	overflow: hidden;
	display: block;
	margin-bottom: 5px;
	box-shadow: 0 0 10px #201d1c;
	margin: 0 auto;
	margin-top: 30px;
}

.jzdcal {
	padding: 0 0px 0px 0px;
	box-sizing: border-box !important;
	background: #749d9e;
	background: -webkit-linear-gradient(#749d9e, #b3a68b) !important;
	background: -o-linear-gradient(#749d9e, #b3a68b) !important;
	background: -moz-linear-gradient(#749d9e, #b3a68b) !important;
	background: linear-gradient(#749d9e, #b3a68b) !important;
}

.jzdcalt {
	font: 18px 'Roboto';
	font-weight: 700;
	color: #f7f3eb;
	display: block;
	margin: 18px 0 0 0;
	text-transform: uppercase;
	text-align: center;
	letter-spacing: 1px;
}

.jzdcal span {
	font: 11px 'Roboto';
	font-weight: 400;
	color: #f7f3eb;
	text-align: center;
	width: 42px;
	height: 42px;
	display: inline-block;
	float: left;
	overflow: hidden;
	line-height: 40px;
}

.jzdcal .jzdb:before {
	opacity: 0.3;
	content: 'o';
}

.circle {
	border: 1px solid #f7f3eb;
	box-sizing: border-box !important;
	border-radius: 200px !important;
}

span[data-title]:hover:after, div[data-title]:hover:after {
	font: 11px 'Roboto';
	font-weight: 400;
	content: attr(data-title);
	position: absolute;
	margin: 0 0 100px;
	background: #282423;
	border: 1px solid #f7f3eb;
	color: #f7f3eb;
	padding: 5px;
	z-index: 9999;
	min-width: 150px;
	max-width: 150px;
}

#dropdown1 {
	position: relative;
	display: inline-block;
}

#dropdown-content {
	display: none;
	position: absolute;
	background-color: white;
	padding: 5px;
	min-width: 50px;
}

#dropdown-content a {
	display: block;
}

#dropdown1:hover #dropdown-content {
	display: block;
}

#imgshowninBR {
	width: 800px;
}

#contextText {
	width: 800px;
}
</style>

</head>
<body>
	<c:import url="./banner.jsp" />
	<div id="middle" align="center"
		style="padding-top: 20px; padding-bottom: 30px; display: flex; flex-direction: row; justify-content: space-evenly;">
		<div style="width: 20px;"></div>


		<div id="article" align="center"
			style="display: flex; flex-direction: column; justify-content: flex-start; box-shadow: 1px 1px 1px 1px #C9C9C9; border-style: outset; border-radius: 10px; padding: 5px; border-radius: 10px; padding-top: 10px; width: 1150px;">

			<div id="main" align="center">
				<c:if test="${param.b_title != null  }">
					<!--  menu 바  -->
					<div id="menu" style="text-align: center">
						<a
							href="./boardRegion.do?re_no=${param.re_no }&b_title=${param.b_title}">상세정보</a>
						&ensp;&ensp; <a
							href="./regionMap.do?re_no=${param.re_no }&b_title=${param.b_title}">지도</a>
						&ensp;&ensp;
						<!--  re_no를 request로 받아와서 mv로 가져오기 -->
						<a href="./boardRegion.do?re_no=${param.re_no }">주변 관광지</a>
						&ensp;&ensp;
						<!--  re_no를 request로 받아와서 mv로 가져오기 -->
					</div>

				</c:if>

				<c:if test="${param.b_title != null }">
					<hr>
					<!--  줄 ----------------------------------------------------  세부 관광페이지에서만 줄 보이게 해놓았습니다.-->
				</c:if>

				<!--  1st paragraph---------------------------------------------------- -->
				<div id="모든 관광지들 " align="center">
					<c:if test="${fn:length(list) == 0 }">
						<!--  상세정보값 없으면 이거 띄우기  (상세정보 페이지에 이거 안 보이게 할려고)-->
						<h1 style="font-size: xxx-large; font-weight: bold;">${list2[0].re_category }</h1>
						<!-- 각 행정구역  re_category-->
						<hr>
						<div id="list2,rightBeforeDetailSeparatedBySites 부산 황령산 / 서울 남산타워">
							<!--  select * from boardRegionview2 where re_no= #re_no and visi =#visi  order by b_no 지역에 있는 관광지(3번지) (6번지) (7번지로 지정했음) 들을 찾아라 -->
							<!--  각 지역(region)에는 보여주는 게시물이 4(단락)/3/4  총(10~12) 게시물(단락)으로  구성되어 있고, 이것에 따라 n번지의 이미지를 미리보기 할 수 있음  -->
							<h2>${list2[3].b_title}</h2>
							<img id="imgShownInBR" alt="" src="${list2[3].b_url }"
								width="800px"
								onclick="location.href='boardRegion.do?re_no=${list2[0].re_no}&b_title=${list2[0].b_title}'">
							<!-- region에 있는 0번지의 이미지-->
						</div>
						<br>
						<hr>

						<c:if test="${list2[6].b_title != null}">
							<!-- 만약 관광지가 있다면 -->
							<div id="list2,rightBeforeDetailSeparatedBySites 부산 호천마을/ ">
								<h2>${list2[6].b_title}</h2>
								<img id="imgShownInBR" alt="" src="${list2[6].b_url }"
									width="800px;"
									onclick="location.href='boardRegion.do?re_no=${list2[6].re_no}&b_title=${list2[6].b_title}'">
								<!-- region에 있는 6번지의 이미지-->
							</div>
							<br>
							<hr>

						</c:if>
						<c:if test="${list2[7].b_title != null}">
							<!-- 만약 관광지가 있다면 -->
							<div id="list2,rightBeforeDetailSeparatedBySites 부산 해운대 / ">
								<h2>${list2[7].b_title}<!--  해운대 -->
								</h2>
								<img id="imgShownInBR" alt="" src="${list2[7].b_url}"
									width="800px;"
									onclick="location.href='boardRegion.do?re_no=${list2[7].re_no}&b_title=${list2[7].b_title}'">
								<!-- region에 있는 7번지의 이미지-->
							</div>
							<br>
						</c:if>

					</c:if>


				</div>

				<div id="DetailedInfoOnTheSelected">
					<!--  상세정보 -->
					<c:forEach items="${list }" var="l" varStatus="status">
						<c:if test="${status.count == 1}">
							<!-- 있다면 그냥 foreach문 무시하고 하나로 보이게  -->
							<option value="${l.re_category }"
								style="font-size: xxx-large; font-weight: bold;">${l.re_category}</option>
							<option value="${l.b_title }"
								style="font-size: x-large; font-weight: bold;">${l.b_title }</option>
							<option value="${l.b_date }">업로드 날짜 :
								<fmt:formatDate value="${l.b_date }" pattern="yyyy-MM-dd HH:mm" /></option>

							<hr>
						</c:if>

					</c:forEach>

					<c:forEach items="${list }" var="l">
						<c:choose>
							<c:when test="${l.b_url != null}">
								<br>
								<!--  이미지 있으면 보여주고  -->
								<img id="imgShownInBR" alt="img" src="${l.b_url }">

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
						<br>
						<div id=box>
							<table>
								<tr valign="top">
									<!--  이것또한 상단 이미지 미리보기와 같게 region의 첫번쨰 게시물에 있는 정보만 보여주게 한다.  -->
									<th>주 소</th>

									<td>${list[0].b_addr }</td>
								</tr>

								<tr valign="top">
									<th>홈페이지</th>
									<td>${list[0].b_web}</td>
								</tr>
								<tr valign="top">
									<th>전화번호</th>
									<td>${list[0].b_tele}</td>
								</tr>
								<tr valign="top">
									<th>이용시간</th>
									<td>${list[0].b_time }</td>
								</tr>
								<tr valign="top">
									<th>이용요금</th>
									<td>${list[0].b_price }</td>
								</tr>
								<tr valign="top">
									<th>기타 정보</th>
									<td>${list[0].b_tip }</td>
								</tr>



							</table>


						</div>
					</c:if>
					<!--  맨 아래에 있는 출저 -->

					<div id="citations" style="float: right">
						<!--  출저 보여주기  -->
						<c:if test="${param.re_no == 1  && param.b_title != null}">
							<!--  서울이면  -->
							출저 : <a href="https://korean.visitseoul.net/index">https://korean.visitseoul.net/index</a>
						</c:if>
						<c:if test="${param.re_no == 2  && param.b_title != null}">
							<!--  경기도-->
							출저 : <a href="https://grand.ggtour.or.kr/">https://grand.ggtour.or.kr/</a>
						</c:if>
						<c:if test="${param.re_no == 3  && param.b_title != null}">
							<!--  강원-->
							출저 : <a href="https://www.gangwon.to/gwtour">https://www.gangwon.to/gwtour</a>
						</c:if>
						<c:if test="${param.re_no == 4  && param.b_title != null}">
							<!--  인천-->
							출저 : <a href="https://itour.incheon.go.kr/">https://itour.incheon.go.kr/</a>
						</c:if>
						<c:if test="${param.re_no == 5  && param.b_title != null}">
							<!--  세종-->
							출저 : <a href="https://www.sejong.go.kr/">https://www.sejong.go.kr/</a>
						</c:if>
						<c:if test="${param.re_no == 6  && param.b_title != null}">
							<!--  경북-->
							출저 : <a href="https://tour.gb.go.kr/">https://tour.gb.go.kr/</a>
						</c:if>
						<c:if test="${param.re_no == 7  && param.b_title != null}">
							<!--  경남-->
							출저 : <a href="https://tour.gyeongnam.go.kr/">https://tour.gyeongnam.go.kr/</a>
						</c:if>
						<c:if test="${param.re_no == 8  && param.b_title != null}">
							<!--  전북-->
							출저 : <a href="https://tour.jb.go.kr/">https://tour.jb.go.kr/</a>
						</c:if>
						<c:if test="${param.re_no == 9  && param.b_title != null}">
							<!--  전남-->
							출저 : <a href="https://www.namdokorea.com/">https://www.namdokorea.com/</a>
						</c:if>
						<c:if test="${param.re_no == 10  && param.b_title != null}">
							<!--  충북-->
							출저 : <a href="https://tour.chungbuk.go.kr/www/index.do">https://tour.chungbuk.go.kr/www/index.do</a>
						</c:if>
						<c:if test="${param.re_no == 11  && param.b_title != null}">
							<!--  충남-->
							출저 : <a href="https://tour.chungnam.go.kr/">https://tour.chungnam.go.kr/</a>
						</c:if>
					</div>
					<c:if test="${param.re_no == 12  && param.b_title != null}">
						<!--  대구-->
							출저 : <a href="https://tour.daegu.go.kr/">https://tour.daegu.go.kr/</a>
					</c:if>
					<c:if test="${param.re_no == 13  && param.b_title != null}">
						<!--  대전-->
							출저 : <a href="https://www.daejeon.go.kr/tou/index.do">https://www.daejeon.go.kr/tou/index.do</a>
					</c:if>
					<c:if test="${param.re_no == 14  && param.b_title != null}">
						<!--  울산-->
							출저 : <a href="https://tour.ulsan.go.kr/">https://tour.ulsan.go.kr/</a>
					</c:if>
					<c:if test="${param.re_no == 15  && param.b_title != null}">
						<!--  제주도-->
							출저 : <a href="https://www.visitjeju.net/en">https://www.visitjeju.net/en</a>
					</c:if>
					<c:if test="${param.re_no == 16  && param.b_title != null}">
						<!--  독도-->
							출저 : <a href="https://dokdo.mofa.go.kr/kor/">https://dokdo.mofa.go.kr/kor/</a>
					</c:if>
					<c:if test="${param.re_no == 17 && param.b_title != null}">
						<!--  울릉-->
							출저 : <a href="http://ulleung.go.kr/">http://ulleung.go.kr/</a>
					</c:if>
					<c:if test="${param.re_no == 18 && param.b_title != null}">
						<!--  광주-->
							출저 : <a
							href="https://www.gjcity.go.kr/tour/contents.do?mId=0101010100">https://www.gjcity.go.kr/tour/contents.do?mId=0101010100
						</a>
					</c:if>
					<c:if test="${param.re_no == 20 && param.b_title != null}">
						<!--  부산이면 -->
							출저 : <a href="https://www.visitbusan.net/kr/index.do">
							https://www.visitbusan.net/kr/index.do</a>
					</c:if>
				</div>


				<br>

			</div>
		</div>
		<c:import url="./sidebar.jsp" />
	</div>
	<c:import url="./footer.jsp" />
</body>
</html>
