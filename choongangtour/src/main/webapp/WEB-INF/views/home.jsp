<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page session="false"%>
<html>
<head>
  <meta charset="utf-8">
    <link rel="stylesheet" href="resources/css/style.css">
    <link rel="stylesheet" href="./slider3.css">
    <script type="text/javascript" src="http://code.jquery.com/jquery-1.7.2.min.js"></script>
	
	
	
	
<title></title>
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


<div align="center" style="padding-bottom:10px; padding-top: 10px;">
<div id="banner"  style=" border-radius: 10px; width: 1500px; padding-left:5px; padding-top:10px; padding-bottom: 5px; display:flex; flex-direction: row;  justify-content:space-between;; box-shadow: 1px 1px 1px 1px #C9C9C9; border-style: outset;">
  <div><img src="resources/img/CAT.jpg" width="600px"></div>
  <div class="slider">
      <input type="radio" name="slide" id="slide1" checked>
      <input type="radio" name="slide" id="slide2">
      <input type="radio" name="slide" id="slide3">
      <input type="radio" name="slide" id="slide4">
      <ul id="imgholder" class="imgs">
          <li><img src="resources/img/spring.jpg" width="350px"></li>
          <li><img src="resources/img/summer.jpg" width="350px"></li>
          <li><a href="./ubdetail.do?b_no=194"> <img src="resources/img/autumn.jpg" width="350px"></a></li>
          <li><img src="resources/img/winter.jpg" width="350px"></li>
      </ul>
      <div class="bullets">
          <label for="slide1">&nbsp;</label>
          <label for="slide2">&nbsp;</label>
          <label for="slide3">&nbsp;</label>
          <label for="slide4">&nbsp;</label>
      </div>
  </div>
</div>
</div>



<div id ="middle"  align="center"   style=" padding-top: 20px; padding-bottom: 30px; display:flex; flex-direction: row; justify-content: space-evenly;">
  <div style="width:20px;"></div>


  <div id ="article" style="display:flex; flex-direction: row; justify-content: flex-start; box-shadow: 1px 1px 1px 1px #C9C9C9; border-style: outset; border-radius: 10px; padding: 5px;  border-radius: 10px; padding-top: 10px;   width: 1150px; ">
	

  <iframe id ="map" src="./map.do"  width="1200px" height="800px"></iframe>
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
</div>

</div>






</body>
</html>
