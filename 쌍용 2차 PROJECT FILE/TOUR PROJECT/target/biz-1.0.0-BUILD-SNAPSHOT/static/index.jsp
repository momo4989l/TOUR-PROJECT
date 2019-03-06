<%@ page session="false" contentType="text/html; charset=utf-8" 
pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, user-scalable=no">
<meta name="description" content="">
<meta name="author" content="">

<title>JEJU ISLAND</title>

<!-- Bootstrap Core CSS -->
<link href="static/css/index/bootstrap.css" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=East+Sea+Dokdo"
	rel="stylesheet">

<!-- Vitality Theme CSS -->
<link href="static/css/index/vitality-red.css" rel="stylesheet" type="text/css">
<link href="static/css/index/index.css" rel="stylesheet" type="text/css">

</head>

<body>
	<div class="demo-header">
		<ul>
			<li><img src="static/img/header-image.png" /></li>
			<li><p class="cell">
				<h1>Everything on Jeju island</h1>
				</p></li>
			<li><hr class="colored"></li>
		</ul>

		<!-- <p>제주도의 푸른 밤</p> -->
	</div>
	<div class="container" id="previews">
		<div class="row content-row">
			<div class="col-md-4">
				<div class="preview-pane">
					<a href="static/information.html"> <img src="static/img/index/info.png"
						class="img-responsive img-centered" alt="">
						<h3>Information</h3>
						<hr class="colored">
						<p class="text-muted">Ideal For:</p>
						<ul class="list-unstyled text-muted">
							<li><em>Food</em></li>
							<li><em>Hotel</em></li>
							<li><em>Tourist Attraction</em></li>
						</ul>
					</a>
				</div>
			</div>
			<div class="col-md-4">
				<div class="preview-pane">
					<a href="/biz/places"> <img src="static/img/index/map-info.png"
						class="img-responsive img-centered" alt="">
						<h3>Places</h3>
						<hr class="colored">
						<p class="text-muted">Ideal For:</p>
						<ul class="list-unstyled text-muted">
							<li><em>Location</em></li>
							<li><em>Distance</em></li>
						</ul>
					</a>
				</div>
			</div>
			<div class="col-md-4">
				<div class="preview-pane">
					<a href="static/mypageplanner.html"> <img src="static/img/index/planner.png"
						class="img-responsive img-centered" alt="">
						<h3>MyPage & Planner</h3>
						<hr class="colored">
						<p class="text-muted">Ideal For:</p>
						<ul class="list-unstyled text-muted">
							<li><em>Storage</em></li>
							<li><em>Traffic Information</em></li>
							<li><em>Plan Table</em></li>
						</ul>
					</a>
				</div>
			</div>
		</div>
	</div>
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
</body>

</html>
