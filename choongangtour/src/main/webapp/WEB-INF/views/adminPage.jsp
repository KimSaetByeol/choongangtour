<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>



<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <link rel="stylesheet" href="resources/css/style.css">
    <link rel="stylesheet" href="./slider3.css">
    <script type="text/javascript" src="http://code.jquery.com/jquery-1.7.2.min.js"></script>



<title>admin page</title>
<style type="text/css">
table {
	margin: 0 auto;
	width: 100%;
	height: 500px;
	border-collapse: collapse;
}

th {
	background-color: #DBDBDB;
	color: #fff;
}

tr {
	border-bottom: 1px gray solid;
}
td{
	text-align: center;
}
#title{
text-align: left;
}
#paging{text-align:center;margin:10px auto;}
#paging img{vertical-align: middle;}
#paging a{display:inline-block; padding:0 3px;}
#paging a:hover{background-color:#EAFAF1;border-color:#eee;box-shadow:3px 3px 3px #7DCEA0;}
</style>
</head>
<script type="text/javascript">
	function del(no){
/* 	alert(no);*/		
 if (confirm("delete number " + no + "?")) {
	alert("deleting "+ no);
	 location.href="./adminDelete.do?b_no="+no;
	}

	}
	
	
	function modify(no){
		location.href="./adminModify.do?b_no="+no;
	}
	function cancelDel(no){
		location.href="./adminCancelDelete.do?b_no="+ no; 
	}
	
	
	function linkPage(pageNo){
		location.href="./adminPage.do?pageNo="+pageNo+"<c:if test="${search ne null}">&searchName=${searchName}&search=${search}</c:if>";
	}
</script>
<body>
<div>

<div id ="UI" align="center">
  <div style="padding-bottom:10px; height:5px;"></div>

<div id ="menubar" style ="position: sticky; border-radius: 10px; box-shadow: 1px 1px 1px 1px #C9C9C9;border-style: outset; padding: 10px;  z-index: 21; height:50px; display:flex; flex-direction: row ; justify-content: space-around; width:1500px; padding-top:10px;">

  <div style="margin-left: 0;" ><img src="resources/img/logo.png" height="50px" style=""></div>

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


  <div id ="article" style="display:flex; flex-direction: column; justify-content: flex-start; box-shadow: 1px 1px 1px 1px #C9C9C9; border-style: outset; border-radius: 10px; padding: 5px;  border-radius: 10px; padding-top: 10px;   width: 1150px; ">
	<div>
	<h2>관광지 글 게시판</h2>

	<h2>
		<c:if test="${searchName ne null }">
		검색:  ${search }
		<button onclick="location.href='./adminPage.do'">검색초기화</button>
		</c:if>
	</h2>
	<c:choose>
		<c:when test="${fn:length(list) gt 0 }">
			<table>
				<tr>
					<th>글번호</th>
					<th>지역</th>
					<th>관광지</th>
					<th>지역번호</th>
					<th>내용</th>
					<th>날짜</th>
					<th>주소</th>
					<th>전화번호</th>
					<th>웹</th>
					<th>이용시간</th>
					<th>추가 정보</th>
					<th title="클릭하여 이미지 파일을 보세요">파일<small>(파일 보기)</small></th>
					<th>아이디 이름</th>
					<th>아이디</th>
					<th>삭제 여부 <small>(0이면 삭제)</small></th>
					<th></th>
					<th></th>
					<th></th>

				</tr>
				<c:forEach items="${list }" var="l">
					<tr onclick="location.href='./adminDetail.do?b_no=${l.b_no}'">
						<td>${l.b_no }</td>
						<td>${l.re_category }</td>
						<td>${l.b_title }</td>
						<td>${l.re_no}</td>
						<td title="${l.b_content }" ><c:set var='content'
								value="${l.b_content }" /> <c:set var='shortenContent'
								value="${fn:substring(content, 0, 20)}" /> <c:choose>
								<c:when test="${fn:length(shortenContent) gt 0}">
								${shortenContent }...			
								</c:when>
								<c:otherwise>

								</c:otherwise>
							</c:choose>
							</td>
						<td><fmt:formatDate value="${l.b_date }" pattern="yyyy-MM-dd" /></td>
						<td title="${l.b_addr }"><c:set var='addr'
								value="${l.b_addr }" /> <c:set var='shortenAddr'
								value="${fn:substring(addr, 0, 5)}" /> <c:choose>
								<c:when test="${fn:length(shortenAddr) gt 0}">
								${shortenAddr }...
								</c:when>
								<c:otherwise>

								</c:otherwise>
							</c:choose></td>
						<td>${l.b_tele }</td>
						<td title="${l.b_web }"><c:set var='web' value="${l.b_web}" />
							<c:set var='shortenWeb' value="${fn:substring(web, 8, 26)}" /> <c:choose>
								<c:when test="${fn:length(shortenWeb) gt 0}">
								${shortenWeb}...
								</c:when>
								<c:otherwise>

								</c:otherwise>
							</c:choose></td>

						<td title="${l.b_time}"><c:set var='time' value="${l.b_time}" />
							<c:set var='shortenTime' value="${fn:substring(time, 0, 10)}" />


							<c:choose>
								<c:when test="${fn:length(shortenTime) gt 0}">
								${shortenTime}...
								</c:when>
								<c:otherwise>

								</c:otherwise>
							</c:choose></td>
						<td title="${l.b_tip}"><c:set var='tip' value="${l.b_tip}" />
							<c:set var='shortenTip' value="${fn:substring(tip, 0, 10)}" /> <c:choose>
								<c:when test="${fn:length(shortenTip) gt 0}">
									${shortenTip}...
								</c:when>
								<c:otherwise>

								</c:otherwise>
							</c:choose></td>
						<td title="${l.b_url }" onclick="location.href='${l.b_url }'">

							<c:set var='url' value="${l.b_url}" /> <c:set var='shortenurl'
								value="${fn:substring(url, 25, 38)}" /> ${shortenurl}

						</td>
						<td>${l.l_name }</td>
						<td>${l.l_id }</td>
						<td>${l.visi }</td>
						<td>
							<button onclick="del(${l.b_no})">삭제</button>
						</td>
						<td>
							<button onclick="modify(${l.b_no})">수정</button>
						</td>
						<td>
							<button onclick="cancelDel(${l.b_no})">삭제취소</button>
						</td>


					</tr>

				</c:forEach>

			</table>
		</div>
		
			<!-- 페이징은 여기에 -->
			<div id="paging">
				<ui:pagination paginationInfo="${paginationInfo}" type="text"
					jsFunction="linkPage" />
				<form action="./adminPage.do" method="get">
					<select name="searchName">
						<option value="b_title"
							<c:if test="${searchName eq 'b_title' }">selected="selected</c:if>>관광지</option>
						<option value="re_category"
							<c:if test="${searchName eq 're_category' }">selected="selected</c:if>>지역</option>

					</select> <input type="text" name="search" value="${search }">
					<button>검색</button>
				</form>
			</div>
		</c:when>
		<c:otherwise>
			<h2>출력할 글이 없습니다.</h2>
		</c:otherwise>
	</c:choose>





	<button onclick="location.href='./write.do'">게시글 올리기</button>
</div>





<div id="aside"  style="padding-right: 30px; padding-left: 10px; display:flex; flex-direction: column;width:350px; border-radius: 10px; ">
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



</div>

</body>
</html>