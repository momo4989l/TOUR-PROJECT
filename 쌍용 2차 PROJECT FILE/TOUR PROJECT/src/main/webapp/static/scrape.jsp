<%@ page session="false" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="id" value="${id}"/>
<!DOCTYPE HTML>
<html>
<head>
<script>
	window.onload = function() {
		var id = '${id}'
		console.log(id);
		if(id == null || id == "") { 
			alert('로그인 부탁');
			location.href = '/login';
		}
	}
</script>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<link rel="shortcut icon" href="static/img/index/favicon.ico">
<title>JEJU MY SCRAPE</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="" />
<meta name="keywords" content="" />
<meta name="author" content="" />

<link
	href="https://fonts.googleapis.com/css?family=Quicksand:300,400,500,700"
	rel="stylesheet">
<!-- Animate.css -->
<link rel="stylesheet" href="static/css/mypage/animate.css">
<!-- Icomoon Icon Fonts-->
<link rel="stylesheet" href="static/css/mypage/icomoon.css">
<!-- Bootstrap  -->
<link rel="stylesheet" href="static/css/mypage/bootstrap.css">

<!-- Magnific Popup -->
<link rel="stylesheet" href="static/css/mypage/magnific-popup.css">

<!-- Flexslider  -->
<link rel="stylesheet" href="static/css/mypage/flexslider.css">

<!-- Owl Carousel -->
<link rel="stylesheet" href="static/css/mypage/owl.carousel.min.css">
<link rel="stylesheet" href="static/css/mypage/owl.theme.default.min.css">

<!-- Date Picker -->
<link rel="stylesheet" href="static/css/mypage/bootstrap-datepicker.css">
<!-- Flaticons  -->
<link rel="stylesheet"
	href="static/css/mypage/fonts/flaticon/font/flaticon.css">

<!-- Theme style  -->
<link rel="stylesheet" href="static/css/mypage/style.css">
<!-- Modernizr JS -->
<script src="static/script/mypage/modernizr-2.6.2.min.js"></script>
<!-- FOR IE9 below -->
<!--[if lt IE 9]>
	<script src="script/mypage/respond.min.js"></script>
	<![endif]-->


<!-- Google Font -->
<link
	href="https://fonts.googleapis.com/css?family=East+Sea+Dokdo|Noto+Sans+KR|Poor+Story"
	rel="stylesheet">
<link rel="stylesheet" href="static/css/mypage/mypage-style.css">


</head>

