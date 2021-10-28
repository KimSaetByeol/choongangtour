<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page session="false"%>
<html>
<head>
<title>boardRegion</title>
<style type="text/css">


#menu {
	font-size: 15pt;
	height: 100px;
	text-align: center;
	line-height: 100px;
}

body {
	width: 100%;
	height: 1200px;
	border: solid black 2px;
	font-family: Malgun gothic;
	color: #191919;
}

#main {
	width: 60%;
	margin: 0 auto;
}

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

<div id ="UI" align="center">
  <div style="padding-bottom:10px; height:5px;"></div>

<div id ="menubar" height="50px" style ="border-radius: 10px; box-shadow: 1px 1px 1px 1px #C9C9C9; border-style: outset; padding: 10px;    display:flex; flex-direction: row ; justify-content: space-around; width:1500px; padding-top:10px;">

  <div style="margin-left: 0;" ><a href="./"><img src="resources/img/logo.png" height="50px" style=""></a></div>

  <div id="dropdown1"><img src="resources/img/Menu1.png" width="150px"  style="padding-top:10px">
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
	


	<div id="main">
		<div id="menu" style="text-align: center">
			<a href="./boardRegion.do?re_no=${param.re_no }&b_title=${param.b_title}">상세정보</a> &ensp;&ensp;
			<a href="./regeionMap.do?re_no=${param.re_no }&b_title=${param.b_title}">지도</a> &ensp;&ensp;<!--  re_no를 request로 받아와서 mv로 가져오기 -->
			<a href="./boardRegion.do?re_no=${param.re_no }">주변 관광지</a> &ensp;&ensp;<!--  re_no를 request로 받아와서 mv로 가져오기 -->
		</div>
		<hr>
		<!--  줄 ---------------------------------------------------- -->
		<!--  1st paragraph---------------------------------------------------- -->

		
			<h2>${param.b_title }</h2>
			
				<!--  카카오 맵 aPI -->
		<div id="map" >
	
		
		    <span id="maplevel"></span>
  	 
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=ba29d96d2195f040d2c4e879a466cb6d"></script>
	<script>
	
		var container = document.getElementById('map');
		var region = '<c:out value="${param.b_title}"/>';
		
		if (region == "황령산") {
		var options = {
			center: new kakao.maps.LatLng(35.15724, 129.08205), //부산 황령산 
			level: 5
		};
		}else if (region == "호천마을") {
			var options = {
					center: new kakao.maps.LatLng(35.144466740587355, 129.0511832403426), //부산 호천마을 
					level: 4
		};
		
		}else if (region == "해운대") {
			var options = {
					center: new kakao.maps.LatLng(35.158766856894005, 129.1600837614565), //부산 해운대 
					level: 5
		};
		
		}else if (region == "남산타워") {
			var options = {
					center: new kakao.maps.LatLng(37.55132248623301, 126.9881729538852), // 남산타워 
					level: 5
		};
		
		}else if (region == "석촌호수") {
			var options = {
					center: new kakao.maps.LatLng(37.508571786706874, 127.10050961249429), // 석촌호수 
					level: 5
		};
		
		}else if (region == "경복궁") {
			var options = {
					center: new kakao.maps.LatLng(37.57771574085136, 126.97679733129208), // 경복궁 
					level: 5
		};
		
		}else if (region == "행주산성") {
			var options = {
					center: new kakao.maps.LatLng(37.60026607645785, 126.82483116289), // 행주산성 
					level: 6
		};
		
		}else if (region == "수원화성") {
			var options = {
					center: new kakao.maps.LatLng(37.287802926722144, 127.01204250033702), // 수원화성 
					level: 5
		};
		
		}else if (region == "신륵사") {
			var options = {
					center: new kakao.maps.LatLng(37.29823614357013, 127.65645615004242), // 신륵사  
					level: 6
		};
		
		}else if (region == "설악산") {
			var options = {
					center: new kakao.maps.LatLng(38.117522769800125, 128.46469966784886), // 설악산 
					level: 9
		};
		
		}else if (region == "대관령") {
			var options = {
					center: new kakao.maps.LatLng(37.68826471090565, 128.7555967478194), // 대관령 
					level: 6
		};
		
		}else if (region == "정동진해변") {
			var options = {
					center: new kakao.maps.LatLng(37.69085749945377, 129.03455699748065), // 정동진해변 
					level: 5
		};
		
		}else if (region == "개항장 거리") {
			var options = {
					center: new kakao.maps.LatLng(37.473011685787846, 126.62104510042349), // 개항장 거리 
					level: 2
		};
		
		}else if (region == "능허대지") {
			var options = {
					center: new kakao.maps.LatLng(37.42303943156977, 126.64327326922722), // 능허대지 
					level: 1
		};
		
		}else if (region == "팔미도") {
			var options = {
					center: new kakao.maps.LatLng(37.358168882187044, 126.51174196913624), // 팔미도 
					level: 3
		};
		
		}else if (region == "합강캠핑장") {
			var options = {
					center: new kakao.maps.LatLng(36.51594746075805, 127.33586911315959), // 합강캠핑장 
					level: 6
		};
		
		}else if (region == "해운대") {
			var options = {
					center: new kakao.maps.LatLng(36.52278938417798, 127.30243992504063), //부산 해운대 
					level: 5
		};
		
		}else if (region == "우주측지관측센터") {
			var options = {
					center: new kakao.maps.LatLng(36.522763518445814, 127.30252575572723), // 우주측지관측센터 
					level: 4
		};
		
		}else if (region == "뒤웅박고을") {
			var options = {
					center: new kakao.maps.LatLng(36.67560927961038, 127.2591874021944), // 뒤웅박고을 
					level: 6
		};
		
		}else if (region == "경주 월정교") {
			var options = {
					center: new kakao.maps.LatLng(35.82930586151676, 129.21801401153414), // 경주 월정교 
					level: 2
		};
		
		}else if (region == "포항 호미곶 절경") {
			var options = {
					center: new kakao.maps.LatLng(36.07815310430972, 129.56962201153908), //부산 해운대 
					level: 6
		};
		
		}else if (region == "영주 무섬마을") {
			var options = {
					center: new kakao.maps.LatLng(36.731876126563144, 128.62164902033405), // 영주 무섬마을 
					level: 4
		};
		
		}else if (region == "욕지섬 모노레일") {
			var options = {
					center: new kakao.maps.LatLng(34.62908557973477, 128.2633040187198), // 욕지섬 모노레일 
					level: 5
		};
		
		}else if (region == "한국 궁중 꽃 박물관") {
			var options = {
					center: new kakao.maps.LatLng(35.36692155446727, 129.1757915115252), // 한국 궁중 꽃 박물관 
					level: 3
		};
		
		}else if (region == "외도 보타니아") {
			var options = {
					center: new kakao.maps.LatLng(34.76973541091898, 128.71291688267797), // 외도 보타니아 
					level: 7
		};
		
		}else if (region == "목포 해상케이블카") {
			var options = {
					center: new kakao.maps.LatLng(34.7985421324822, 126.36935269802171), // 목포 해상케이블카 
					level: 5
		};
		
		}else if (region == "진도 대마도") {
			var options = {
					center: new kakao.maps.LatLng(34.27036242081869, 125.99090060612758), // 진도 대마도 
					level: 8
		};
		
		}else if (region == "담양 추억의 골목") {
			var options = {
					center: new kakao.maps.LatLng(35.372429796080674, 127.0195577826895), // 담양 추억의 골목 
					level: 3
		};
		
		}else if (region == "남원 광한루원") {
			var options = {
					center: new kakao.maps.LatLng(35.40351545034977, 127.37944642686908), // 남원 광한루원 
					level: 3
		};
		
		}else if (region == "군산 삼도귀범") {
			var options = {
					center: new kakao.maps.LatLng(35.80834595098194, 126.40342000515012), // 군산 삼도귀범대 
					level: 8
		};
		
		}else if (region == "정읍 내장산국립공원") {
			var options = {
					center: new kakao.maps.LatLng(35.49360596071365, 126.92783829803508), // 정읍 내장산국립공원 
					level: 10
		};
		
		}else if (region == "단양 구담봉") {
			var options = {
					center: new kakao.maps.LatLng(36.9374546653744, 128.24696072985947), // 단양 구담봉 
					level: 5
		};
		
		}else if (region == "옥천 부소담악") {
			var options = {
					center: new kakao.maps.LatLng(36.34892725274694, 127.56693492503706), // 옥천 부소담악 
					level: 8
		};
		
		}else if (region == "문광 저수지 은행나무길") {
			var options = {
					center: new kakao.maps.LatLng(36.7680711979446, 127.74703195906638), // 문광 저수지 은행나무길 
					level: 4
		};
		
		}else if (region == "성모당") {
			var options = {
					center: new kakao.maps.LatLng(35.861203066828196, 128.5862733115347), // 성모당 
					level: 2
		};
		
		}else if (region == "비슬산 군립공원") {
			var options = {
					center: new kakao.maps.LatLng(35.71692589793857, 128.52487653606116), // 비슬산 군립공원 
					level: 7
		};
		
		}else if (region == "마비정 벽화마을") {
			var options = {
					center: new kakao.maps.LatLng(35.77908563712078, 128.5423014091453), // 마비정 벽화마을 
					level: 1
		};
		
		}else if (region == "엑스포과학공원") {
			var options = {
					center: new kakao.maps.LatLng(36.376830921896996, 127.37797537396135), // 엑스포과학공원 
					level: 5
		};
		
		}else if (region == "대전과학기술대학교 카리용") {
			var options = {
					center: new kakao.maps.LatLng(36.302290824263366, 127.37565276518372), // 대전과학기술대학교 카리용 
					level: 3
		};
		
		}else if (region == "성심당") {
			var options = {
					center: new kakao.maps.LatLng(36.32764454055049, 127.42727864567827), // 성심당 
					level: 1
		};
		
		}else if (region == "간절곶") {
			var options = {
					center: new kakao.maps.LatLng(35.35921454619115, 129.36139579749522), // 간절곶 
					level: 2
		};
		
		}else if (region == "울산대공원") {
			var options = {
					center: new kakao.maps.LatLng(35.53118297167874, 129.29384871337922), // 울산대공원 
					level: 5
		};
		
		}else if (region == "간월산") {
			var options = {
					center: new kakao.maps.LatLng(35.55231993121823, 129.04068744634085), // 간월산 
					level: 8
		};
		
		}else if (region == "성산일출봉") {
			var options = {
					center: new kakao.maps.LatLng(33.45998765475739, 126.94172739829101), // 성산일출봉 
					level: 6
		};
		
		}else if (region == "천지연폭포") {
			var options = {
					center: new kakao.maps.LatLng(33.24708116815496, 126.55441794650736), // 천지연폭포 
					level: 5
		};
		
		}else if (region == "우도 올레길") {
			var options = {
					center: new kakao.maps.LatLng(33.49314428555342, 126.95181405381818), // 우도 올레길 
					level: 3
		};
		
		}else if (region == "독도") {
			var options = {
					center: new kakao.maps.LatLng(37.240954395465394, 131.86748579985314), // 독도 
					level: 13
		};
		
		}else if (region == "내수전 일출전망대") {
			var options = {
					center: new kakao.maps.LatLng(37.512994811160056, 130.90866636660513), // 내수전 일출전망대 
					level: 6
		};
		
		}else if (region == "성인봉") {
			var options = {
					center: new kakao.maps.LatLng(37.49765445861488, 130.8670738646163), // 성인봉 
					level: 6
		};
		
		}else if (region == "사동") {
			var options = {
					center: new kakao.maps.LatLng(37.47781953942109, 130.88091042265745), // 사동 
					level: 6
		};
		
		}else if (region == "무등산국립공원") {
			var options = {
					center: new kakao.maps.LatLng(35.124285444461755, 127.00844565753559), // 무등산국립공원 
					level: 8
		};
		
		}else if (region == "5·18 기념공원") {
			var options = {
					center: new kakao.maps.LatLng(35.15589530311228, 126.85722262686444), // 5·18 기념공원 
					level: 4
		};
		
		}
		
		
		
		var map = new kakao.maps.Map(container, options);
		var marker = new kakao.maps.Marker({ 
		    // 지도 중심좌표에 마커를 생성
		    position: map.getCenter() 
		}); 
		displayLevel();
		marker.setMap(map);
		kakao.maps.event.addListener(map, 'click', function(mouseEvent) {        
		    
		    // 클릭한 위도, 경도 정보를 가져옵니다 
		    var latlng = mouseEvent.latLng; 
		    
		    // 마커 위치를 클릭한 위치로 옮깁니다
		    marker.setPosition(latlng);
		    
		  
		    
		});
		function zoom(){
			var level = map.getLevel();
			map.setLevel(level - 1);
			displayLevel();
		}
		function zoomOut(){
			var level = map.getLevel();
			map.setLevel(level  + 1);
			displayLevel();
		}
		function displayLevel(){
		    var levelEl = document.getElementById('maplevel');
		}
	</script>
	</div>
		<button onclick="zoom()">확대</button>
		    <button onclick="zoomOut()">축소</button>
		    <button onclick="setOverlayMapTypeId('traffic')">교통정보 보기</button> 
