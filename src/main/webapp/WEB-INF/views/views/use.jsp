<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!doctype html>
<html class="no-js" lang="zxx">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Odga.com</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="manifest" href="site.webmanifest">
		<link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.ico">

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
        <!-- Header Start -->
       <header>
       <div class="header-area header-transparent">
            <div class="main-header">
               <div class="header-bottom  header-sticky">
                    <div class="container-fluid">
                        <div class="row align-items-center">
                            <!-- Logo -->
                            <div class="col-xl-2 col-lg-2 col-md-1">
                                <div class="logo">
                                  <a href="index.html"><img src="assets/img/logo/logo_b.png" alt=""></a>
                                </div>
                            </div>
                            <div class="col-xl-10 col-lg-10 col-md-8">
                                <!-- Main-menu -->
                                <div class="main-menu f-right d-none d-lg-block">
                                    <nav>
										<ul id="navigation">
											<li><a href="listing.html">국내여행지</a></li>
											<li><a href="#">커뮤니티</a>
												<ul class="submenu">
													<li><a href="review.html">여행후기</a></li>
													<li><a href="support.html">문의하기</a></li>
												</ul>
											</li>
											<li><a href="use.html">이용방법</a></li>
											<li><a href="https://www.agoda.com/">호텔예약</a></li>
											<li class="add-list"><a href="listing_details.html"><i class="ti-plus"></i>나의 여행 만들기</a></li>
											<li class="login"><a href="login.html">
												<i class="ti-user"></i>로그인 / 회원가입</a>
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
        <!-- Header End -->
    </header>
    <main>

        <!-- Hero Start-->
        <div class="hero-area2  slider-height2 hero-overly2 d-flex align-items-center ">
            <div class="container">
                <div class="row">
                    <div class="col-xl-12">
                        <div class="hero-cap text-center pt-50">
                            <h2>이용 방법</h2>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--Hero End -->
        <!--
        <!-- Categories Area Start -->
        <div class="categories-area section-padding30">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <!-- Section Tittle -->
                        <div class="section-tittle text-center mb-80">
                            <span>ODGA</span>
                            <h2>여행 동선을 쉽게 확인하기</h2>
                        </div>
                    </div>
                </div>
                
        <!-- Services Area Start -->
        <div class="services-area pt-150 pb-150 section-bg" data-background="assets/img/gallery/backsample1.png">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <!-- Section Tittle -->
                        <div class="section-tittle section-tittle2 text-center mb-80">
                            <span>Easy to Travel</span>
                            <h2>어떻게 이용하나요?</h2>
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
                                <h5><a href="#">1. 가고싶은 지역 찾기</a></h5>
                                <p>여행지를 찾아서 선택 해보세요.</p>
                            </div>
                            <!-- Shpape -->
                           
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <div class="single-services text-center mb-50">
                            <div class="services-icon">
                                <span class="flaticon-problem"></span>
                            </div>
                            <div class="services-cap">
                                <h5><a href="#">2. 일정에 담기</a></h5>
                                <p>가고싶은 장소 또는 관심있는 장소인가요? 일정에 담아보세요.</p>
                            </div>
                            
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <div class="single-services text-center mb-50">
                            <div class="services-icon">
                                <span class="flaticon-respect"></span>
                            </div>
                            <div class="services-cap">
                                <h5><a href="#">3. 플래너 작성하기</a></h5>
                                <p>일정에 담은 장소를 플래너를 통해 계획해보세요.</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <div class="single-services text-center mb-50">
                            <div class="services-icon">
                                <span class="flaticon-travel"></span>
                            </div>
                            <div class="services-cap">
                                <h5><a href="#">4. 여행하기</a></h5>
                                <p>일정에 담은 장소를 플래너를 통해 계획해보세요.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Services Area End -->
        <!-- Popular Locations Start -->
        
             <div class="section-top-border text-left">
					<h3 class="mb-30">STEP 1 여행지 찾기🔎</h3>
					<div class="row">
						<div class="col-md-9">
							<p class="text-left desc">여행지의 가고싶은곳을 찾기</p>
							<p class="text-left desc">TIP: 검색을 활용하여 쉽게 찾아보세요.</p>
						</div>
						<div class="col-md-3">
							<img src="assets/img/elements/d.jpg" alt="" class="img-fluid">
						</div>
					</div>
				</div>
				<div class="section-top-border text-left">
					<h3 class="mb-30">STEP 2 일정에 담기📃</h3>
					<div class="row">
						<div class="col-md-9">
							<p class="text-left desc">가고싶은 장소 또는 관심있는 장소 이신가요?</p>
							<p class="text-left desc"> 일정에 담아 계획을 세워보세요.</p>
						</div>
						<div class="col-md-3">
							<img src="assets/img/elements/d.jpg" alt="" class="img-fluid">
						</div>
					</div>
				</div>
				<div class="section-top-border text-left">
					<h3 class="mb-30">STEP 3 플래너 작성하기✏</h3>
					<div class="row">
						<div class="col-md-9">
							<p class="text-left desc">일정에 담은 장소들을 지도에서 확인해보세요</p>
							<p class="text-left desc">인근의 맛집 명소들을 한눈에 확인하실수 있습니다.</p>
						</div>
						<div class="col-md-3">
							<img src="assets/img/elements/d.jpg" alt="" class="img-fluid">
						</div>
					</div>
				</div>
				<div class="section-top-border text-left">
					<h3 class="mb-30">STEP 4 여행하기✈</h3>
					<div class="row">
						<div class="col-md-9">
							<p class="text-left desc">완성된 일정을 친구들과 공유해보세요!</p>
							<p class="text-left desc">길찾기와 메모만 잘 활용해도 여행 준비 끝!</p>
						</div>
						<div class="col-md-3">
							<img src="assets/img/elements/d.jpg" alt="" class="img-fluid">
						</div>
					</div>
				</div>
                </div>
            </div>
        </div>
        <!-- Popular Locations End -->

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
                                  <a href="index.html"><img src="assets/img/logo/logo_b.png" alt=""></a>
                                </div>
                               </div>
							 </div>
							</div>
						<div class="col-xl-2 col-lg-2 col-md-4 col-sm-6">
							<div class="single-footer-caption mb-50">
								<div class="footer-tittle">
									<h4>관리자정보</h4>
									<ul>
										<li><a href="#">이지훈</a></li>
										<li><a href="#">허유민</a></li>
										<li><a href="#">박종범</a></li>
										<li><a href="#">이민용</a></li>
										<li><a href="#">권성환</a></li>
									</ul>
								</div>
							</div>
						</div>
						<div class="col-xl-2 col-lg-3 col-md-4 col-sm-6">
							<div class="single-footer-caption mb-50">
								<div class="footer-tittle">
									<h4>고객센터</h4>
									<ul>
										<li><a href="#">문의하기</a></li>
										<li><a href="#">이용약관</a></li>
										<li><a href="#">개인정보 처리방침</a></li>
										<li><a href="#">회사주소</a></li>
									</ul>
								</div>
							</div>
						</div>
						<div class="col-xl-3 col-lg-3 col-md-4 col-sm-6">
							<div class="single-footer-caption mb-50">
								<div class="footer-tittle">
									<h4>Download App</h4>
									<ul>
										<li class="app-log"><a href="#"><img
												src="assets/img/gallery/app-logo.png" alt=""></a></li>
										<li><a href="#"><img
												src="assets/img/gallery/app-logo2.png" alt=""></a></li>
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
									Copyright &copy;
									<script>
										document
												.write(new Date().getFullYear());
									</script>
									Copyright©Odga.com Organization, All rights reserved.
									<i class="fa fa-heart" aria-hidden="true"></i><a
										href="https://odga.com" target="_blank">Odga.com</a>
									<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
								</p>
							</div>
						</div>
						<div class="col-xl-3 col-lg-4">
							<!-- Footer Social -->
							<div class="footer-social f-right">
								<a href="#"><i class="fab fa-facebook-f"></i></a> <a href="#"><i
									class="fab fa-twitter"></i></a> <a href="#"><i
									class="fas fa-globe"></i></a> <a href="#"><i
									class="fab fa-instagram"></i></a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		</footer>
		<!-- Footer End-->
    <!-- Scroll Up -->
    <div id="back-top" >
        <a title="Go to Top" href="#"> <i class="fas fa-level-up-alt"></i></a>
    </div>


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