<body>

	<!-- ----------------------------------------------------------------------------------------------------------------관광지 -->
	<div class="colorlib-loader"></div>
	<div id="page">
		<nav class="colorlib-nav" role="navigation">
			<div class="top-menu">
				<div class="container-fluid">
					<div class="row">
						<div class="col-xs-2" >
							<a href="/"><img src="static/img/mypage/header-image.png"
								style="z-index: 1; width: 90px" /></a>
						</div>
						<div class="col-xs-10 text-right menu-1">
							<ul>
								<li><a href="#">MYPAGE</a></li>
								<li><a href="#">LOGOUT</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</nav>
		<aside id="colorlib-hero" style="height: 400px">
			<div class="flexslider">
				<!-- 배경크기 fix --> 
				<ul class="slides">
					<!-- 배경크기 fix -->  
					<li
						style="background-image: url(static/img/mypage/bg.jpeg); height: 400px;">
						<div class="overlay"></div> <!-- 배경 탁하게 -->
						<div class="container-fluid" style="height: 400px">
							<div class="row">
								<div
									class="col-md-6 col-md-offset-3 col-sm-12 col-xs-12 slider-text animated fadeInUp">
									<div class="slider-text-inner text-center">
										<div class="section">
											<h1>
												<div>
													<a href="#">스크랩</a>
												</div>
												<div>
													<a href="/confirm">나의 여행</a>
												</div>
											</h1>
										</div>
									</div>
								</div>
							</div>
						</div>
					</li>
				</ul>
			</div>
		</aside>




		<!-- ---------------------------------------------------------------------------------------------------------------- 음식점 -->

		<div class="colorlib-wrap" id="s_food">
			<div class="container">
				<div class="row">
					<div class="col-md-9">
						<div class="row">
							<div class="wrap-division" id="foodZone">
								
							</div>
						</div>
					</div>

					<!-- SIDEBAR-->
					<!-- ------------------------------------------------ LOCATION -->
					<div class="col-md-3">
						<div class="sidebar-wrap">
							<div class="side animate-box">
								<div class="row">
									<div class="col-md-12">
										<h3 class="sidebar-heading" style="font-weight: bold;">
											음식점&nbsp;&nbsp;</h3>
										<form method="post" class="colorlib-form-2">
											<div class="form-check">
												<input type="checkbox" class="form-check-input"
													id="exampleCheck1"> <label class="form-check-label"
													for="exampleCheck1">
													<h4 class="place">한식</h4>
												</label>
											</div>
											<div class="form-check">
												<input type="checkbox" class="form-check-input"
													id="exampleCheck1"> <label class="form-check-label"
													for="exampleCheck1">
													<h4 class="place">양식</h4>
												</label>
											</div>
											<div class="form-check">
												<input type="checkbox" class="form-check-input"
													id="exampleCheck1"> <label class="form-check-label"
													for="exampleCheck1">
													<h4 class="place">중식</h4>
												</label>
											</div>
											<div class="form-check">
												<input type="checkbox" class="form-check-input"
													id="exampleCheck1"> <label class="form-check-label"
													for="exampleCheck1">
													<h4 class="place">일식</h4>
												</label>
											</div>
										</form>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- ----------------------------------------------------------------------------------------------------------------숙소 -->

		<div class="colorlib-wrap" id="s_hotel">
			<div class="container">
				<div class="row">
					<div class="col-md-9">
						<div class="row">
							<div class="wrap-division" id="hotelZone">
	
							</div>
						</div>
						<!-- <div class="row">
							<div class="col-md-12 text-center">
								<ul class="pagination">
									<li class="disabled"><a href="#">&laquo;</a></li>
									<li class="active"><a href="#">1</a></li>
									<li><a href="#">2</a></li>
									<li><a href="#">3</a></li>
									<li><a href="#">4</a></li>
									<li><a href="#">&raquo;</a></li>
								</ul>
							</div>
						</div> -->
					</div>

					<!-- SIDEBAR-->
					<!-- ------------------------------------------------------------------------------------------------------------- LOCATION -->
					<div class="col-md-3">
						<div class="sidebar-wrap">
							<div class="side animate-box">
								<div class="row">
									<div class="col-md-12">
										<h3 class="sidebar-heading" style="font-weight: bold;">
											숙박&nbsp;&nbsp;</h3>
										<form method="post" class="colorlib-form-2">
											<div class="form-check">
												<input type="checkbox" class="form-check-input"
													id="exampleCheck1"> <label class="form-check-label"
													for="exampleCheck1">
													<h4 class="place">호텔</h4>
												</label>
											</div>
											<div class="form-check">
												<input type="checkbox" class="form-check-input"
													id="exampleCheck1"> <label class="form-check-label"
													for="exampleCheck1">
													<h4 class="place">모델/여관</h4>
												</label>
											</div>
											<div class="form-check">
												<input type="checkbox" class="form-check-input"
													id="exampleCheck1"> <label class="form-check-label"
													for="exampleCheck1">
													<h4 class="place">펜션/민박</h4>
												</label>
											</div>
										</form>
									</div>
								</div>
							</div>
						</div>
						<div class="side animate-box">
							<div class="row">
								<div class="col-md-12">
									<h3 class="sidebar-heading">Price Range</h3>
									<form method="post" class="colorlib-form-2">
										<div class="row">
											<div class="col-md-6">
												<div class="form-group">
													<label for="guests">Price from:</label>
													<div class="form-field">
														<i class="icon icon-arrow-down3"></i> <select
															name="people" id="people" class="form-control">
															<option value="#">1</option>
															<option value="#">200</option>
															<option value="#">300</option>
															<option value="#">400</option>
															<option value="#">1000</option>
														</select>
													</div>
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-group">
													<label for="guests">Price to:</label>
													<div class="form-field">
														<i class="icon icon-arrow-down3"></i> <select
															name="people" id="people" class="form-control">
															<option value="#">2000</option>
															<option value="#">4000</option>
															<option value="#">6000</option>
															<option value="#">8000</option>
															<option value="#">10000</option>
														</select>
													</div>
												</div>
											</div>
										</div>
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="colorlib-wrap" id="s_tour">
			<div class="container">
				<div class="row">
					<div class="col-md-9">
						<div class="row">
							<div class="wrap-division" id="attractionZone">
								
							</div>
						</div>
					</div>
					<!-- SIDEBAR-->
					<!-- ------------------------------------------------ LOCATION -->
					<div class="col-md-3">
						<div class="sidebar-wrap">
							<div class="side animate-box">
								<div class="row">
									<div class="col-md-12">
										<h3 class="sidebar-heading" style="font-weight: bold;">
											관광지&nbsp;&nbsp;</h3>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- ------------------------------------------------맨 위로 가는 버튼  -->
	<div class="gototour js-top">
		<a href="#s_food"><p
				style="font-family: Poor Story; font-size: 2.1em; height: 50px;">음식점</p></a>
	</div>
	<div class="gotofood js-top">
		<a href="#s_hotel"><p
				style="font-family: Poor Story; font-size: 2.1em; height: 50px;">숙소</p></a>
	</div>
	<div class="gotohotel js-top">
		<a href="#s_tour"><p
				style="font-family: Poor Story; font-size: 2.1em; height: 50px;">관광지</p></a>
	</div>
	<div class="gototop js-top">
		<a href="#"><p
				style="font-family: Poor Story; font-size: 2.1em; height: 50px;">위로
				가기</p></a>
	</div>

