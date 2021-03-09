<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!doctype html>
<html class="no-js" lang="zxx">
<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Odga.com</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="manifest" href="site.webmanifest">
<link rel="shortcut icon" type="image/x-icon"
	href="assets/img/favicon.ico">

<!-- CSS here -->
<link rel="stylesheet" href="assets/css/bootstrap.min.css">
<link rel="stylesheet" href="assets/css/owl.carousel.min.css">
<link rel="stylesheet" href="assets/css/slicknav.css">
<link rel="stylesheet" href="assets/css/flaticon.css">
<link rel="stylesheet" href="assets/css/animate.min.css">
<link rel="stylesheet" href="assets/css/magnific-popup.css">
<link rel="stylesheet" href="assets/css/fontawesome-all.min.css">
<link rel="stylesheet" href="assets/css/themify-icons.css">
<link rel="stylesheet" href="assets/css/slick.css">
<link rel="stylesheet" href="assets/css/nice-select.css">
<link rel="stylesheet" href="assets/css/style.css">
</head>

<body>
	<!-- Preloader Start -->
    <div id="preloader-active">
        <div class="preloader d-flex align-items-center justify-content-center">
            <div class="preloader-inner position-relative">
                <div class="preloader-circle"></div>
                <div class="preloader-img pere-text">
                    <img src="assets/img/logo/loder1_d.jpg" alt="">
                </div>
            </div>
        </div>
    </div>
	<!-- Preloader Start -->
	<header>
		<!-- Header Start -->
		<div class="header-area header-transparent">
			<div class="main-header">
				<div class="header-bottom  header-sticky">
					<div class="container-fluid">
						<div class="row align-items-center">
							<!-- Logo -->
							<div class="col-xl-1 col-lg-2 col-md-1">
                                <div class="logo">
                                  <a href="index.do"><img src="assets/img/logo/logo_b.png" alt="" style="max-width: 170px;"></a>
                                </div>
							</div>
							<div class="col-xl-11 col-lg-10 col-md-8">
							<div class="col-xl-10 col-lg-10 col-md-8">
								<!-- Main-menu -->
								<div class="main-menu f-right d-none d-lg-block">
									<nav>
										<ul id="navigation">
											<li><a href="listing.do">국내여행지</a></li>
											<li><a href="review">커뮤니티</a>
												<ul class="submenu">
													<li><a href="review">여행후기</a></li>
													<li><a href="support.do">문의하기</a></li>
												</ul>
											</li>
											<li><a href="use.do">이용방법</a></li>
											<li><a href="https://www.agoda.com/">호텔예약</a></li>
											<li id ="plannerBtn" class="add-list"><a onclick="goPlanner()"><i class="ti-plus"></i>나의 여행 만들기</a></li>												
											<li class="login">									
											<c:choose>
													<c:when test="${empty LOGINUSER}">
														<a href="login.do"><i class="ti-user"></i>로그인 / 회원가입</a>
													</c:when>
												<c:otherwise>
													<c:choose>
														<c:when test="${LOGINUSER.m_verify eq 0}">
															<a href="logout.do"><i class="ti-user"></i>${LOGINUSER.m_name} 회원님 로그아웃</a>
															<li><a href="member.do"><i class="ti-user"></i> 마이페이지</a></li>
														</c:when>
													<c:otherwise>
															<a href="logout.do"><i class="ti-user"></i>${LOGINUSER.m_name} 관리자님 로그아웃</a>
															<li><a href="dashboard.do"><i class="ti-user"></i> 관리자페이지</a></li>
													</c:otherwise>
												    </c:choose>
												</c:otherwise>
											</c:choose>
										</li>
										</ul>
									</nav>
								</div>
							</div>
							<!-- Mobile Menu -->
							<div class="col-12">
								<div class="mobile_menu d-block d-lg-none"></div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
		<!-- Header End -->
	</header>
	<main>

   <!-- Hero Area Start-->
   <div class="slider-area">
      <div class="single-slider slider-height d-flex align-items-center" style="background-color: rgba(0, 0, 150, 0.15);">
			<div class="container">
				<div class="row justify-content-center">
					<div class="col-xl-8 col-lg-9">
						
	<!-- 날씨 API -->
    <html>
	<head>
	<script type = "text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
	<meta charset="UTF-8">
	<title>Weather</title>
	</head>	
	<body>

	<script>
		if (navigator.geolocation) {
		    navigator.geolocation.getCurrentPosition(function(position) {		        
		    	var lat = position.coords.latitude; // 위도
		    	var lon = position.coords.longitude; // 경도
		    	getWeather(lat,lon);
		      });
		} else { 		    
		    alert("현재 위치를 가져올 수 없습니다.");
		}
		function getWeather(lat,lon) {
			var url = 'https://api.openweathermap.org/data/2.5/find?lat='+lat+'&lon='+lon+'&cnt=1&APPID=f8b8761c25df03a84389bdbb6a97a6c5&units=metric';
		    fetch(url)
		    .then(function(response){ 
		      return response.json();
		    }).then(function(data){
		    	var $minTemp = data.list[0].main.temp_min;
				var $maxTemp = data.list[0].main.temp_max;
				var $humidity = data.list[0].main.humidity;
				var $type = data.list[0].weather[0].description;
				var $sky = data.list[0].weather[0].main;
				var $probability = data.list[0].clouds.all;
				var $cityName = data.list[0].name;
				if($type == "Clouds")
					$type = "구름";
				else if($type == "Rain")
					$type = "비";
				else
					$type = "맑음";
				$('.clowtemp').append($minTemp + "°C");
				$('.chightemp').append($maxTemp + "°C");
				$('.chumidity').append($humidity + "%");
				$('.csky').append($sky);
				$('.ctype').append($type);
				$('.cprobability').append($probability + "%");	
				$('.cityName').append($cityName);
		    })
		}		
	</script>
	<div class="weather" style="width: 60%;position: absolute;right: -40%;color: #fff;text-align: left;">
			<img src="http://openweathermap.org/img/w/02d.png" style="float:left;">
			<div class="csky" style="float: left; width: 20%; font-weight: bold; font-family: sans-serif; margin-top: 12px; margin-left: 5px;"></div>
			<div class="ctype" style="float: left; width: 15%; font-weight: bold; font-family: sans-serif; margin-top: 12px; font-size: 1.0em; margin-left: 6px;"></div>
			<div class="clowtemp" style="float: left; width: 15%; font-weight: bold; margin-top: 12px; color: #2E9AFE; margin-right: 5px;"></div>
			<div class="chightemp" style="float: left; width: 15%; font-weight: bold; margin-top: 12px; color: #FA5858; margin-right:5px;">
			<span style="color: black; margin-right:3px; margin-left:3px">/</span></div>
			<div class="cityName" style="float: left; width: 30%; color: white; margin-right:5px; font-weight: bold; font-size: 1em; font-family: monospace; text-align:right; position: absolute; top: 12px; right: -58px; "></div>
		</div>
	</body>
