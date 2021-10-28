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
  width:300px;
  background:#332f2e;
  border-radius:5px;
  overflow:hidden;
  display:block;
  margin-bottom:5px;
  box-shadow:0 0 10px #201d1c;
  margin:0 auto;
  margin-top:30px;
}

.jzdcal {
  padding:0 0px 0px 0px;
  box-sizing:border-box!important;
  background:#749d9e;
  background: -webkit-linear-gradient(#749d9e, #b3a68b)!important;
  background: -o-linear-gradient(#749d9e, #b3a68b)!important;
  background: -moz-linear-gradient(#749d9e, #b3a68b)!important;
  background: linear-gradient(#749d9e, #b3a68b)!important;
}

.jzdcalt {
  font:18px 'Roboto';
  font-weight:700;
  color:#f7f3eb;
  display:block;
  margin:18px 0 0 0;
  text-transform:uppercase;
  text-align:center;
  letter-spacing:1px;
}

.jzdcal span {
  font:11px 'Roboto';
  font-weight:400;
  color:#f7f3eb;
  text-align:center;
  width:42px;
  height:42px;
  display:inline-block;
  float:left;
  overflow:hidden;
  line-height:40px;
}

.jzdcal .jzdb:before {
  opacity:0.3;
  content:'o';
}

.circle {
  border:1px solid #f7f3eb;
  box-sizing:border-box!important;
  border-radius:200px!important;
}

span[data-title]:hover:after,
div[data-title]:hover:after {
  font:11px 'Roboto';
  font-weight:400;
  content:attr(data-title);
  position:absolute;
  margin:0 0 100px;
  background:#282423;
  border:1px solid #f7f3eb;
  color:#f7f3eb;
  padding:5px;
  z-index:9999;
  min-width:150px;
  max-width:150px;
}

#dropdown1{
  position:relative;
  display: inline-block;
}
#dropdown-content{
  display: none;
  position: absolute;
  background-color: white;
  padding: 5px;
  min-width: 50px;
}
#dropdown-content a{
  display: block;
}

#dropdown1:hover #dropdown-content{display: block;}

#imgshowninBR{
	width: 800px;
}
#contextText{
	width: 800px;
}
</style>

</head>
<body>


<div id ="UI" align="center">
  <div style="padding-bottom:10px; height:5px;"></div>

<div id ="menubar" style ="position: sticky; border-radius: 10px; box-shadow: 1px 1px 1px 1px #C9C9C9;border-style: outset; padding: 10px;  z-index: 21; height:50px; display:flex; flex-direction: row ; justify-content: space-around; width:1500px; padding-top:10px;">

  <div style="margin-left: 0;" ><a href="./"><img src="resources/img/logo.png" height="50px" style=""></a></div>

  <div id="dropdown1"><img src="resources/img/Menu1.png" width="150px" height="30px" style="padding-top:10px">
    <div id="dropdown-content" style=" box-shadow: 1px 1px 1px 1px #C9C9C9; border-style: outset; border-radius: 10px;">
      <h4><a href='./boardRegion.do?re_no=1'>서울</a></h4>
	<h4><a href='./boardRegion.do?re_no=2'>경기도</a></h4>
	<h4><a href='./boardRegion.do?re_no=3'>강원도</a></h4>
	<h4><a href='./boardRegion.do?re_no=4'>인천</a></h4>
	<h4><a href='./boardRegion.do?re_no=5'>세종</a></h4>
	<h4><a href='./boardRegion.do?re_no=6'>경상북도</a></h4>
	<h4><a href='./boardRegion.do?re_no=7'>경상남도</a></h4>
	<h4><a href='./boardRegion.do?re_no=8'>전라북도</a></h4>
	<h4><a href='./boardRegion.do?re_no=9'> 전라남도</a></h4>
	<h4><a href='./boardRegion.do?re_no=10'>충청북도</a></h4>
	<h4><a href='./boardRegion.do?re_no=11'>충청남도</a></h4>
	<h4><a href='./boardRegion.do?re_no=12'>대구</a></h4>
	<h4><a href='./boardRegion.do?re_no=13'>대전</a></h4>
	<h4><a href='./boardRegion.do?re_no=14'>울산</a></h4>
	<h4><a href='./boardRegion.do?re_no=15'>제주도</a></h4>
	<h4><a href='./boardRegion.do?re_no=16'>독도</a></h4>
	<h4><a href='./boardRegion.do?re_no=17'>울릉도</a></h4>
	<h4><a href='./boardRegion.do?re_no=18'>광주</a></h4>
	<h4><a href='./boardRegion.do?re_no=19'>북한</a></h4>
	
	<h4><a href='./boardRegion.do?re_no=20'>부산</a></h4>
    </div>