<button onclick="setOverlayMapTypeId('roadview')">로드뷰 도로정보 보기</button> 
<button onclick="setOverlayMapTypeId('terrain')">지형정보 보기</button>
	</div>
<script type="text/javascript">

//지도에 추가된 지도타입정보를 가지고 있을 변수입니다
var currentTypeId;

//버튼이 클릭되면 호출되는 함수입니다
function setOverlayMapTypeId(maptype) {
 var changeMaptype;
 
 // maptype에 따라 지도에 추가할 지도타입을 결정합니다
 if (maptype === 'traffic') {            
     
     // 교통정보 지도타입
     changeMaptype = kakao.maps.MapTypeId.TRAFFIC;     
     
 } else if (maptype === 'roadview') {        
     
     // 로드뷰 도로정보 지도타입
     changeMaptype = kakao.maps.MapTypeId.ROADVIEW;    

 } else if (maptype === 'terrain') {
     
     // 지형정보 지도타입
     changeMaptype = kakao.maps.MapTypeId.TERRAIN;    

 }
 
 // 이미 등록된 지도 타입이 있으면 제거합니다
 if (currentTypeId) {
     map.removeOverlayMapTypeId(currentTypeId);    
 }
 
 // maptype에 해당하는 지도타입을 지도에 추가합니다
 map.addOverlayMapTypeId(changeMaptype);
 
 // 지도에 추가된 타입정보를 갱신합니다
 currentTypeId = changeMaptype;        
}
</script>
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