</html>
	
	
		<!-- Hero Caption -->
		<div class="hero__caption">
			<span style="font: italic bold 2em/1em Georgia, serif;">Plan your trip </span>
			<h1>Where are u going ?</h1>
		</div>
						<!--Hero Area 검색  -->
							<form action="listing.do" class="search-box">
								<div class="input-form">
									<input type="text" placeholder="여행지를 찾아보세요." name="keyword" required="required" />
								</div>
								<div class="select-form">
								<div class="select-job-items1">
                                    <select name="catgo">
                                        <option value="title">관광지</option>
                                        <option value="addr1">주소</option>					
                                    </select>
                               	 </div>
								</div>
								<div class="search-form">
									<button type="submit">Search</button>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!--Hero Area End-->
		
		<!-- Popular Locations Start -->
		<div class="popular-location section-padding30">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<!-- Section Tittle -->
						<div class="section-tittle text-center mb-80">
							<span>Most visited places</span>
							<h2>Popular Locations</h2>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-4 col-md-6 col-sm-6">
						<div class="single-location mb-30">
							<div class="location-img">
								<img src="assets/img/gallery/location1.png" alt="">
							</div>
							<div class="location-details">
								<p>서울</p>
								<a href="listing.do?keyword=서울&catgo=addr1" class="location-btn">2982 <i class="ti-plus"></i>
									Location
								</a>
							</div>
						</div>
					</div>
					<div class="col-lg-4 col-md-6 col-sm-6">
						<div class="single-location mb-30">
							<div class="location-img">
								<img src="assets/img/gallery/location2.png" alt="">
							</div>
							<div class="location-details">
								<p>부산</p>
								<a href="listing.do?keyword=부산&catgo=addr1" class="location-btn">775 <i class="ti-plus"></i>
									Location
								</a>
							</div>
						</div>
					</div>
					<div class="col-lg-4 col-md-6 col-sm-6">
						<div class="single-location mb-30">
							<div class="location-img">
								<img src="assets/img/gallery/location3.png" alt="">
							</div>
							<div class="location-details">
								<p>제주도</p>
								<a href="listing.do?keyword=제주&catgo=addr1" class="location-btn">1026 <i class="ti-plus"></i>
									Location
								</a>
							</div>
						</div>
					</div>
					<div class="col-lg-4 col-md-6 col-sm-6">
						<div class="single-location mb-30">
							<div class="location-img">
								<img src="assets/img/gallery/location4.png" alt="">
							</div>
							<div class="location-details">
								<p>강릉</p>
								<a href="listing.do?keyword=강릉&catgo=addr1" class="location-btn">377 <i class="ti-plus"></i>
									Location
								</a>
							</div>
						</div>
					</div>
					<div class="col-lg-4 col-md-6 col-sm-6">
						<div class="single-location mb-30">
							<div class="location-img">
								<img src="assets/img/gallery/location5.png" alt="">
							</div>
							<div class="location-details">
								<p>속초</p>
								<a href="listing.do?keyword=속초&catgo=addr1" class="location-btn">165 <i class="ti-plus"></i>
									Location
								</a>
							</div>
						</div>
					</div>
					<div class="col-lg-4 col-md-6 col-sm-6">
						<div class="single-location mb-30">
							<div class="location-img">
								<img src="assets/img/gallery/location6.png" alt="">
							</div>
							<div class="location-details">
								<p>대구</p>
								<a href="listing.do?keyword=대구&catgo=addr1" class="location-btn">648  <i class="ti-plus"></i>
									Location
								</a>
							</div>
						</div>
					</div>
				</div>
				<!-- More Btn -->
				<div class="row justify-content-center">
					<div class="room-btn pt-20">
						<a href="listing.do" class="btn view-btn1">View All Places</a>
					</div>
				</div>
			</div>
		</div>
		<!-- Popular Locations End -->
		
		<!-- Services Area Start -->
		<div class="services-area pt-150 pb-150 section-bg"
			data-background="assets/img/gallery/backsample1.png">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<!-- Section Tittle -->
						<div class="section-tittle section-tittle2 text-center mb-80">
							<span>Easy to plan</span>
							<h2>누구나 쉽게 일정을 계획할 수 있습니다.</h2>
						</div>
					</div>
				</div>
				<div class="row justify-content-between">
					<div class="col-lg-3 col-md-6">
						<div class="single-services text-center mb-50">
							<div class="services-icon">
								<span class="flaticon-list"></span>
							</div>
							<div class="services-cap">
								<h5>
									<a href="#">5분이면 나의 여행이 한눈에!</a>
								</h5>
								<p>지도위에서 쉽게 계획하기</p>
							</div>
							<!-- Shpape -->
							<img class="shape1 d-none d-lg-block"
								src="assets/img/icon/serices1.png" alt="">
						</div>
					</div>
					<div class="col-lg-3 col-md-6">
						<div class="single-services text-center mb-50">
							<div class="services-icon">
								<span class="flaticon-problem"></span>
							</div>
							<div class="services-cap">
								<h5>
									<a href="#">여행일정 최적화</a>
								</h5>
								<p>동선을 확인한 후 클릭만으로 일정 최적화</p>
							</div>
							<img class="shape2 d-none d-lg-block"
								src="assets/img/icon/serices2.png" alt="">
						</div>
					</div>
					<div class="col-lg-3 col-md-6">
						<div class="single-services text-center mb-50">
							<div class="services-icon">
								<span class="flaticon-respect"></span>
							</div>
							<div class="services-cap">
								<h5>
									<a href="#">여행지에서도 모바일로 편리하게!</a>
								</h5>
								<p>여행일정 확인과 길찾기 연동</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- Services Area End -->
		<!-- Categories Area Start -->
		<div class="categories-area section-padding30">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<!-- Section Tittle -->
		<!-- peoples-visit Start -->
		<div class="peoples-visit dining-padding-top">
			<!-- Single Left img -->
			<c:forEach items="${review}" var="review">
			<div class="single-visit left-img" >
				<div class="container">
					<div class="row justify-content-end">
						<div class="col-lg-8">
							<div class="visit-caption" style="OVERFLOW-Y:auto; width:100%; height:1000px; background: rgba(255, 255, 255);">
								<span>Best Reviews</span>
								<h3>${review.b_subject}</h3>
								<p>${review.b_content}</p>
							</div>
						</div>
					</div>
				</div>
			</div>
			</c:forEach>
			
			
		</div>
		<!-- peoples-visit End -->
		<!-- Testimonial Start -->