</div>
  <div><a href="./userBoard.do"><img src="resources/img/Menu2.png" width="150px" style="padding-top:10px"></a></div>
  <div><a href="./travelTest.do"><img src="resources/img/Menu3.png" width="150px" style="padding-top:10px"></a></div>
</div>

</div>



<div id ="middle"  align="center"   style=" padding-top: 20px; padding-bottom: 30px; display:flex; flex-direction: row; justify-content: space-evenly;">
  <div style="width:20px;"></div>


  <div id ="article" align="center" style="display:flex; flex-direction: column; justify-content: flex-start; box-shadow: 1px 1px 1px 1px #C9C9C9; border-style: outset; border-radius: 10px; padding: 5px;  border-radius: 10px; padding-top: 10px;   width: 1150px; ">

	<div id="main" align="center">
	<c:if test="${param.b_title != null  }">
	<!--  menu 바  -->
		<div id="menu" style="text-align: center"  >
			<a href="./boardRegion.do?re_no=${param.re_no }&b_title=${param.b_title}">상세정보</a> &ensp;&ensp;
			<a href="./regionMap.do?re_no=${param.re_no }&b_title=${param.b_title}">지도</a> &ensp;&ensp;<!--  re_no를 request로 받아와서 mv로 가져오기 -->
			<a href="./boardRegion.do?re_no=${param.re_no }">주변 관광지</a> &ensp;&ensp;<!--  re_no를 request로 받아와서 mv로 가져오기 -->
		</div>
		
		</c:if>
		
		<c:if test="${param.b_title != null }">
		<hr>		<!--  줄 ----------------------------------------------------  세부 관광페이지에서만 줄 보이게 해놓았습니다.--> 
		</c:if>
		
		<!--  1st paragraph---------------------------------------------------- -->
		<div id="모든 관광지들 "  align="center">
			 <c:if test="${fn:length(list) == 0 }"> <!--  상세정보값 없으면 이거 띄우기  (상세정보 페이지에 이거 안 보이게 할려고)-->
				<h1 style="font-size: xxx-large; font-weight: bold;">${list2[0].re_category }</h1> <!-- 각 행정구역  re_category-->
			<hr>
			<div id="list2,rightBeforeDetailSeparatedBySites 부산 황령산 / 서울 남산타워" >
			<!--  select * from boardRegionview2 where re_no= #re_no and visi =#visi  order by b_no 지역에 있는 관광지(3번지) (6번지) (7번지로 지정했음) 들을 찾아라 -->
			<!--  각 지역(region)에는 보여주는 게시물이 4(단락)/3/4  총(10~12) 게시물(단락)으로  구성되어 있고, 이것에 따라 n번지의 이미지를 미리보기 할 수 있음  -->
				<h2>${list2[3].b_title} </h2> <img id= "imgShownInBR"alt="" src="${list2[3].b_url }" width="800px"  onclick="location.href='boardRegion.do?re_no=${list2[0].re_no}&b_title=${list2[0].b_title}'"> <!-- region에 있는 0번지의 이미지-->
			</div><br><hr>
			
			<c:if test="${list2[6].b_title != null}"><!-- 만약 관광지가 있다면 -->
			<div id="list2,rightBeforeDetailSeparatedBySites 부산 호천마을/ " >
				<h2>${list2[6].b_title} </h2> <img id= "imgShownInBR" alt="" src="${list2[6].b_url }" width="800px;"  onclick="location.href='boardRegion.do?re_no=${list2[6].re_no}&b_title=${list2[6].b_title}'"> <!-- region에 있는 6번지의 이미지-->
			</div><br><hr>
			
			</c:if>
			<c:if test="${list2[7].b_title != null}"> <!-- 만약 관광지가 있다면 -->
			<div id="list2,rightBeforeDetailSeparatedBySites 부산 해운대 / " >
				<h2>${list2[7].b_title}<!--  해운대 -->  </h2> <img id= "imgShownInBR" alt="" src="${list2[7].b_url}"  width="800px;"  onclick="location.href='boardRegion.do?re_no=${list2[7].re_no}&b_title=${list2[7].b_title}'">  <!-- region에 있는 7번지의 이미지-->
			</div><br>
			</c:if>
			
	</c:if>
				
		
		</div>
		
		<div id="DetailedInfoOnTheSelected"  ><!--  상세정보 -->
		<c:forEach items="${list }" var="l" varStatus="status" >
		 <c:if test="${status.count == 1}"><!-- 있다면 그냥 foreach문 무시하고 하나로 보이게  -->
		            <option value="${l.re_category }"  style="font-size: xxx-large; font-weight: bold;">${l.re_category}</option>
		            <option value="${l.b_title }" style="font-size: x-large; font-weight: bold;">${l.b_title }</option>
		            <option value="${l.b_date }"  >업로드 날짜 : <fmt:formatDate value="${l.b_date }" pattern="yyyy-MM-dd HH:mm"/></option>
		            
		            <hr>
		        </c:if>

		</c:forEach>
		
		<c:forEach items="${list }" var="l">
		<c:choose>
			<c:when test="${l.b_url != null}"> <br>  <!--  이미지 있으면 보여주고  -->
				<img id= "imgShownInBR" alt="img" src="${l.b_url }">
				
			</c:when>
		
			<c:otherwise>
			
			</c:otherwise>
			</c:choose>
		
			<br>
			
			<div id="content">
				<table>
					<tr>
						<td id="contextText" ><br>${l.b_content}<br></td>
						
					</tr>
				</table>
			</div>
		</c:forEach>
		<c:if test="${param.b_title != null }">
		<br>
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
				
	</div>
