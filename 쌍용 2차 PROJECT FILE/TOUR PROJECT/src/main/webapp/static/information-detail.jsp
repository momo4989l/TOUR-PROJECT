<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="place" value="${place }"></c:set>

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
<title>INFORMATION - DETAIL</title>

<!-- Bootstrap CSS
   ================================================== -->
<link rel="stylesheet" href="../static/css/information/bootstrap.css">

<!-- Animate CSS
   ================================================== -->
<link rel="stylesheet" href="../static/css/information/animate.min.css">

<!-- Font Icons CSS
   ================================================== -->
<link rel="stylesheet" href="../static/css/information/font-awesome.min.css">
<link rel="stylesheet" href="../static/css/information/ionicons.min.css">

<!-- Main CSS
   ================================================== -->
<link rel="stylesheet" href="../static/css/information/style.css">

<!-- Google web font 
   ================================================== -->
<link
	href='https://fonts.googleapis.com/css?family=Source+Sans+Pro:400,700,300'
	rel='stylesheet' type='text/css'>
<style type="text/css">
.title {
	text-align: center;
}

.sulm {
	text-align: center;
}

.img-responsive {
	display: block;
	margin: 0px auto;
}
</style>
</head>
<body>
	<div class="nav-container">
		<nav class="nav-inner transparent">
			<div class="navbar">
				<div class="container">
					<div class="row">
						<div class="brand">
							<a href="/"><img src="../static/img/header-image.png" alt=""></a>
						</div>
						<div class="navicon">
							<div class="menu-container">
								<div class="circle dark inline">
									<i class="icon ion-navicon"></i>
								</div>
							</div>
						</div>

					</div>
				</div>
			</div>
		</nav>
	</div>
	<!-- Preloader section
================================================== -->
	<div class="preloader">

		<div class="sk-spinner sk-spinner-pulse"></div>

	</div>

	<!-- Single Project section
================================================== -->
	<section id="single-project">
		<div class="container">
			<div class="row">
				<div class="wow fadeInUp col-md-7 col-sm-7" data-wow-delay="2.6s">
					<h1 class="title">${place.tour_name }</h1>
					<img src="../static/img/pictures/${place.tour_name }.png" class="img-detail"
						alt="Single Project"><br><br>
						<p class="sulm">${place.tour_caption }</p>
				</div>
			</div>
		</div>
	</section>
	<div id="disqus_thread"></div>
	<script>
		/**
		 *  RECOMMENDED CONFIGURATION VARIABLES: EDIT AND UNCOMMENT THE SECTION BELOW TO INSERT DYNAMIC VALUES FROM YOUR PLATFORM OR CMS.
		 *  LEARN WHY DEFINING THESE VARIABLES IS IMPORTANT: https://disqus.com/admin/universalcode/#configuration-variables*/
		/*
		 var disqus_config = function () {
		 this.page.url = PAGE_URL;  // Replace PAGE_URL with your page's canonical URL variable
		 this.page.identifier = PAGE_IDENTIFIER; // Replace PAGE_IDENTIFIER with your page's unique identifier variable
		 };
		 */
		(function() { // DON'T EDIT BELOW THIS LINE
			var d = document, s = d.createElement('script');
			s.src = 'https://jejutest-1.disqus.com/embed.js';
			s.setAttribute('data-timestamp', +new Date());
			(d.head || d.body).appendChild(s);
		})();
	</script>
	<noscript>
		Please enable JavaScript to view the <a
			href="https://disqus.com/?ref_noscript">comments powered by
			Disqus.</a>
	</noscript>

	<!-- Footer section
================================================== -->

	<script id="dsq-count-scr" src="//jejutest-1.disqus.com/count.js" async></script>

	<!-- Javascript 
================================================== -->
	<script src="../static/script/information/jquery.js"></script>
	<script src="../static/script/information/bootstrap.min.js"></script>
	<script src="../static/script/information/wow.min.js"></script>
	<script src="../static/script/information/custom.js"></script>

</body>
</html>