<!-- 		<div class="testimonial-area testimonial-padding">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						Section Tittle
						<div class="section-tittle text-center mb-80">
							<span>Our Community</span>
							<h2>[제주도]부모님과 함께 갈만한 여행지 추천좀해주세요.</h2>
						</div>
					</div>
				</div>
				<div class="row align-items-center">
					<div class="col-lg-11 col-md-11">
						<div class="h1-testimonial-active">
							Single Testimonial
							<div class="single-testimonial text-center">
								Testimonial Content
								<div class="testimonial-caption ">
									<div class="testimonial-top-cap">
										<p>2박 3일간 부모님과 치유/힐링을 목적으로 여행 할 계획입나다. 댓글로 추천해주시면 감사하겠습니다.</p>
									</div>
									founder
									<div
										class="testimonial-founder d-flex align-items-center justify-content-center mb-30">
										<div class="founder-img">
											<img src="assets/img/testmonial/Homepage_testi.png" alt="">
										</div>
										<div class="founder-text">
											<span>이 지훈</span>
											<p>Junior Developer</p>
										</div>
									</div>
								</div>
							</div>
							Single Testimonial
							<div class="single-testimonial text-center">
								Testimonial Content
								<div class="testimonial-caption ">
									<div class="testimonial-top-cap">
										<p>Consectetur adipiscing elit, sed do eiusmod tempor
											incididunt ut labore et dolore magna aliqua. Quis ipsum
											suspendisse ultrices gravida. Risus commodo viverra maecenas
											accumsan lacus vel facilisis por incididunt ut labore et
											dolore mas.</p>
									</div>
									founder
									<div
										class="testimonial-founder d-flex align-items-center justify-content-center mb-30">
										<div class="founder-img">
											<img src="assets/img/testmonial/Homepage_testi.png" alt="">
										</div>
										<div class="founder-text">
											<span>Oliva jems</span>
											<p>UIX designer</p>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		Testimonial End -->
	</main>
	
		<!-- Footer Start-->
		<footer>
		<div class="footer-area">
			<div class="container">
				<div class="footer-top footer-padding">
					<div class="row justify-content-between">
						<div class="col-xl-3 col-lg-4 col-md-4 col-sm-6">
							<div class="single-footer-caption mb-50">
								<div class="col-xl-2 col-lg-2 col-md-1">
								<!-- Logo -->
                                <div class="logo">
                                  <a href="index.html"><img src="assets/img/logo/logo_b.png" alt="" style="max-width: 170px;"></a>
                                </div>
                               </div>
							 </div>
							</div>
						<div class="col-xl-2 col-lg-2 col-md-4 col-sm-6">
							<div class="single-footer-caption mb-50">
								<div class="footer-tittle">
									<h4>Administrator</h4>
									<ul>
										<li><a href="https://github.com/lzhxxn">이지훈</a></li>
										<li><a href="https://github.com/yumgit23">허유민</a></li>
										<li><a href="https://github.com/DobbyisFree1">박종범</a></li>
										<li><a href="https://github.com/dragongit94">이민용</a></li>
										<li><a href="https://github.com/suadeomgit">권성환</a></li>
									</ul>
								</div>
							</div>
						</div>
						<div class="col-xl-2 col-lg-3 col-md-4 col-sm-6">
							<div class="single-footer-caption mb-50">
								<div class="footer-tittle">
									<h4>Quick Links</h4>
									<ul>
										<li><a href="join.do">회원가입</a></li>
										<li><a href="login.do">로그인</a></li>
										<li><a href="use.do">나의 여행 만들기</a></li>
										<li><a href="review.do">여행후기</a></li>
										<li><a href="inquiry.do">문의하기</a></li>
									</ul>
								</div>
							</div>
						</div>
						<div class="col-xl-3 col-lg-3 col-md-4 col-sm-6">
							<div class="single-footer-caption mb-50">
								<div class="footer-tittle">
									<h4>Contact with Us</h4>
									<ul>
										<li><span class="la la-home"></span> 서울 마포구 백범로 23 3층</li>
										<li><span class="la la-headphones"></span> <a href="#">+ 81 02 707 1480</a></li>
										<li><span class="la la-envelope-o"></span> <a href="odgacom@naver.com">odgacom@naver.com</a></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="footer-bottom">
					<div class="row d-flex justify-content-between align-items-center">
						<div class="col-xl-9 col-lg-8">
							<div class="footer-copy-right">
								<p>
									<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
									&copy; Copyright 
									<script>
										document
												.write(new Date().getFullYear());
									</script>
									<b>Odga.com</b> Made with
									<i class="fa fa-heart" aria-hidden="true"></i>
									<a href="https://github.com/lzhxxn" target="_blank">JH</a>
									<a href="https://github.com/dragongit94" target="_blank">MY</a>
									<a href="https://github.com/yumgit23" target="_blank">YM</a>
									<a href="https://github.com/DobbyisFree1" target="_blank">JB</a>
									<a href="https://github.com/suadeomgit" target="_blank">SH</a>
									<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
								</p>
							</div>
						</div>
						<div class="col-xl-3 col-lg-4">
							<!-- Footer Social -->
							<div class="footer-social f-right">
								<a href="https://www.instagram.com/odga__com"><i class="fab fa-facebook-f"></i></a> 
								<a href="https://www.instagram.com/odga__com"><i class="fab fa-twitter"></i></a>
								<a href="https://www.instagram.com/odga__com"><i class="fas fa-globe"></i></a> 
								<a href="https://www.instagram.com/odga__com"><i class="fab fa-instagram"></i></a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		</footer>
		<!-- Footer End-->
	
	<!-- Scroll Up -->
	<div id="back-top">
		<a title="Go to Top" href="#"> <i class="fas fa-level-up-alt"></i></a>
	</div>
