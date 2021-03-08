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
		<link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.ico">

		<!-- CSS here -->
            <link rel="stylesheet" href="assets/css/bootstrap.min.css">
            <link rel="stylesheet" href="assets/css/owl.carousel.min.css">
            <link rel="stylesheet" href="assets/css/slicknav.css">
            <link rel="stylesheet" href="assets/css/flaticon.css">
            <link rel="stylesheet" href="assets/css/price_rangs.css">
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
    <!-- Preloader End -->
    <header>
        <!-- Header Start -->
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
        <div class="hero-area3 hero-overly2 d-flex align-items-center ">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-xl-8 col-lg-9">
                        <div class="hero-cap text-center pt-50 pb-20">
                            <h2>국내여행지</h2>
                        </div>
                        <!--Hero form -->
                        <form action="#" class="search-box search-box2">
                            <div class="input-form">
                                <input type="text" placeholder="무엇을 찾으세요?">
                            </div>
                            <div class="select-form">
                                <div class="select-itms">
                                    <select name="select" id="select1">
                                        <option value="">지역 선택</option>
                                        <option value="">서울/경기도</option>
                                        <option value="">강원도</option>
                                        <option value="">충청도</option>
										<option value="">경상도</option>
										<option value="">전라도</option>
										<option value="">제주도</option>
                                    </select>
                                </div>
                            </div>
                            <!-- Search box -->
                            <div class="search-form">
                                <a href="#">Search</a>
                            </div>	
                        </form>	
                    </div>
                </div>
            </div>
        </div>
        <!--Hero End -->
        <!-- listing Area Start -->
        <div class="listing-area pt-120 pb-120">
            <div class="container">
                <div class="row">
                    <!-- Left content -->
                    <div class="col-xl-4 col-lg-4 col-md-6">
                        <div class="row">
                            <div class="col-12">
                                    <div class="small-section-tittle2 mb-45">
                                    <h4>Advanced Filter</h4>
                                </div>
                            </div>
                        </div>
                        <!-- Job Category Listing start -->
                        <div class="category-listing mb-50">
                            <!-- single one -->
                            <div class="single-listing">
                                <!-- input -->
                                <div class="input-form">
                                    <input type="text" placeholder="무엇을 찾으세요?">
                                </div>
                                <!-- Select job items start -->
                                <div class="select-job-items1">
                                    <select name="select1">
                                        <option value="">지역 선택</option>
                                        <option value="">서울/경기도</option>
                                        <option value="">강원도</option>
                                        <option value="">충청도</option>
										<option value="">경상도</option>
										<option value="">전라도</option>
										<option value="">제주도</option>
                                    </select>
                                </div>
                                <div class="select-job-items1">
                                    <select name="select1">
                                        <option value="">지역 선택</option>
                                        <option value="">서울/경기도</option>
                                        <option value="">강원도</option>
                                        <option value="">충청도</option>
										<option value="">경상도</option>
										<option value="">전라도</option>
										<option value="">제주도</option>
                                    </select>
                                </div>
                                <div class="select-job-items2">
                                    <select name="select2">
                                        <option value="">기간 선택</option>
                                        <option value="">무박</option>
                                        <option value="">1박2일</option>
                                        <option value="">2박3일</option>
                                        <option value="">3박4일</option>
                                        <option value="">4일 이상</option>
                                    </select>
                                </div>
                                <!--  Select job items End-->
                                <!-- select-Categories start -->
                                <div class="select-Categories pt-195 pb-20">
                                    <label class="container">#커플
                                        <input type="checkbox" >
                                        <span class="checkmark"></span>
                                    </label>
                                    <label class="container">#가족
                                        <input type="checkbox" checked="checked active">
                                        <span class="checkmark"></span>
                                    </label>
                                    <label class="container">#MD추천
                                        <input type="checkbox" checked="checked active">
                                        <span class="checkmark"></span>
                                    </label>
                                    <label class="container">#섬
                                        <input type="checkbox" checked="checked active">
                                        <span class="checkmark"></span>
                                    </label>
                                    <label class="container">#감성
                                        <input type="checkbox" checked="checked active">
                                        <span class="checkmark"></span>
                                    </label>
                                    <label class="container">#바다
                                        <input type="checkbox" checked="checked active">
                                        <span class="checkmark"></span>
                                    </label>
                                    <label class="container">#등산
                                        <input type="checkbox" checked="checked active">
                                        <span class="checkmark"></span>
                                    </label>
                                    <label class="container">#무박
                                        <input type="checkbox" checked="checked active">
                                        <span class="checkmark"></span>
                                    </label>
                                </div>
                                <!-- select-Categories End -->
                                <!-- Select job items start
                                <div class="select-job-items2">
                                    <select name="select2">
                                        <option value="">Area (km)</option>
                                        <option value="">Dhaka- 1km</option>
                                        <option value="">Dinajpur- 2km</option>
                                        <option value="">Chittagong - 3km</option>
                                    </select>
                                </div>
                                <!--  Select job items End-->
                            </div>

                            <div class="single-listing">
                                <!-- Range Slider Start 
                                <aside class="left_widgets p_filter_widgets price_rangs_aside sidebar_box_shadow">
                                    <div class="small-section-tittle2">
                                        <h4>Price range</h4>
                                    </div>
                                    <div class="widgets_inner">
                                        <div class="range_item"> -->
                                            <!-- <div id="slider-range"></div> -->
                                            <!--<input type="text" class="js-range-slider" value="" />
                                            <div class="d-flex align-items-center">
                                                <div class="price_text">
                                                    <p>Price :</p>
                                                </div>
                                                <div class="price_value d-flex justify-content-center">
                                                    <input type="text" class="js-input-from" id="amount" readonly />
                                                    <span>to</span>
                                                    <input type="text" class="js-input-to" id="amount" readonly />
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </aside>-->
                              <!-- Range Slider End -->
                                 <a href="#" class="btn list-btn mt-20">검색!</a>
                                 <a href="#" class="btn list-btn mt-20">Reset</a>
                            </div>
                        </div>
                        <!-- Job Category Listing End -->
                    </div>
                    <!-- Right content -->
                    <div class="col-xl-8 col-lg-8 col-md-6">
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="count mb-35">
                                    <span>5432 Listings are available</span>
                                </div>
                            </div>
                        </div>
                        <!-- listing Details Start-->
                        <div class="listing-details-area">
                            <div class="container">
                                <div class="row">
                                    <div class="col-lg-6">
                                        <div class="single-listing mb-30">
                                            <div class="list-img">
                                                <img src="assets/img/gallery/location_ttook.jpg" alt="">
                                                <!-- <span>Open</span> -->
                                            </div>
                                            <div class="list-caption">
                                                <span>Open</span>
                                                <h3><a href="listing_details.html">뚝섬한강공원</a></h3>
                                                <p>지금이 여름이라면 열대야를 날려버릴 가벼운 피서지<br/>#무박</p>
                                                <div class="list-footer">
                                                    <ul>
                                                        <li>서울특별시 광진구 자양동 704-1</li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-6 ">
                                        <div class="single-listing mb-30">
                                            <div class="list-img">
                                                <img src="assets/img/gallery/location_yang.jpg" alt="">
                                                <!-- <span>Open</span> -->
                                            </div>
                                            <div class="list-caption">
                                                <span>Open</span>
                                                 <h3><a href="listing_details2.html">세미원과 두물머리</a></h3>
                                                <p>연꽃, 수련, 창포 등을 만나보고 열수주교를 통해 두물머리까지<br/>#가족</p>
                                                <div class="list-footer">
                                                    <ul>
                                                        <li>경기도 양평군 양서면 양수로 93</li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-6 ">
                                        <div class="single-listing mb-30">
                                            <div class="list-img">
                                                <img src="assets/img/gallery/location_purple.jpg" alt="">
                                                <!-- <span>Open</span> -->
                                            </div>
                                            <div class="list-caption">
                                                <span>Open</span>
                                                 <h3><a href="listing_details.html">반월도 박지도</a></h3>
                                                <p>여기도 보라! 저기도 보라! 퍼플섬의 오묘한 감성<br/>#감성</p>
                                                <div class="list-footer">
                                                    <ul>
                                                        <li>전라남도 신안군 안좌면 반월도</li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-6 ">
                                        <div class="single-listing mb-30">
                                            <div class="list-img">
                                                <img src="assets/img/gallery/location_beach.jpg" alt="">
                                                <!-- <span>Open</span> -->
                                            </div>
                                            <div class="list-caption">
                                                <span>Open</span>
                                                 <h3><a href="listing_details.html">서피비치</a></h3>
                                                <p>캘리포니아가 아닌 정말 강원도? 외국감성의 끝장 해변<br/>#바다</p>
                                                <div class="list-footer">
                                                    <ul>
                                                        <li>강원도 양양군 현북면 하조대해안길 119</li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-6 ">
                                        <div class="single-listing mb-30">
                                            <div class="list-img">
                                                <img src="assets/img/gallery/location_gal.jpg" alt="">
                                                <!-- <span>Open</span> -->
                                            </div>
                                            <div class="list-caption">
                                                <span>Open</span>
                                                 <h3><a href="listing_details.html">영남알프스</a></h3>
                                                <p>9봉우리의 등산코스와 간월산의 가을을 옮겨놓은 흐드러진 갈대밭의 미친 장관<br/>#등산</p>
                                                <div class="list-footer">
                                                    <ul>
                                                        <li>울산광역시 울주군 상북면 알프스온천5길 103-8</li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-6 ">
                                        <div class="single-listing mb-30">
                                            <div class="list-img">
                                                <img src="assets/img/gallery/location_first.jpg" alt="">
                                                <!-- <span>Open</span> -->
                                            </div>
                                            <div class="list-caption">
                                                <span>Open</span>
                                                 <h3><a href="listing_details.html">퍼스트가든</a></h3>
                                                <p>23가지 색다른 테마 아도니스 정원과 수많은 문화시설<br/>#커플</p>
                                                <div class="list-footer">
                                                    <ul>
                                                        <li>경기도 파주시 탑삭골길 260</li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-6 ">
                                        <div class="single-listing mb-30">
                                            <div class="list-img">
                                                <img src="assets/img/gallery/location_bunae.jpg" alt="">
                                                <!-- <span>Open</span> -->
                                            </div>
                                            <div class="list-caption">
                                                <span>Open</span>
                                                 <h3><a href="listing_details.html">장림포구</a></h3>
                                                <p>부산의 이탈리아<br/>배네치아? 부네치아!</p>
                                                <div class="list-footer">
                                                    <ul>
                                                        <li>부산광역시 사하구 장림로93번길 72</li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-6 ">
                                        <div class="single-listing mb-30">
                                            <div class="list-img">
                                                <img src="assets/img/gallery/location_bada.jpg" alt="">
                                                <!-- <span>Open</span> -->
                                            </div>
                                            <div class="list-caption">
                                                <span>Open</span>
                                                 <h3><a href="listing_details.html">대천해수욕장</a></h3>
                                                <p>여름 머드축제부터 시원한 해수욕장 그리고 바다가 한눈에 보이는 타워전망대는 놓치지말기!<br/>#바다 #가족</p>
                                                <div class="list-footer">
                                                    <ul>
                                                        <li>충남 보령시 머드로 123</li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- listing Details End -->
                        <!--Pagination Start  -->
                        <div class="pagination-area pt-70 text-center">
                            <div class="container">
                                <div class="row">
                                    <div class="col-xl-12">
                                        <div class="single-wrap d-flex justify-content-center">
                                            <nav aria-label="Page navigation example">
                                                <ul class="pagination justify-content-start">
                                                    <li class="page-item active"><a class="page-link" href="#">01</a></li>
                                                    <li class="page-item"><a class="page-link" href="#">02</a></li>
                                                    <li class="page-item"><a class="page-link" href="#">03</a></li>
                                                <li class="page-item"><a class="page-link" href="#"><span class="ti-angle-right"></span></a></li>
                                                </ul>
                                            </nav>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--Pagination End  -->
                    </div>
                </div>
            </div>
        </div>
        <!-- listing-area Area End -->

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
        <script src="./assets/js/price-range.js"></script>
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




		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
		<script src="//work6.kr/plugin/plugin_link/19"></script>
        
    </body>
</html>