<script>
	var places = JSON.parse(sessionStorage.getItem("array"));
	var fStr = "";
	var hStr = "";
	var aStr = "";
	if(places == null) {
		document.getElementById("foodZone").innerHTML = "스크랩된 데이터가 없습니다."
	} else {
		for(var i=0; i<places.length; i++) {
			if (places[i].div_name == '한식' || places[i].div_name == '중식' || places[i].div_name == '양식' || places[i].div_name == '일식') {
				fStr += '<div class="col-md-6 col-sm-6 animate-box">' +
				'<div class="tour">' +
				'<a href="tour-place.html" class="tour-img" style="background-image: url(static/img/pictures/' + places[i].name +'.png);"> </a>' +
				'<span class="desc">' +
				'<p class="star">' +
				'<span>' +
				'<i class="icon-star-full"></i>' +
				'<i class="icon-star-full"></i><i class="icon-star-full"></i>' +
				'<i class="icon-star-full"></i><i class="icon-star-full"></i></span> ' +
				'545 Reviews </p>' +
				'<h2>'+ places[i].name + '</h2>' + 
				'<h5>' + places[i].phone + '</h5>'+
				'<span class="city">' + places[i].address + '</span>' +
				'</span></div></div>';
				document.getElementById("foodZone").innerHTML = fStr;
			} else if (places[i].div_name == '호텔' || places[i].div_name == '모텔' || places[i].div_name == '펜션') {
				hStr += '<div class="col-md-6 col-sm-6 animate-box">' +
				'<div class="tour">' +
				'<a href="tour-place.html" class="tour-img" style="background-image: url(static/img/pictures/' + places[i].name + '.png);"> </a>' +
				'<span class="desc">' +
				'<p class="star">' +
				'<span>' +
				'<i class="icon-star-full"></i>' +
				'<i class="icon-star-full"></i><i class="icon-star-full"></i>' +
				'<i class="icon-star-full"></i><i class="icon-star-full"></i></span> ' +
				'545 Reviews </p>' +
				'<h2>'+ places[i].name + '</h2>' + 
				'<h5>' + places[i].phone + '</h5>'+
				'<span class="city">' + places[i].address + '</span>' +
				'</span></div></div>';
				document.getElementById("hotelZone").innerHTML = hStr;
			} else {
				aStr += '<div class="col-md-6 col-sm-6 animate-box">' +
				'<div class="tour">' +
				'<a href="tour-place.html" class="tour-img" style="background-image: url(static/img/pictures/' + places[i].name + '.png);"> </a>' +
				'<span class="desc">' +
				'<p class="star">' +
				'<span>' +
				'<i class="icon-star-full"></i>' +
				'<i class="icon-star-full"></i><i class="icon-star-full"></i>' +
				'<i class="icon-star-full"></i><i class="icon-star-full"></i></span> ' +
				'545 Reviews </p>' +
				'<h2>'+ places[i].name + '</h2>' + 
				'<h5>' + places[i].phone + '</h5>'+
				'<span class="city">' + places[i].address + '</span>' +
				'</span></div></div>';
				document.getElementById("attractionZone").innerHTML = aStr;
			}
		}
	}
	
</script>

</body>


<footer id="footer">
	<div class="container text-center">
		<div class="row">
			<div class="col-md-4 contact-details">
				<h4>Call</h4>
				<p>010-2217-4669</p>
			</div>
			<div class="col-md-4 contact-details">
				<h4>Visit</h4>
				<p>
					쌍용교육센터 <br>in Hongik University Street
				</p>
			</div>
			<div class="col-md-4 contact-details">
				<h4>Email</h4>
				<p>
					<a href="mailto:momo4989l@naver.com">momo4989l@naver.com</a>
				</p>
			</div>
		</div>
		<div class="row copyright">
			<div class="col-lg-12">
				<p class="small">&copy; 여행가고싶조</p>
			</div>
		</div>
	</div>
</footer>


<!-- jQuery -->
<script src="static/script/mypage/jquery.min.js"></script>
<!-- jQuery Easing -->
<script src="static/script/mypage/jquery.easing.1.3.js"></script>
<!-- Bootstrap -->
<script src="static/script/mypage/bootstrap.min.js"></script>
<!-- Waypoints -->
<script src="static/script/mypage/jquery.waypoints.min.js"></script>
<!-- Flexslider -->
<script src="static/script/mypage/jquery.flexslider-min.js"></script>
<!-- Owl carousel -->
<script src="static/script/mypage/owl.carousel.min.js"></script>
<!-- Magnific Popup -->
<script src="static/script/mypage/jquery.magnific-popup.min.js"></script>
<script src="static/script/mypage/magnific-popup-options.js"></script>
<!-- Date Picker -->
<script src="static/script/mypage/bootstrap-datepicker.js"></script>
<!-- Stellar Parallax -->
<script src="static/script/mypage/jquery.stellar.min.js"></script>

<!-- Main -->
<script src="static/script/mypage/main.js"></script>


</html>

