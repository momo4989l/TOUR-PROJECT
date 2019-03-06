<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="shortcut icon" href="static/img/index/favicon.ico">
<title>JEJU PLANNER</title>
<!--
Metro Fit
http://www.templatemo.com/tm-495-metro-fit
-->
<!-- load stylesheets -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,400">
<!-- Google web font "Open Sans" -->
<!-- Font Awesome -->
<link rel="stylesheet" href="static/css/mypage/bootstrap.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<!-- Bootstrap style -->
<link rel="stylesheet" href="static/css/mypage/magnific-popup.css">
<!-- Magnific popup style (http://dimsemenov.com/plugins/magnific-popup/) -->
<link rel="stylesheet" href="static/css/mypage/templatemo-style.css">
<!-- Templatemo style -->

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>나의 여행</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="" />
<meta name="keywords" content="" />
<meta name="author" content="" />

<!-- Facebook and Twitter integration -->
<meta property="og:title" content="" />
<meta property="og:image" content="" />
<meta property="og:url" content="" />
<meta property="og:site_name" content="" />
<meta property="og:description" content="" />
<meta name="twitter:title" content="" />
<meta name="twitter:image" content="" />
<meta name="twitter:url" content="" />
<meta name="twitter:card" content="" />

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
<link rel="stylesheet" href="static/css/mypage/fonts/flaticon/font/flaticon.css">

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
	href="https://fonts.googleapis.com/css?family=East+Sea+Dokdo|Noto+Sans+KR|Poor+Story|Do+Hyeon"
	rel="stylesheet">
<link rel="stylesheet" href="static/css/mypage/mypage-style.css">


</head>

<body>


	<div id="page">
		<nav class="colorlib-nav" role="navigation">
			<div class="top-menu">
				<div class="container-fluid">
					<div class="row">
						<div class="col-xs-2">
							<a href="/"><img src="static/img/mypage/header-image.png"
								style="z-index: 1; width: 90px" /></a>
						</div>
						<div class="col-xs-10 text-right menu-1">
							<ul>
								<li><a href="#">PLANNER</a></li>
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
													<a href="/mypage">스크랩</a>
												</div>
												<div>
													<a href="#">나의 여행</a>
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

		
	</div>
	<!-- 가격 계산하는곳 -->
	<!-- <div class="calprice">
		여기는 가격을 계산하는곳 입니다.
              <script>
		document.write(window.localStorage.getItem("NaN번째"));
	</script>
	</div> -->
	
	
	<!-- ----------------------------------------------------------------------------------------------------------------------------------------왼쪽 선택 -->
	<div class="row tm-tabs-container">
		<div class="tm-tab-links-col">
			<nav>
				<ul class="tm-tabs">
					<li class="tm-tab-link-item"><a id="tab2"
						href="javascript:void(0)" class="tm-tab-link"> <i
							class="fa fa-heart tm-tab-icon"></i> <span
							class="tm-tab-link-label"
							style="font-family: 'Poor Story', cursive; font-size: 2.1em;">음식점</span>
					</a></li>
					<li class="tm-tab-link-item"><a id="tab3"
						href="javascript:void(0)" class="tm-tab-link"> <i
							class="fa fa-heart tm-tab-icon"></i> <span
							class="tm-tab-link-label"
							style="font-family: 'Poor Story', cursive; font-size: 2.1em;">호텔</span>
					</a></li>
					<li class="tm-tab-link-item"><a id="tab1"
						href="javascript:void(0)" class="tm-tab-link active"> <i
							class="fa fa-heart tm-tab-icon"></i> <span
							class="tm-tab-link-label"
							style="font-family: 'Poor Story', cursive; font-size: 2.1em;">관광지</span>
					</a></li>
				</ul>
			</nav>
		</div>

		<!-- ----------------------------------------------------------------------------------------------------------------------------------------오른쪽 테이블 -->
		<div class="tm-tab-content-box-col">
			<div id="tab1C" class="tm-tab-content-box">
				<div class="tm-tab-content-text">
					<ul class="tm-ul-plus">
						<table class="responstable table-striped table-hover" rules="none"
							style="width: 550px; float: center;" border="1" id="attractionTable">
						</table>
					</ul>
				</div>
			</div>

			<div id="tab2C" class="tm-tab-content-box">
				<div class="tm-tab-content-text">
					<ul class="tm-ul-plus">
						<table class="rounded responstable table-striped table-hover"
							border="1" rules="none" style="width: 550px; float: center;" id="foodTable">
						</table>
					</ul>
				</div>
			</div>

			<div id="tab3C" class="tm-tab-content-box">
				<div class="tm-tab-content-text">
					<ul class="tm-ul-plus">
						<table class="rounded responstable table-striped table-hover"
							border="1" rules="none" style="width: 550px; float: center;" id="hotelTable">
						</table>
					</ul>
				</div>
			</div>

			<div id="tab4C" class="tm-tab-content-box">
				<div class="tm-tab-content-text">
					<ul class="tm-ul-plus">
						
					</ul>
				</div>
			</div>
		</div>
	</div>

	<br />
	<br />
	<br />
	<br />
	<br />
	<br />

	<!-- Preloader, https://ihatetomatoes.net/create-custom-preloading-screen/ -->
	<div id="loader-wrapper">

		<div id="loader"></div>
		<div class="loader-section section-left"></div>
		<div class="loader-section section-right"></div>

	</div>

	<!-- ------------------------------------------------맨 위로 가는 버튼  -->
	<div class="gototop js-top">
		<a href="#" class="js-gotop"><i class="icon-arrow-up2"></i></a>
	</div>
</body>
<footer class="footer" id="footer">
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



<!-- load JS files -->
<script src="static/script/mypage/jquery.js"></script>
<!-- jQuery (https://jquery.com/download/) -->
<script
	src="https://www.atlasestateagents.co.uk/javascript/tether.min.js"></script>
<!-- Tether for Bootstrap (http://stackoverflow.com/questions/34567939/how-to-fix-the-error-error-bootstrap-tooltips-require-tether-http-github-h) -->
<script src="static/script/mypage/bootstrap.min.js"></script>
<!-- Bootstrap (http://v4-alpha.getbootstrap.com/) -->
<script src="static/script/mypage/jquery.magnific-popup.min.js"></script>
<!-- Magnific popup (http://dimsemenov.com/plugins/magnific-popup/) -->
<script>
	$(window).load(function() {

		/* Gallery pop up
		-----------------------------------------*/
		$('.tm-header-gallery').magnificPopup({
			delegate : 'a', // child items selector, by clicking on it popup will open
			type : 'image',
			gallery : {
				enabled : true
			}
		});
		var places = JSON.parse(sessionStorage.getItem("array"));
		var fStr = '<tr>' + 
					'<td class="text-center table_h" width="30%"' +
					'style="font-weight: bold">음식점</td>' + 
					'<td class="text-center table_h" width="50%"' +
					'style="font-weight: bold">정보</td>' +
					'<td class="text-center table_h" width="20%"' +
					'style="font-weight: bold">1인 금액</td>' +
					'</tr>';
		var hStr = '<tr>' + 
					'<td class="text-center table_h" width="30%"' +
					'style="font-weight: bold">숙소</td>' + 
					'<td class="text-center table_h" width="50%"' +
					'style="font-weight: bold">정보</td>' +
					'<td class="text-center table_h" width="20%"' +
					'style="font-weight: bold">1박 금액</td>' +
					'</tr>';
		var aStr = '<tr>' + 
					'<td class="text-center table_h" width="30%"' +
					'style="font-weight: bold">관광지</td>' + 
					'<td class="text-center table_h" width="70%"' +
					'style="font-weight: bold">정보</td>' +
					'</tr>';
		if(places == null) {
			document.getElementById("foodTable").innerHTML = "스크랩된 데이터가 없습니다."
			document.getElementById("attractionTable").innerHTML = "스크랩된 데이터가 없습니다."
			document.getElementById("hotelTable").innerHTML = "스크랩된 데이터가 없습니다."
		} else {
			for(var i=0; i<places.length; i++) {
				if (places[i].div_name == '한식' || places[i].div_name == '중식' || places[i].div_name == '양식' || places[i].div_name == '일식') {
					fStr += '<tr>' +
					'<td class="text-center" style="font-weight: bold;" width="30%">' + places[i].name + '</td>' +
					'<td class="text-center" style="font-weight: bold;" width="50%">' + places[i].phone + '<br/>' + places[i].address + '</td>' +
					'<td class="text-center" style="font-weight: bold;" width="20%">' + places[i].price + '</td>' +
					'</tr>';
					document.getElementById("foodTable").innerHTML = fStr;
				} else if (places[i].div_name == '호텔' || places[i].div_name == '모텔' || places[i].div_name == '펜션') {
					hStr += '<tr>' +
					'<td class="text-center" style="font-weight: bold;" width="30%">' + places[i].name + '</td>' +
					'<td class="text-center" style="font-weight: bold;" width="50%">' + places[i].phone + '<br/>' + places[i].address + '</td>' +
					'<td class="text-center" style="font-weight: bold;" width="20%">' + places[i].price + '</td>' +
					'</tr>';
					document.getElementById("hotelTable").innerHTML = hStr;
				} else {
					aStr += '<tr>' +
					'<td class="text-center" style="font-weight: bold;" width="30%">' + places[i].name + '</td>' +
					'<td class="text-center" style="font-weight: bold;" width="70%">' + places[i].phone + '<br/>' + places[i].address + '</td>' +
					'</tr>';
					document.getElementById("attractionTable").innerHTML = aStr;
				}
			}
		}
		
		// Tabs
		// http://stackoverflow.com/questions/11645081/how-to-build-simple-tabs-with-jquery
		$('.tm-tab-content-box').hide();
		//$('#tab1C').fadeIn('slow');
		$('#tab2').addClass('active');
		$('#tab1').removeClass('active');
		$('#tab2C').show();

		$('.tm-tab-link').click(function() {

			var t = $(this).attr('id');

			$('.tm-tab-link').removeClass('active');
			$(this).addClass('active');

			$('.tm-tab-content-box').hide();
			$('#' + t + 'C').fadeIn('slow');

		});

		// Remove preloader
		// https://ihatetomatoes.net/create-custom-preloading-screen/
		$('body').addClass('loaded');
		
		
	});
</script>


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
