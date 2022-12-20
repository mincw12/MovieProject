<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<link rel="stylesheet" href="./resources/assets/css/bootstrap.min.css">
<link rel="stylesheet" href="./resources/assets/css/all.min.css">
<link rel="stylesheet" href="./resources/assets/css/animate.css">
<link rel="stylesheet" href="./resources/assets/css/flaticon.css">
<link rel="stylesheet" href="./resources/assets/css/magnific-popup.css">
<link rel="stylesheet" href="./resources/assets/css/odometer.css">
<link rel="stylesheet" href="./resources/assets/css/owl.carousel.min.css">
<link rel="stylesheet" href="./resources/assets/css/owl.theme.default.min.css">
<link rel="stylesheet" href="./resources/assets/css/nice-select.css">
<link rel="stylesheet" href="./resources/assets/css/main.css">
<link rel="shortcut icon" href="./resources/assets/images/favicon.png"
	type="image/x-icon">
<title>Boleto - Online Ticket Booking Website HTML Template</title>
</head>
<body>
	<!-- ==========Preloader========== -->
	<div class="preloader">
		<div class="preloader-inner">
			<div class="preloader-icon">
				<span></span><span></span>
			</div>
		</div>
	</div>
	<!-- ==========Preloader========== -->
	<!-- ==========Overlay========== -->
	<div class="overlay"></div>
	<a href="#0" class="scrollToTop"><i class="fas fa-angle-up"></i></a>
	<!-- ==========Overlay========== -->
	<!-- ==========Header-Section========== -->
	<%@ include file = "header-section.jsp" %>
	<!-- ==========Header-Section========== -->
	<!-- ==========Banner-Section========== -->
	<section class="speaker-banner bg_img"
		data-background="./resources/assets/images/banner/banner07.jpg">
		<div class="container">
			<div class="speaker-banner-content">
				<h2 class="title">Apps Download</h2>
				<ul class="breadcrumb">
					<li><a href="index">Home</a></li>
					<li><a href="#0">Pages</a></li>
					<li>Apps Download</li>
				</ul>
			</div>
		</div>
	</section>
	<!-- ==========Banner-Section========== -->
	<!-- ==========Speaker-Single========== -->
	<section class="apps-seciton padding-top pt-lg-0">
		<div class="container">
			<div class="apps-wrapper bg-six padding-top padding-bottom">
				<div class="bg_img apps-bg"
					data-background="./resources/assets/images/apps/apps01.png"></div>
				<div class="section-header-3">
					<span class="cate">get Boleto app</span>
					<h2 class="title">app download</h2>
				</div>
				<div class="row">
					<div class="col-lg-7 offset-lg-5">
						<div class="content">
							<h5 class="title">MAKE LIFE EASIER</h5>
							<p>As the largest mobile platform in the country, we have the
								right services, the know-how and the expertise to make your
								buying transition to mobile simple, easy and painless.</p>
							<ul class="app-button">
								<li><a href="#0"><img
										src="./resources/assets/images/apps/apps03.png" alt="apps"></a></li>
								<li><a href="#0"><img
										src="./resources/assets/images/apps/apps02.png" alt="apps"></a></li>
							</ul>
						</div>
						<div class="counter--area">
							<div class="counter-item">
								<div
									class="d-flex justify-content-center align-items-center mb-10">
									<h4 class="odometer title" data-odometer-final="50"></h4>
									<h4 class="title">M+</h4>
								</div>
								<p class="info">apps downloads</p>
							</div>
							<div class="counter-item">
								<div
									class="d-flex justify-content-center align-items-center mb-10">
									<h4 class="odometer title" data-odometer-final="15"></h4>
									<h4 class="title">M+</h4>
								</div>
								<p class="info">tickets a month</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- ==========Speaker-Single========== -->
	<!-- ==========Speaker-Section========== -->
	<section class="feature-section padding-bottom padding-top">
		<div class="container">
			<div class="section-header-3">
				<span class="cate">POWERFUL and FLEXIBLE</span>
				<h2 class="title">robust feature</h2>
				<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras
					neque est, aliquam eu dignissim eget, eleifend at nunc. Curabitur
					non dapibus nulla.</p>
			</div>
			<div class="row justify-content-center mb-30-none">
				<div class="col-sm-6 col-lg-3">
					<div class="feature-item">
						<div class="feature-thumb">
							<!-- <img src="./resources/assets/images/feature/icon01.png" alt="feature">-->
							<i class="fas fa-ship"></i>
						</div>
						<div class="feature-content">
							<h5 class="title">Brand New</h5>
							<p>Brand New User Interface with Latest Technology</p>
						</div>
					</div>
				</div>
				<div class="col-sm-6 col-lg-3">
					<div class="feature-item active">
						<div class="feature-thumb">
							<!-- <img src="./resources/assets/images/feature/icon02.png" alt="feature">-->
							<i class="fas fa-store-alt"></i>
						</div>
						<div class="feature-content">
							<h5 class="title">seat map</h5>
							<p>New Seat Map Feature for Ease of Ticket Booking</p>
						</div>
					</div>
				</div>
				<div class="col-sm-6 col-lg-3">
					<div class="feature-item">
						<div class="feature-thumb">
							<!-- <img src="./resources/assets/images/feature/icon03.png" alt="feature">-->
							<i class="fab fa-java"></i>
						</div>
						<div class="feature-content">
							<h5 class="title">F&B</h5>
							<p>Buy Food While Booking Tickets. Relax and Enjoy</p>
						</div>
					</div>
				</div>
				<div class="col-sm-6 col-lg-3">
					<div class="feature-item">
						<div class="feature-thumb">
							<!-- <img src="./resources/assets/images/feature/icon04.png" alt="feature">-->
							<i class="fas fa-ticket-alt"></i>
						</div>
						<div class="feature-content">
							<h5 class="title">ticket filter</h5>
							<p>Filter Your Movie Based on choose</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- ==========Speaker-Section========== -->
	<!-- ==========Newslater-Section========== -->
	<footer class="footer-section">
		<div class="newslater-section padding-bottom">
			<div class="container">
				<div class="newslater-container bg_img"
					data-background="./resources/assets/images/newslater/newslater-bg01.jpg">
					<div class="newslater-wrapper">
						<h5 class="cate">subscribe to Boleto</h5>
						<h3 class="title">to get exclusive benifits</h3>
						<form class="newslater-form">
							<input type="text" placeholder="Your Email Address">
							<button type="submit">subscribe</button>
						</form>
						<p>We respect your privacy, so we never share your info</p>
					</div>
				</div>
			</div>
		</div>
		<div class="container">
			<div class="footer-top">
				<div class="logo">
					<a href="index-1"><img
						src="./resources/assets/images/footer/footer-logo.png" alt="footer"></a>
				</div>
				<ul class="social-icons">
					<li><a href="#0"><i class="fab fa-facebook-f"></i></a></li>
					<li><a href="#0" class="active"><i class="fab fa-twitter"></i></a></li>
					<li><a href="#0"><i class="fab fa-pinterest-p"></i></a></li>
					<li><a href="#0"><i class="fab fa-google"></i></a></li>
					<li><a href="#0"><i class="fab fa-instagram"></i></a></li>
				</ul>
			</div>
			<div class="footer-bottom">
				<div class="footer-bottom-area">
					<div class="left">
						<p>
							Copyright Â© 2020.All Rights Reserved By <a
								href="http://www.bootstrapmb.com/">Boleto </a>
						</p>
					</div>
					<ul class="links">
						<li><a href="#0">About</a></li>
						<li><a href="#0">Terms Of Use</a></li>
						<li><a href="#0">Privacy Policy</a></li>
						<li><a href="#0">FAQ</a></li>
						<li><a href="#0">Feedback</a></li>
					</ul>
				</div>
			</div>
		</div>
	</footer>
	<!-- ==========Newslater-Section========== -->
	<script src="./resources/assets/js/jquery-3.3.1.min.js"></script>
	<script src="./resources/assets/js/modernizr-3.6.0.min.js"></script>
	<script src="./resources/assets/js/plugins.js"></script>
	<script src="./resources/assets/js/bootstrap.min.js"></script>
	<script src="./resources/assets/js/isotope.pkgd.min.js"></script>
	<script src="./resources/assets/js/magnific-popup.min.js"></script>
	<script src="./resources/assets/js/owl.carousel.min.js"></script>
	<script src="./resources/assets/js/wow.min.js"></script>
	<script src="./resources/assets/js/countdown.min.js"></script>
	<script src="./resources/assets/js/odometer.min.js"></script>
	<script src="./resources/assets/js/viewport.jquery.js"></script>
	<script src="./resources/assets/js/nice-select.js"></script>
	<script src="./resources/assets/js/main.js"></script>
</body>
</html>