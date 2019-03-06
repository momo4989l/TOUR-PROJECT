<%@ page session="false" contentType="text/html; charset=utf-8" 
pageEncoding="utf-8"%>
<%@ page import="java.net.URLEncoder" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<c:set var="places" value="${places}"></c:set>
<c:set var="totalList" value="${list}"></c:set>
<c:set var="count" value="${count}"></c:set>
<c:set var="id" value="${id }"></c:set>
<!DOCTYPE html>
<html>
<head>
<link rel="shortcut icon" href="static/img/index/favicon.ico">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>JEJU MAP</title>
<link rel="stylesheet" type="text/css" href="static/css/places/bootstrap.css">
<link rel="stylesheet" type="text/css" href="static/css/places/places.css">
<link rel="stylesheet" type="text/css" href="static/css/places/custom-overlay.css">
<script src="static/script/places/jquery.min.js"></script>
</head>
<body>
	<div id="div-header" class="row">
		<div id="div-header-left">
			<a href="/"><img src="static/img/header-image.png" /></a>
		</div>
		<div id="div-header-right">
			<form class="form-inline">
				<!-- <input class="form-control" type="text" size="27" />&nbsp;
				<button type="button" class="btn btn-info">검색</button> -->
				<button type="button" class="btn btn-primary"
					onclick="readAll('restaurant')" id="restaurant">맛집</button>
				<button type="button" class="btn btn-danger"
					onclick="readAll('hotel')" id="hotel">숙박</button>
				<button type="button" class="btn btn-success"
					onclick="readAll('attraction')" id="attraction">명소</button>
				<button type="button" class="btn btn-warning"
					onclick="markerReset()">지도 리셋</button>
				<a href="/mypage"><button type="button" class="btn btn-info">MY PAGE</button></a>
			</form>
		</div>
	</div>

	<div id="div-middle">
		<div id="list">
			<ul id="ul-head">
				<li><a href="javascript:void(0)" onclick="openTab(event, 'tab1')">리스트</a></li><li><a href="javascript:void(0)" onclick="openTab(event, 'tab4')">MY스크랩</a></li>
			</ul>
			<ul id="ul-middle" class="nav nav-tabs" id="tab">
				<div class="btn-group btn-group-justified">
					<a href="javascript:void(0)" onclick="openTab(event, 'tab1')"
						class="btn btn-primary">Food</a> <a href="javascript:void(0)"
						onclick="openTab(event, 'tab2')" class="btn btn-danger">Hotel</a>
					<a href="javascript:void(0)" onclick="openTab(event, 'tab3')"
						class="btn btn-success">Attraction</a>
				</div>
			</ul>
			<div id="tab1" class="tabcontent" style="display: block;">
				<ul class="ul-bottom">
					<c:forEach items="${places}" var="place">
						<c:if test="${place.div_name eq '한식' || place.div_name eq '중식' || place.div_name eq '양식' || place.div_name eq '일식'}">
							<li><img class="listImage" src="static/img/places/restaurant.jpg" />&nbsp;
								<a href="javascript:void(0)" onclick="listClick(this,${place.tour_idx})">${place.tour_name}</a>
								<button id="btnAdd" onclick="plusClick(${place.tour_idx})" >
									<img class="plus" src="static/img/places/plus.png" />
								</button> <br><span>${place.tour_address}</span><br><span>전화번호 : ${place.tour_phone }</span>
							</li>
						</c:if>
					</c:forEach>
				</ul>
			</div>
			<div id="tab2" class="tabcontent" style="display: none;">
				<ul class="ul-bottom">
					<c:forEach items="${places}" var="place">
						<c:if test="${place.div_name eq '호텔' || place.div_name eq '모텔' || place.div_name eq '펜션'}">
							<li><img class="listImage" src="static/img/places/hotel.png" />&nbsp;
								<a href="javascript:void(0)" onclick="listClick(this,${place.tour_idx})">${place.tour_name}</a>
								<button id="btnAdd" onclick="plusClick(${place.tour_idx})" >
									<img class="plus" src="static/img/places/plus.png"  />
								</button> <br><span>${place.tour_address}</span><br><span>전화번호 : ${place.tour_phone }</span>
							</li>
						</c:if>
					</c:forEach>
				</ul>
			</div>
			<div id="tab3" class="tabcontent" style="display: none;">
				<ul class="ul-bottom">
					<c:forEach items="${places}" var="place">
						<c:if test="${place.div_name eq '관광지'}">
							<li><img class="listImage" src="static/img/places/attraction.jpg" />&nbsp;
								<a href="javascript:void(0)" onclick="listClick(this,${place.tour_idx})">${place.tour_name}</a>
								<button id="btnAdd" onclick="plusClick(${place.tour_idx})" >
									<img class="plus" src="static/img/places/plus.png" />
								</button> <br><span>${place.tour_address}</span><br><span>전화번호 : ${place.tour_phone }</span>
							</li>
						</c:if>
					</c:forEach>
				</ul>
			</div>
			<div id="tab4" class="tabcontent" style="display: none;">
				<ul class="ul-bottom" id="saveList">
				</ul>
			</div>

		</div>
		<div id="map"></div>
	</div>

