<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
		<div id="menu" style="text-align: center">
			<a href="./boardRegion.do?re_no=${param.re_no }&b_title=${param.b_title}">상세정보</a> &ensp;&ensp;
			<a href="./busanMtMap.do?re_no=${param.re_no }&b_title=${param.b_title}">지도</a> &ensp;&ensp;<!--  re_no를 request로 받아와서 mv로 가져오기 -->
			<a href="./boardRegion.do?re_no=${param.re_no }">주변 관광지</a> &ensp;&ensp;<!--  re_no를 request로 받아와서 mv로 가져오기 -->
			<a>여행사진</a>&ensp;&ensp;
			<a>리뷰</a>
		</div>
		<hr>
		<!--  줄 ---------------------------------------------------- -->
		<!--  1st paragraph---------------------------------------------------- -->

			<h2>지도/주변 관광지</h2>
				<!--  카카오 맵 aPI -->
		<div id="map" style="width:100%;height:680px;">
		<p>
			<button onclick="zoom()">지도레벨 - 1</button>
		    <button onclick="zoomOut()">지도레벨 + 1</button>
		    <span id="maplevel"></span>
  	  </p>
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=ba29d96d2195f040d2c4e879a466cb6d"></script>
	<script>
	
		var container = document.getElementById('map');
		
		var options = {
			center: new kakao.maps.LatLng(35.15724, 129.08205), //부산 황령산 
			level: 6
		};

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
	</div>


</body>
</html>
