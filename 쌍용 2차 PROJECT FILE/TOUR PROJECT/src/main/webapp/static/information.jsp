<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="places" value="${places }"></c:set>

<!DOCTYPE html>
<html lang="en">
<head>
<!--

Template 2082 Pure Mix

http://www.tooplate.com/view/2082-pure-mix

-->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="keywords" content="">
<meta name="description" content="">
<link rel="shortcut icon" href="../static/img/index/favicon.ico">
<!-- Site title
   ================================================== -->
<title>JEJU INFORMATION</title>

<!--  Footer CSS -->
<link rel="stylesheet" href="static/css/information/information.css">
<!-- Bootstrap CSS
   ================================================== -->
<link rel="stylesheet" href="static/css/information/bootstrap.css">

<!-- Animate CSS
   ================================================== -->
<link rel="stylesheet" href="static/css/information/animate.min.css">

<!-- Font Icons CSS
   ================================================== -->
<link rel="stylesheet"
	href="static/css/information/font-awesome.min.css">
<link rel="stylesheet" href="static/css/information/ionicons.min.css">

<!-- Main CSS
   ================================================== -->
<link rel="stylesheet" href="static/css/information/style.css">

<!-- Google web font 
   ================================================== -->
<link
	href="https://fonts.googleapis.com/css?family=Quicksand:300,400,500,700"
	rel="stylesheet">

</head>
<body>


	<!-- Preloader section
================================================== -->
	<div class="preloader">

		<div class="sk-spinner sk-spinner-pulse"></div>

	</div>


	<!-- Navigation section
================================================== -->
	<div class="nav-container">
		<nav class="nav-inner transparent">

			<div class="navbar">
				<div class="container">
					<div class="row">

						<div class="brand">
							<a href="/"><img src="static/img/header-image.png" alt=""></a>
						</div>

						<div class="navicon">
							<div class="menu-container">

								<div class="circle dark inline">
									<i class="icon ion-navicon"></i>
								</div>

								<div class="list-menu">
									<i class="icon ion-close-round close-iframe"></i>
									<div class="intro-inner">
										<ul id="nav-menu">
											<li><a href="/">메인페이지</a></li>
											<li><a href="/places">지도</a></li>
											<li><a href="/mypage">마이페이지</a></li>
											<li><a href="/login">로그인</a></li>
										</ul>
									</div>
								</div>

							</div>
						</div>

					</div>
				</div>
			</div>

		</nav>
	</div>


	<!-- Header section
================================================== -->
	<section id="header" class="header-one">
		<div class="container">
			<div class="row">

				<div class="col-md-offset-3 col-md-6 col-sm-offset-2 col-sm-8">
					<div class="header-thumb">
						<h1 class="wow fadeIn" data-wow-delay="1.6s">INFORMATION</h1>
						<h3 class="wow fadeInUp" data-wow-delay="1.9s">여러 장소에 대한 정보를
							한눈에</h3>
					</div>
				</div>

			</div>
		</div>
	</section>


	<!-- Portfolio section
================================================== -->
	<section id="portfolio">
		<div class="container">
			<div class="row">

				<div class="col-md-12 col-sm-12">

					<!-- iso section -->
					<div class="iso-section wow fadeInUp" data-wow-delay="2.6s">

						<ul class="filter-wrapper clearfix">
							<li><a href="#" data-filter="*" class="selected opc-main-bg">전체</a></li>
							<li><a href="#" class="opc-main-bg" data-filter=".맛집">맛집</a></li>
							<li><a href="#" class="opc-main-bg" data-filter=".숙소">숙소</a></li>
							<li><a href="#" class="opc-main-bg" data-filter=".관광지">관광지</a></li>
						</ul>

						<!-- iso box section -->
						<div class="iso-box-section wow fadeInUp" data-wow-delay="1s">
							<div class="iso-box-wrapper col4-iso-box">
								<c:forEach var="place" items="${places}">
									<c:if test="${place.div_name eq '한식' || place.div_name eq '중식' || place.div_name eq '양식' || place.div_name eq '일식'}">
										<div class="iso-box 맛집 branding col-md-4 col-sm-6">
											<div class="portfolio-thumb">
												<img src="static/img/pictures/${place.tour_name }.png"
													class="img-responsive" alt="Portfolio">
												<div class="portfolio-overlay">
													<div class="portfolio-item">
														<a href="/tourinfo/${place.tour_idx }"><i
															class="fa fa-link"></i></a>
														<h2>${place.tour_name }</h2>
													</div>
												</div>
											</div>
										</div>
									</c:if>
								</c:forEach>

								<c:forEach items="${places}" var="place">
									<c:if test="${place.div_name eq '호텔' || place.div_name eq '모텔' || place.div_name eq '펜션'}">
										<div class="iso-box 숙소 col-md-4 col-sm-6">
											<div class="portfolio-thumb">
												<img src="static/img/pictures/${place.tour_name }.png"
													class="img-responsive" alt="Portfolio">
												<div class="portfolio-overlay">
													<div class="portfolio-item">
														<a href="/tourinfo/${place.tour_idx }" ><i
															class="fa fa-link"></i></a>
														<h2>${place.tour_name }</h2>
													</div>
												</div>
											</div>
										</div>
									</c:if>
								</c:forEach>

								<c:forEach items="${places}" var="place">
									<c:if test="${place.div_name eq '관광지'}">
										<div class="iso-box 관광지 col-md-4 col-sm-6">
											<div class="portfolio-thumb">
												<img src="static/img/pictures/${place.tour_name }.png"
													class="img-responsive" alt="Portfolio">
												<div class="portfolio-overlay">
													<div class="portfolio-item">
														<a href="/tourinfo/${place.tour_idx }" ><i
															class="fa fa-link"></i></a>
														<h2>${place.tour_name }</h2>
													</div>
												</div>
											</div>
										</div>
									</c:if>
								</c:forEach>	
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<!-- Footer section
================================================== -->
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


	<!-- Javascript 
================================================== -->
	<script src="static/script/information/jquery.js"></script>
	<script src="static/script/information/bootstrap.min.js"></script>
	<script src="static/script/information/isotope.js"></script>
	<script src="static/script/information/imagesloaded.min.js"></script>
	<script src="static/script/information/wow.min.js"></script>
	<script src="static/script/information/custom.js"></script>

</body>
</html>