<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=194fcde18c1a9c749197bec3afd8e719&libraries=services,clusterer,drawing"></script>
<script>
	
	totalPosition = ${totalList}
	var idCount = 0;
	var marker = "";
	var markers = [];
	var coords = "";
	var overlays = [];
	var userid = '${id}';
	var container = document.getElementById('map');
	var options = {
		center : new daum.maps.LatLng(33.38778024676064, 126.58591755934814),
		level : 9
	};
	var map = new daum.maps.Map(container, options); 
	
	var str = "";
	function takeList() {
		var array = JSON.parse(sessionStorage.getItem("array"));
		var innerStr = "";
		if(array.length != 0 ) {
			for( var i = 0 ; i < array.length; i++) {
				var placeImage = "";
				if(array[i].div_name == '관광지') {
					placeImage = "attraction.jpg"
				} else if(array[i].div_name == '호텔' || array[i].div_name == '모텔' || array[i].div_name == '펜션') {
					placeImage = "hotel.png"
				} else {
					placeImage = "restaurant.jpg"
				}
				innerStr += '<li><img class="listImage" src="static/img/places/' + placeImage + '" />&nbsp;' +
				 '<a href="javascript:void(0)" onclick="listClick(this)">' + array[i].name + '</a>' + " " + 
				 '<span></span>' + 
				 '<span></span>' + 
				'<br><span>' + array[i].address + '</span><br><span>전화번호 : ' + array[i].phone + '</span>' + 
				'</li>'
				document.getElementById("saveList").innerHTML = innerStr;
			}
		}
	}
	// 더하기 버튼을 눌렀을 때 MY 스크랩에 저장하기 위한 함수
	function plusClick(index) {
		if(userid == '' || userid == null) {
			alert('저장기능은 회원가입 후 사용하실 수 있습니다.');
			location.href="/login";
		} else {
			var storageArray = new Array();
			if(sessionStorage.getItem("array") != null) {
				storageArray = JSON.parse(sessionStorage.getItem("array"));
				for(var i=0; i<storageArray.length; i++) {
					if(totalPosition[index-1].name == storageArray[i].name) {
						alert('이미 저장된 데이터입니다.');
						return false;
					}
				}
			}
			for(var i=0; i<totalPosition.length; i++) {
				if(index == totalPosition[i].idx) {
					var image = "";
					if(totalPosition[i].div_name == '관광지') {
						image = "attraction.jpg"
					} else if(totalPosition[i].div_name == '호텔' || totalPosition[i].div_name == '모텔' || totalPosition[i].div_name == '펜션') {
						image = "hotel.png"
					} else {
						image = "restaurant.jpg"
					}
					str += '<li><img class="listImage" src="static/img/places/' + image + '" />&nbsp;' +
							 '<a href="javascript:void(0)" onclick="listClick(this)">' + totalPosition[i].name + '</a>' + " " + 
							 '<span></span>' + 
							 '<span></span>' +
							'<br><span>' + totalPosition[i].address + '</span><br><span>전화번호 : ' + totalPosition[i].phone + '</span>' + 
							'</li>'
					document.getElementById("saveList").innerHTML = str;
					
					storageArray.push(totalPosition[i]);
					alert('스크랩에 저장되었습니다.');
				}
			}
			sessionStorage.setItem("array",JSON.stringify(storageArray));
		}
	}
	
	// 리스트에서 클릭시 지도상 마커 띄워주는 함수
	function listClick(a, idx) {
		var title = a.innerText;
		var address = a.nextSibling.nextSibling.nextSibling.nextSibling.nextSibling.innerText;
		console.log(address);
		var phoneNum = a.nextSibling.nextSibling.nextSibling.nextSibling.nextSibling.nextSibling.nextSibling.innerText;
		// 주소-좌표 변환 객체를 생성합니다
		var geocoder = new daum.maps.services.Geocoder();

		// 주소로 좌표를 검색합니다
		geocoder.addressSearch(address, function(result, status) {

			// 정상적으로 검색이 완료됐으면 
			if (status === daum.maps.services.Status.OK) {

				coords = new daum.maps.LatLng(result[0].y, result[0].x);
				// 결과값으로 받은 위치를 마커로 표시합니다
				marker = new daum.maps.Marker({
					map : map,
					position : new daum.maps.LatLng(result[0].y,
							result[0].x),
				});
				marker.setMap(map);
				// 지도의 중심을 결과값으로 받은 위치로 이동시킵니다	
				marker.setClickable(true);
				markers.push(marker);
				daum.maps.event.addListener(marker, 'click', markerListClick);

				daum.maps.event.addListener(marker, 'rightclick', markerDelete);
				
				function markerListClick() {
					markerClick(this,title,address,phoneNum,idx);
				}
			}
		});
	}

	// 마커 우클릭시 삭제하는 함수
	function markerDelete() {
		this.setMap(null);
	}
	// 마커 클릭시 커스텀 오버레이 띄우는 함수
	function markerClick(marker,title,address,phoneNum,idx) {
		var content = '<div class="wrap">'
				+ '    <div class="info">'
				+ '        <div class="title">'
				+ 				title
				+ '            <div class="close" onclick="closeOverlay(this)" id="' + idCount + '" title="닫기"></div>'
				+ '        </div>'
				+ '        <div class="body">'
				+ '            <div class="img">'
				+ '                <img src="static/img/pictures/'+ title +'.png" width="73" height="70">'
				+ '           </div>' 
				+ '            <div class="desc">'
				+ '                <div class="ellipsis">'+ address + '</div>'
				+ '                <div class="jibun ellipsis">'+ phoneNum + '</div>'
				+ '                <div><a href="/tourinfo/' + idx + '" target="_blank" class="link">상세페이지</a></div>'
				+ '            </div>' + '        </div>' + '    </div>'
				+ '</div>';  
		// 마커 위에 커스텀오버레이를 표시합니다
		// 마커를 중심으로 커스텀 오버레이를 표시하기위해 CSS를 이용해 위치를 설정했습니다
		var overlay = new daum.maps.CustomOverlay({
			content : content,
			map : map,
			position : marker.getPosition()
		});
		overlay.setMap(map);
		overlays.push(overlay);
		idCount++;
	}
	// 커스텀 오버레이를 닫기 위해 호출되는 함수입니다
	function closeOverlay() {
		var index = event.srcElement.id;
		overlays[index].setMap(null);
	}
	
	
	// 탭 전환 함수
	function openTab(evt, tabName) {
		if(tabName == 'tab4') {
			var i, tabcontent, tablinks;
			tabcontent = document.getElementsByClassName("tabcontent");
			// 컨텐츠를 불러옵니다. 
			for (i = 0; i < tabcontent.length; i++) {
				tabcontent[i].style.display = "none"; //컨텐츠를 모두 숨깁니다. 
			}
			tablinks = document.getElementsByClassName("tablinks"); //탭을 불러옵니다. 
			for (i = 0; i < tablinks.length; i++) {
				tablinks[i].className = tablinks[i].className.replace(
						" active", ""); //탭을 초기화시킵니다. 
			}
			document.getElementById(tabName).style.display = "block"; //해당되는 컨텐츠만 보여줍니다. 
			evt.currentTarget.className += " active"; //클릭한 탭을 활성화시킵니다. 
			
			takeList();
		} else {
			var i, tabcontent, tablinks;
			tabcontent = document.getElementsByClassName("tabcontent");
			// 컨텐츠를 불러옵니다. 
			for (i = 0; i < tabcontent.length; i++) {
				tabcontent[i].style.display = "none"; //컨텐츠를 모두 숨깁니다. 
			}
			tablinks = document.getElementsByClassName("tablinks"); //탭을 불러옵니다. 
			for (i = 0; i < tablinks.length; i++) {
				tablinks[i].className = tablinks[i].className.replace(
						" active", ""); //탭을 초기화시킵니다. 
			}
			document.getElementById(tabName).style.display = "block"; //해당되는 컨텐츠만 보여줍니다. 
			evt.currentTarget.className += " active"; //클릭한 탭을 활성화시킵니다. 
		}
	}
	
	var foodMarkers = [];
	var hotelMarkers = [];
	var attractionMarkers = [];
	
	// 맛집,숙박,명소 버튼을 눌렀을 때 해당하는 모든 위치를 띄워주는 함수
	function readAll(name) {
		
		var address = new Array();
		var title = new Array();
		var phone = new Array();
		var countNum = 0;
		var arrayIdx = new Array();
		var nameValue = name;
		
		function searchAddress(address,title,phone,idx) {
			// 주소-좌표 변환 객체를 생성합니다
			var geocoder = new daum.maps.services.Geocoder();
			geocoder.addressSearch(address, function(result, status) {
				if (status === daum.maps.services.Status.OK) {
					coords = new daum.maps.LatLng(result[0].y,
							result[0].x);
					// 결과값으로 받은 위치를 마커로 표시합니다
					marker = new daum.maps.Marker({
						map : map,
						position : coords
					});
					marker.setMap(map);
					marker.setClickable(true);
					if(nameValue == 'hotel') {
						hotelMarkers.push(marker);
					} else if(nameValue == 'restaurant') {
						foodMarkers.push(marker);
					} else {
						attractionMarkers.push(marker);
					}	
					daum.maps.event.addListener(marker, 'click',
							function() {
						markerClick(this,title,address,phone,idx);
					});
					daum.maps.event.addListener(marker, 'rightclick',
							markerDelete);
				}
			});
		}
		
		// 태그 이름이 hotel 일때
		if (name == 'hotel') {
			if(hotelMarkers.length == 0) {
				if (foodMarkers.length != 0) {
					for (var i = 0; i < foodMarkers.length; i++) {
						foodMarkers[i].setMap(null);
					}
					foodMarkers = [];
				} 
				if (attractionMarkers.length != 0) {
					for (var i = 0; i < attractionMarkers.length; i++) {
						attractionMarkers[i].setMap(null);
					}
					attractionMarkers = [];
				}
				if (overlays.length != 0) {
					for (var i = 0; i < overlays.length; i++) {
						overlays[i].setMap(null);
					}
					overlays = [];
					idCount = 0;
				}
				for (var i = 0; i < totalPosition.length; i++) {
					if(totalPosition[i].div_name == "호텔" || totalPosition[i].div_name == "모텔" || totalPosition[i].div_name == "펜션") {
						title[countNum] = totalPosition[i].name;
						address[countNum] = totalPosition[i].address;
						phone[countNum] = totalPosition[i].phone;
						arrayIdx[countNum] = totalPosition[i].idx;
						countNum++;
					}
				}
				for(var i=0; i<address.length; i++) {
					searchAddress(address[i],title[i],phone[i],arrayIdx[i]);
				}
			}
		}
		
		// 태그 이름이 restaurant 일때
		if (name == 'restaurant') {
			if(foodMarkers.length == 0) {
				if (hotelMarkers.length != 0) {
					for (var i = 0; i < hotelMarkers.length; i++) {
						hotelMarkers[i].setMap(null);
					}
					hotelMarkers = [];
				}
				if(attractionMarkers.length != 0) {
					for (var i = 0; i < attractionMarkers.length; i++) {
						attractionMarkers[i].setMap(null);
					}
					attractionMarkers = [];
				}
				if (overlays.length != 0) {
					for (var i = 0; i < overlays.length; i++) {
						overlays[i].setMap(null);
					}
					overlays = [];
					idCount = 0;
				}
				for (var i = 0; i < totalPosition.length; i++) {
					if(totalPosition[i].div_name == "한식" || totalPosition[i].div_name == "양식" || totalPosition[i].div_name == "일식" || totalPosition[i].div_name == "중식") {
						title[countNum] = totalPosition[i].name;
						address[countNum] = totalPosition[i].address;
						phone[countNum] = totalPosition[i].phone;
						arrayIdx[countNum] = totalPosition[i].idx;
						countNum++;
					}
				}
				for(var i=0; i<address.length; i++) {
					searchAddress(address[i],title[i],phone[i],arrayIdx[i]);
				}
			}
		}

		// 태그 이름이 attraction 일때
		if (name == 'attraction') {
			if(attractionMarkers.length == 0) {
				if (hotelMarkers.length != 0) {
					for (var i = 0; i < hotelMarkers.length; i++) {
						hotelMarkers[i].setMap(null);
					}
					hotelMarkers = [];
				}
				if(foodMarkers.length != 0) {
					for (var i = 0; i < foodMarkers.length; i++) {
						foodMarkers[i].setMap(null);
					}
					foodMarkers = [];
				}
				if (overlays.length != 0) {
					for (var i = 0; i < overlays.length; i++) {
						overlays[i].setMap(null);
					}
					overlays = [];
					idCount = 0;
				}
				for (var i = 0; i < totalPosition.length; i++) {
					if(totalPosition[i].div_name == "관광지"){
						title[countNum] = totalPosition[i].name;
						address[countNum] = totalPosition[i].address;
						phone[countNum] = totalPosition[i].phone;
						arrayIdx[countNum] = totalPosition[i].idx;
						countNum++
					}
				}
				for(var i=0; i<address.length; i++) {
					searchAddress(address[i],title[i],phone[i],arrayIdx[i]);
				}
			}
		}
	}
	
	//지도 클리어 함수
	function markerReset() {
		if (markers.length != 0) {
			for (var i = 0; i < markers.length; i++) {
				markers[i].setMap(null);
			}
			markers = [];
		}
		if (foodMarkers.length != 0) {
			for (var i = 0; i < foodMarkers.length; i++) {
				foodMarkers[i].setMap(null);
			}
			foodMarkers = [];
		}
		if (hotelMarkers.length != 0) {
			for (var i = 0; i < hotelMarkers.length; i++) {
				hotelMarkers[i].setMap(null);
			}
			hotelMarkers = [];
		}
		if (attractionMarkers.length != 0) {
			for (var i = 0; i < attractionMarkers.length; i++) {
				attractionMarkers[i].setMap(null);
			}
			attractionMarkers = [];
		}
		if (overlays.length != 0) {
			for (var i = 0; i < overlays.length; i++) {
				overlays[i].setMap(null);
			}
			overlays = [];
			idCount = 0;
		}
	}
</script>
</body>
</html>