<script type="text/javascript">
function goPlanner(){
	if(${empty LOGINUSER}){
		alert("로그인 후 이용 가능합니다.");
		 location.href = "login.do";
	}else{
		location.href = "planner?m_id=${LOGINUSER.m_id}";
	}
}
</script>

	<!-- JS here -->
	<!-- All JS Custom Plugins Link Here here -->
	<script src="./assets/js/vendor/modernizr-3.5.0.min.js"></script>
	<!-- Jquery, Popper, Bootstrap -->
	<script src="./assets/js/vendor/jquery-1.12.4.min.js"></script>
	<script src="./assets/js/popper.min.js"></script>
	<script src="./assets/js/bootstrap.min.js"></script>
	<!-- Jquery Mobile Menu -->
	<script src="./assets/js/jquery.slicknav.min.js"></script>

	<!-- Jquery Slick , Owl-Carousel Plugins -->
	<script src="./assets/js/owl.carousel.min.js"></script>
	<script src="./assets/js/slick.min.js"></script>
	<!-- One Page, Animated-HeadLin -->
	<script src="./assets/js/wow.min.js"></script>
	<script src="./assets/js/animated.headline.js"></script>
	<script src="./assets/js/jquery.magnific-popup.js"></script>

	<!-- Nice-select, sticky -->
	<script src="./assets/js/jquery.nice-select.min.js"></script>
	<script src="./assets/js/jquery.sticky.js"></script>

	<!-- contact js -->
	<script src="./assets/js/contact.js"></script>
	<script src="./assets/js/jquery.form.js"></script>
	<script src="./assets/js/jquery.validate.min.js"></script>
	<script src="./assets/js/mail-script.js"></script>
	<script src="./assets/js/jquery.ajaxchimp.min.js"></script>

	<!-- Jquery Plugins, main Jquery -->
	<script src="./assets/js/plugins.js"></script>
	<script src="./assets/js/main.js"></script>

</body>
</html>