<%@ page session="false" contentType="text/html; charset=utf-8" 
pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="places" value="${places}"></c:set>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>information</title>
<link rel="stylesheet" type="text/css" href="static/css/places/bootstrap.css">
<link rel="stylesheet" type="text/css" href="static/css/places/places.css">
<link rel="stylesheet" type="text/css" href="static/css/places/custom-overlay.css">
<script src="static/script/places/jquery.min.js"></script>
</head>
<body>
	<div id="div-header" class="row">
		<div id="div-header-left">
			<img src="static/img/header-image.png" />
		</div>
		<div id="div-header-right">
			<form class="form-inline">
				<input class="form-control" type="text" size="27" />&nbsp;
				<button type="button" class="btn btn-info">검색</button>
				<button type="button" class="btn btn-primary"
					onclick="readAll('restaurant')" id="restaurant">맛집</button>
				<button type="button" class="btn btn-danger"
					onclick="readAll('hotel')" id="hotel">숙박</button>
				<button type="button" class="btn btn-success"
					onclick="readAll('attraction')" id="attraction">명소</button>
				<button type="button" class="btn btn-warning"
					onclick="markerReset()">지도 리셋</button>
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
								<a href="javascript:void(0)" onclick="listClick(this)">${place.tour_name}</a>
								<button id="btnAdd">
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
								<a href="javascript:void(0)" onclick="listClick(this)">${place.tour_name}</a>
								<button id="btnAdd">
									<img class="plus" src="static/img/places/plus.png" />
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
								<a href="javascript:void(0)" onclick="listClick(this)">${place.tour_name}</a>
								<button id="btnAdd">
									<img class="plus" src="static/img/places/plus.png" />
								</button> <br><span>${place.tour_address}</span><br><span>전화번호 : ${place.tour_phone }</span>
							</li>
						</c:if>
					</c:forEach>
				</ul>
			</div>
			<div id="tab4" class="tabcontent" style="display: none;">
				<ul>
					<li>저장 목록</li>
				</ul>
			</div>

		</div>
		<div id="map"></div>
	</div>

	<script type="text/javascript"
		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=194fcde18c1a9c749197bec3afd8e719&libraries=services,clusterer,drawing"></script>
	<script>
		var json = JSON.parse(${places[0]});
		console.log(json);
		var address = "";
		var title = "";
		var phoneNum = "";
		var marker = "";
		var markers = [];
		var coords = "";
		var overlay = "";
		var overlays = [];
		var container = document.getElementById('map');
		var options = {
			center : new daum.maps.LatLng(33.38778024676064, 126.58591755934814),
			level : 9
		};
		var map = new daum.maps.Map(container, options);

		// 리스트에서 클릭시 지도상 마커 띄워주는 함수
		function listClick(a) {
			title = a.innerText;
			address = a.nextSibling.nextSibling.nextSibling.nextSibling.nextSibling.innerText;
			phoneNum = a.nextSibling.nextSibling.nextSibling.nextSibling.nextSibling.nextSibling.nextSibling.innerText;

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
								result[0].x)
					});
					marker.setMap(map);
					// 지도의 중심을 결과값으로 받은 위치로 이동시킵니다	
					marker.setClickable(true);
					markers.push(marker);
					daum.maps.event.addListener(marker, 'click', markerClick);

					daum.maps.event.addListener(marker, 'rightclick',
							markerDelete);
				}
			});
		}

		// 마커 우클릭시 삭제하는 함수
		function markerDelete() {
			this.setMap(null);
		}

		// 마커 클릭시 커스텀 오버레이 띄우는 함수
		function markerClick() {
			var content = '<div class="wrap">'
					+ '    <div class="info">'
					+ '        <div class="title">'
					+ 				title
					+ '            <div class="close" onclick="closeOverlay()" title="닫기"></div>'
					+ '        </div>'
					+ '        <div class="body">'
					+ '            <div class="img">'
					+ '                <img src="http://cfile181.uf.daum.net/image/250649365602043421936D" width="73" height="70">'
					+ '           </div>'
					+ '            <div class="desc">'
					+ '                <div class="ellipsis">'+ address + '</div>'
					+ '                <div class="jibun ellipsis">'+ phoneNum + '</div>'
					+ '                <div><a href="http://www.kakaocorp.com/main" target="_blank" class="link">홈페이지</a></div>'
					+ '            </div>' + '        </div>' + '    </div>'
					+ '</div>';

			// 마커 위에 커스텀오버레이를 표시합니다
			// 마커를 중심으로 커스텀 오버레이를 표시하기위해 CSS를 이용해 위치를 설정했습니다
			overlay = new daum.maps.CustomOverlay({
				content : content,
				map : map,
				position : this.getPosition()
			});
			overlay.setMap(map);
			overlays.push(overlay);
		}
		// 커스텀 오버레이를 닫기 위해 호출되는 함수입니다
		function closeOverlay() {
			overlay.setMap(null);
		}

		// 탭 전환 함수
		function openTab(evt, tabName) {
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

		// 맛집,숙박,명소 버튼을 눌렀을 때 해당하는 모든 위치를 띄워주는 함수
		var foodMarkers = [];
		var hotelMarkers = [];
		var attractionMarkers = [];
		function readAll(name) {
			if (name == 'hotel') {
				if (foodMarkers.length != 0) {
					for (var i = 0; i < foodMarkers.length; i++) {
						foodMarkers[i].setMap(null);
					}
				}
				if (attractionMarkers.length != 0) {
					for (var i = 0; i < attractionMarkers.length; i++) {
						attractionMarkers[i].setMap(null);
					}
				}
				
				/* var hotelPosition = "[";
				var i = 0;
				for(i=0; i<${places.size()}; i++) {}
					var str = ${places[i].div_name};
					if( str == '호텔' || str == '모텔' || str == '펜션') {
						if(i == ${places.size()-1}) {
							var address = '${places[i].tour_address}'
							hotelPosition += "{address : " + address + "}"
						} else {
							var address = ${places[i].tour_address}
							hotelPosition += "{address : " + address + "},"
						}
					}
				} */
				hotelPosition += "]";
				console.log(hotelPosition);
				
				
				// 주소-좌표 변환 객체를 생성합니다
				var geocoder = new daum.maps.services.Geocoder();
				// 주소로 좌표를 검색합니다
				for (var i = 0; i < hotelPosition.length; i++) {

					geocoder.addressSearch(hotelPosition[i].address, function(
							result, status) {

						// 정상적으로 검색이 완료됐으면 
						if (status === daum.maps.services.Status.OK) {

							coords = new daum.maps.LatLng(result[0].y,
									result[0].x);
							// 결과값으로 받은 위치를 마커로 표시합니다
							marker = new daum.maps.Marker({
								map : map,
								position : coords
							});
							marker.setMap(map);
							hotelMarkers.push(marker);
							marker.setClickable(true);
							daum.maps.event.addListener(marker, 'click',
									markerClick);

							daum.maps.event.addListener(marker, 'rightclick',
									markerDelete);
						}
					});
				}
			}
			if (name == 'restaurant') {
				if (hotelMarkers.length == 0) {

				} else {
					for (var i = 0; i < hotelMarkers.length; i++) {
						hotelMarkers[i].setMap(null);
					}
				}
				var foodPosition = [ {
					address : '제주 서귀포시 색달동 2285-7'
				}, {
					address : '제주 제주시 귀아랑길 24'
				}, {
					address : '제주 서귀포시 이어도로 703-4'
				} ]
				// 주소-좌표 변환 객체를 생성합니다
				var geocoder = new daum.maps.services.Geocoder();

				for (var i = 0; i < foodPosition.length; i++) {

					geocoder.addressSearch(foodPosition[i].address, function(
							result, status) {

						// 정상적으로 검색이 완료됐으면 
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
							foodMarkers.push(marker);
							daum.maps.event.addListener(marker, 'click',
									markerClick);

							daum.maps.event.addListener(marker, 'rightclick',
									markerDelete);
						}
					});
				}
			}
		}
		function markerReset() {
			if (markers.length != 0) {
				for (var i = 0; i < markers.length; i++) {
					markers[i].setMap(null);
				}
			}
			if (foodMarkers.length != 0) {
				for (var i = 0; i < foodMarkers.length; i++) {
					foodMarkers[i].setMap(null);
				}
			}
			if (hotelMarkers.length != 0) {
				for (var i = 0; i < hotelMarkers.length; i++) {
					hotelMarkers[i].setMap(null);
				}
			}
			if (overlays.length != 0) {
				for (var i = 0; i < overlays.length; i++) {
					overlays[i].setMap(null);
				}
			}
		}
	</script>
</body>
</html>