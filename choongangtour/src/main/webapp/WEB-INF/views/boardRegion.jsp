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
table#infoTB {
	min-width: 850px;
	text-align: center;
}

table#infoTB td {
	padding-top: 5px;
	padding-bottom: 5px;
}

.tbinfo {
	padding: 5 20 5 20;
	width: 90px;
}

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
					<!--  menu ???  -->
					<div id="menu" style="text-align: center; margin: 10 0 10 0;">
						<a
							href="./boardRegion.do?re_no=${param.re_no }&b_title=${param.b_title}">????????????</a>
						&ensp;&ensp; <a
							href="./regionMap.do?re_no=${param.re_no }&b_title=${param.b_title}">??????</a>
						&ensp;&ensp;
						<!--  re_no??? request??? ???????????? mv??? ???????????? -->
						<a href="./boardRegion.do?re_no=${param.re_no }">?????? ?????????</a>
						&ensp;&ensp;
						<!--  re_no??? request??? ???????????? mv??? ???????????? -->
					</div>

				</c:if>

				<c:if test="${param.b_title != null }">
					<hr>
					<!--  ??? ----------------------------------------------------  ?????? ???????????????????????? ??? ????????? ??????????????????.-->
				</c:if>

				<!--  1st paragraph---------------------------------------------------- -->
				<div id="?????? ???????????? " align="center">
					<c:if test="${fn:length(list) == 0 }">
						<!--  ??????????????? ????????? ?????? ?????????  (???????????? ???????????? ?????? ??? ????????? ?????????)-->
						<h1 style="font-size: 30pt; font-weight: bold;">${list2[0].re_category }</h1>
						<!-- ??? ????????????  re_category-->
						<hr>
						<div id="list2,rightBeforeDetailSeparatedBySites ?????? ????????? / ?????? ????????????">
							<!--  select * from boardRegionview2 where re_no= #re_no and visi =#visi  order by b_no ????????? ?????? ?????????(3??????) (6??????) (7????????? ????????????) ?????? ????????? -->
							<!--  ??? ??????(region)?????? ???????????? ???????????? 4(??????)/3/4  ???(10~12) ?????????(??????)??????  ???????????? ??????, ????????? ?????? n????????? ???????????? ???????????? ??? ??? ??????  -->
							<h2>${list2[3].b_title}</h2>
							<img id="imgShownInBR" alt="" src="${list2[3].b_url }"
								width="800px"
								onclick="location.href='boardRegion.do?re_no=${list2[0].re_no}&b_title=${list2[0].b_title}'">
							<!-- region??? ?????? 0????????? ?????????-->
						</div>
						<br>
						<hr>

						<c:if test="${list2[6].b_title != null}">
							<!-- ?????? ???????????? ????????? -->
							<div id="list2,rightBeforeDetailSeparatedBySites ?????? ????????????/ ">
								<h2>${list2[6].b_title}</h2>
								<img id="imgShownInBR" alt="" src="${list2[6].b_url }"
									width="800px;"
									onclick="location.href='boardRegion.do?re_no=${list2[6].re_no}&b_title=${list2[6].b_title}'">
								<!-- region??? ?????? 6????????? ?????????-->
							</div>
							<br>
							<hr>

						</c:if>
						<c:if test="${list2[7].b_title != null}">
							<!-- ?????? ???????????? ????????? -->
							<div id="list2,rightBeforeDetailSeparatedBySites ?????? ????????? / ">
								<h2>${list2[7].b_title}<!--  ????????? -->
								</h2>
								<img id="imgShownInBR" alt="" src="${list2[7].b_url}"
									width="800px;"
									onclick="location.href='boardRegion.do?re_no=${list2[7].re_no}&b_title=${list2[7].b_title}'">
								<!-- region??? ?????? 7????????? ?????????-->
							</div>
							<br>
						</c:if>

					</c:if>


				</div>

				<div id="DetailedInfoOnTheSelected">
					<!--  ???????????? -->
					<c:forEach items="${list }" var="l" varStatus="status">
						<c:if test="${status.count == 1}">
							<!-- ????????? ?????? foreach??? ???????????? ????????? ?????????  -->
							<option value="${l.re_category }"
								style="font-size: 30pt; font-weight: bold;">${l.re_category}</option>
							<option value="${l.b_title }"
								style="font-size: x-large; font-weight: bold; margin: 10 0 10 0;">${l.b_title }</option>
							<option value="${l.b_date }">????????? ?????? :
								<fmt:formatDate value="${l.b_date }" pattern="yyyy-MM-dd HH:mm" /></option>

							<hr>
						</c:if>

					</c:forEach>

					<c:forEach items="${list }" var="l">
						<c:choose>
							<c:when test="${l.b_url != null}">
								<br>
								<!--  ????????? ????????? ????????????  -->
								<img id="imgShownInBR" alt="img" src="${l.b_url }">

							</c:when>

							<c:otherwise>

							</c:otherwise>
						</c:choose>

						<br>

						<div id="content">
							<table>
								<tr>
									<td id="contextText"><br><p style="line-height: 2.2;">${l.b_content}<p></td>

								</tr>
							</table>
						</div>
					</c:forEach>
					<c:if test="${param.b_title != null }">
						<br>
						<div id=box
							style="width: 800px; min-height: 180px; background-color: #EEF3ED; padding-top: 25px; padding-bottom: 25px;">
							<table id="infoTB">
								<tr valign="top">
									<!--  ???????????? ?????? ????????? ??????????????? ?????? region??? ????????? ???????????? ?????? ????????? ???????????? ??????.  -->
									<th class="tbinfo">??? ???</th>
									<td>${list[0].b_addr }</td>
								</tr>

								<tr valign="top">
									<th class="tbinfo">????????????</th>
									<td><a href=" ${list[0].b_web }">${list[0].b_title}
											???????????? ???????????? ????</a></td>
								</tr>
								<tr valign="top">
									<th class="tbinfo">????????????</th>
									<td>${list[0].b_tele}</td>
								</tr>
								<tr valign="top">
									<th class="tbinfo">????????????</th>
									<td>
									<c:choose>
										<c:when test="${list[0].b_no eq 409 }">
											<!-- 409, ?????? ?????? ??? ????????? -->
											<a href="${list[0].b_time }">????????? ???????????? ???????????? ????</a>
										</c:when>
										<c:when test="${list[0].b_no eq 349 }">
											<!-- 349, ????????? -->
											<a href="${list[0].b_time }">????????? ???????????? ???????????? ????</a>
										</c:when>
										<c:otherwise>
													${list[0].b_time }
										</c:otherwise>
									</c:choose>
									</td>
								</tr>
								<tr valign="top">
									<th class="tbinfo">????????????</th>
									<td>
									<c:choose>
										<c:when test="${list[0].b_no eq 412 || list[0].b_no eq 409}">
											<a href="${list[0].b_price }">????????? ???????????? ???????????? ????</a>
										</c:when>
										<c:otherwise>
											${list[0].b_price }
										</c:otherwise>
									</c:choose>
									</td>
								</tr>
								<tr valign="top">
									<th class="tbinfo">?????? ??????</th>
									<td><c:choose>
											<c:when test="${list[0].b_no eq 422 }">
												<!-- 422, ?????? ????????? ???????????? -->
												<a href="${list[0].b_tip }">????????? ???????????? ???????????? ????</a>
											</c:when>
											<c:when test="${list[0].b_no eq 349 }">
												<!-- 349, ????????? -->
												<a href="${list[0].b_tip }">????????? ???????????? ???????????? ????</a>
											</c:when>
											<c:otherwise>
												${list[0].b_tip }
											</c:otherwise>
										</c:choose></td>
								</tr>
							</table>
						</div>
					</c:if>
					<!--  ??? ????????? ?????? ?????? -->

					<div id="citations" style="float: right; padding: 10 10 10 0;">
						<!--  ?????? ????????????  -->
						<c:if test="${param.re_no == 1  && param.b_title != null}">
							<!--  ????????????  -->
							?????? : <a href="https://korean.visitseoul.net/index">https://korean.visitseoul.net/index</a>
						</c:if>
						<c:if test="${param.re_no == 2  && param.b_title != null}">
							<!--  ?????????-->
							?????? : <a href="https://grand.ggtour.or.kr/">https://grand.ggtour.or.kr/</a>
						</c:if>
						<c:if test="${param.re_no == 3  && param.b_title != null}">
							<!--  ??????-->
							?????? : <a href="https://www.gangwon.to/gwtour">https://www.gangwon.to/gwtour</a>
						</c:if>
						<c:if test="${param.re_no == 4  && param.b_title != null}">
							<!--  ??????-->
							?????? : <a href="https://itour.incheon.go.kr/">https://itour.incheon.go.kr/</a>
						</c:if>
						<c:if test="${param.re_no == 5  && param.b_title != null}">
							<!--  ??????-->
							?????? : <a href="https://www.sejong.go.kr/">https://www.sejong.go.kr/</a>
						</c:if>
						<c:if test="${param.re_no == 6  && param.b_title != null}">
							<!--  ??????-->
							?????? : <a href="https://tour.gb.go.kr/">https://tour.gb.go.kr/</a>
						</c:if>
						<c:if test="${param.re_no == 7  && param.b_title != null}">
							<!--  ??????-->
							?????? : <a href="https://tour.gyeongnam.go.kr/">https://tour.gyeongnam.go.kr/</a>
						</c:if>
						<c:if test="${param.re_no == 8  && param.b_title != null}">
							<!--  ??????-->
							?????? : <a href="https://tour.jb.go.kr/">https://tour.jb.go.kr/</a>
						</c:if>
						<c:if test="${param.re_no == 9  && param.b_title != null}">
							<!--  ??????-->
							?????? : <a href="https://www.namdokorea.com/">https://www.namdokorea.com/</a>
						</c:if>
						<c:if test="${param.re_no == 10  && param.b_title != null}">
							<!--  ??????-->
							?????? : <a href="https://tour.chungbuk.go.kr/www/index.do">https://tour.chungbuk.go.kr/www/index.do</a>
						</c:if>
						<c:if test="${param.re_no == 11  && param.b_title != null}">
							<!--  ??????-->
							?????? : <a href="https://tour.chungnam.go.kr/">https://tour.chungnam.go.kr/</a>
						</c:if>
					</div>
					<c:if test="${param.re_no == 12  && param.b_title != null}">
						<!--  ??????-->
							?????? : <a href="https://tour.daegu.go.kr/">https://tour.daegu.go.kr/</a>
					</c:if>
					<c:if test="${param.re_no == 13  && param.b_title != null}">
						<!--  ??????-->
							?????? : <a href="https://www.daejeon.go.kr/tou/index.do">https://www.daejeon.go.kr/tou/index.do</a>
					</c:if>
					<c:if test="${param.re_no == 14  && param.b_title != null}">
						<!--  ??????-->
							?????? : <a href="https://tour.ulsan.go.kr/">https://tour.ulsan.go.kr/</a>
					</c:if>
					<c:if test="${param.re_no == 15  && param.b_title != null}">
						<!--  ?????????-->
							?????? : <a href="https://www.visitjeju.net/en">https://www.visitjeju.net/en</a>
					</c:if>
					<c:if test="${param.re_no == 16  && param.b_title != null}">
						<!--  ??????-->
							?????? : <a href="https://dokdo.mofa.go.kr/kor/">https://dokdo.mofa.go.kr/kor/</a>
					</c:if>
					<c:if test="${param.re_no == 17 && param.b_title != null}">
						<!--  ??????-->
							?????? : <a href="http://ulleung.go.kr/">http://ulleung.go.kr/</a>
					</c:if>
					<c:if test="${param.re_no == 18 && param.b_title != null}">
						<!--  ??????-->
							?????? : <a
							href="https://www.gjcity.go.kr/tour/contents.do?mId=0101010100">https://www.gjcity.go.kr/tour/contents.do?mId=0101010100
						</a>
					</c:if>
					<c:if test="${param.re_no == 20 && param.b_title != null}">
						<!--  ???????????? -->
							?????? : <a href="https://www.visitbusan.net/kr/index.do">
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