</div>





<div id="aside"  style="padding-right: 30px; padding-left: 10px; display:flex; flex-direction: column;width:350px; border-radius: 10px; ">
<div style=" border-radius: 10px; box-shadow: 1px 1px 1px 1px #C9C9C9;border-style: outset; padding: 10px; ">

  <c:import url="/infobox.do"></c:import>
  
  
  </div>
  <div id='calendar'align="center">
    <div class="jzdbox1 jzdbasf jzdcal">

<div class="jzdcalt">october 2021</div>

<span>Su</span>
<span>Mo</span>
<span>Tu</span>
<span>We</span>
<span>Th</span>
<span>Fr</span>
<span>Sa</span>


<span class="jzdb"><!--BLANK--></span>
<span class="jzdb"><!--BLANK--></span>
<span class="jzdb"><!--BLANK--></span>
<span class="jzdb"><!--BLANK--></span>
<span class="jzdb"><!--BLANK--></span>
<span>1</span>
<span class="circle" data-title="My 25th birthday!">2</span>
<span>3</span>
<span>4</span>
<span>5</span>
<span>6</span>
<span>7</span>
<span>8</span>
<span>9</span>
<span>10</span>
<span>11</span>
<span class="circle" data-title="2 month anniversary!">12</span>
<span>13</span>
<span>14</span>
<span>15</span>
<span>16</span>
<span>17</span>
<span>18</span>
<span>19</span>
<span>20</span>
<span>21</span>
<span class="circle" data-title="#MusicMonday - share your favorite song!">22</span>
<span>23</span>
<span>24</span>
<span>25</span>
<span>26</span>
<span>27</span>
<span>28</span>
<span>29</span>
<span>30</span>
<span class="jzdb"><!--BLANK--></span>
<span class="jzdb"><!--BLANK--></span>
<span class="jzdb"><!--BLANK--></span>
<span class="jzdb"><!--BLANK--></span>
<span class="jzdb"><!--BLANK--></span>
<span class="jzdb"><!--BLANK--></span>
<span class="jzdb"><!--BLANK--></span>
</div>
</div>
<div style="padding:10px;" ></div>
<div id ="weather" align="center">
<!-- weather widget start --><div id="m-booked-custom-widget-22152"> <div class="weather-customize" style="width:310px;"> <div class="booked-weather-custom-160 color-009f5d" style="width:310px;" id="width5"> <div class="booked-weather-custom-160-date">날씨, 22 10월</div> <div class="booked-weather-custom-160-main"> <a target="_blank" href="https://booked.kr/weather/seoul-18406" class="booked-weather-custom-160-city"> 서울특별시 날씨 </a> <div class="booked-weather-custom-160-degree booked-weather-custom-C wmd01"><span><span class="plus">+</span>16</span></div> <div class="booked-weather-custom-details"> <p><span>최고:: <strong><span class="plus">+</span>16<sup>°</sup></strong></span><span> 최저:: <strong><span class="plus">+</span>9<sup>°</sup></strong></span></p> <p>습도: <strong>35%</strong></p> <p>바람: <strong>NNW - 14 KPH</strong></p> </div> </div> <div class="booked-weather-custom-160-main"> <a target="_blank" href="https://booked.kr/weather/busan-12084" class="booked-weather-custom-160-city"> 부산광역시 날씨 </a> <div class="booked-weather-custom-160-degree booked-weather-custom-C wmd18"><span><span class="plus">+</span>16</span></div> <div class="booked-weather-custom-details"> <p><span>최고:: <strong><span class="plus">+</span>17<sup>°</sup></strong></span><span> 최저:: <strong><span class="plus">+</span>11<sup>°</sup></strong></span></p> <p>습도: <strong>43%</strong></p> <p>바람: <strong>NNW - 22 KPH</strong></p> </div> </div> <div class="booked-weather-custom-160-main"> <a target="_blank" href="https://booked.kr/weather/incheon-18809" class="booked-weather-custom-160-city"> 인천 날씨 </a> <div class="booked-weather-custom-160-degree booked-weather-custom-C wmd06"><span><span class="plus">+</span>15</span></div> <div class="booked-weather-custom-details"> <p><span>최고:: <strong><span class="plus">+</span>17<sup>°</sup></strong></span><span> 최저:: <strong><span class="plus">+</span>9<sup>°</sup></strong></span></p> <p>습도: <strong>38%</strong></p> <p>바람: <strong>NNW - 19 KPH</strong></p> </div> </div> <div class="booked-weather-custom-160-main"> <a target="_blank" href="https://booked.kr/weather/daegu-17943" class="booked-weather-custom-160-city"> 대구광역시 날씨 </a> <div class="booked-weather-custom-160-degree booked-weather-custom-C wmd01"><span><span class="plus">+</span>16</span></div> <div class="booked-weather-custom-details"> <p><span>최고:: <strong><span class="plus">+</span>17<sup>°</sup></strong></span><span> 최저:: <strong><span class="plus">+</span>7<sup>°</sup></strong></span></p> <p>습도: <strong>42%</strong></p> <p>바람: <strong>NW - 17 KPH</strong></p> </div> </div> </div> </div> </div><script type="text/javascript"> var css_file=document.createElement("link"); var widgetUrl = location.href; css_file.setAttribute("rel","stylesheet"); css_file.setAttribute("type","text/css"); css_file.setAttribute("href",'https://s.bookcdn.com/css/weather.css?v=0.0.1'); document.getElementsByTagName("head")[0].appendChild(css_file); function setWidgetData_22152(data) { if(typeof(data) != 'undefined' && data.results.length > 0) { for(var i = 0; i < data.results.length; ++i) { var objMainBlock = document.getElementById('m-booked-custom-widget-22152'); if(objMainBlock !== null) { var copyBlock = document.getElementById('m-bookew-weather-copy-'+data.results[i].widget_type); objMainBlock.innerHTML = data.results[i].html_code; if(copyBlock !== null) objMainBlock.appendChild(copyBlock); } } } else { alert('data=undefined||data.results is empty'); } } var widgetSrc = "https://widgets.booked.net/weather/info?action=get_weather_info;ver=7;cityID=18406,12084,18809,17943;type=2;scode=124;ltid=3457;domid=593;anc_id=56904;countday=undefined;cmetric=1;wlangID=24;color=009f5d;wwidth=310;header_color=ffffff;text_color=333333;link_color=08488D;border_form=1;footer_color=ffffff;footer_text_color=333333;transparent=0;v=0.0.1";widgetSrc += ';ref=' + widgetUrl;widgetSrc += ';rand_id=22152';var weatherBookedScript = document.createElement("script"); weatherBookedScript.setAttribute("type", "text/javascript"); weatherBookedScript.src = widgetSrc; document.body.appendChild(weatherBookedScript) </script><!-- weather widget end -->
</div>


</div>
</div>


<div id ="footer" align="center">

<div style="width:1500px; padding-top: 20px;  box-shadow: 1px 1px 1px 1px #D5E4F7; border-style: outset; border-radius: 10px;">
&nbsp;<h1>Choong-Ang Tour</h1>
<img src="resources/img/logo.png" height="80px"><br>
<a href="./admin.do">관리자</a> <br>
</div>

</div>



</body>
</html>
