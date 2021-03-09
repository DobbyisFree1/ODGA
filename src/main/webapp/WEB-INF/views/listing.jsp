<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
                                   <a href="index.do"><img src="assets/img/logo/logo_b.png" style="position:relative; left:45px; max-width: 170px;"></a>
                                </div>
                            </div>
                            <div class="col-xl-10 col-lg-10 col-md-8">
                                <!-- Main-menu -->
                                <div class="main-menu f-right d-none d-lg-block">
                                    <nav>
										<ul id="navigation">
											<li><a href="listing.do">국내여행지</a></li>
											<li><a href="#">커뮤니티</a>
												<ul class="submenu">
													<li><a href="review.do">여행후기</a></li>
													<li><a href="support.do">문의하기</a></li>
												</ul>
											</li>
											<li><a href="use.do">이용방법</a></li>
											<li><a href="https://www.agoda.com/">호텔예약</a></li>
											<li class="add-list"><a onclick="goPlanner()"><i class="ti-plus"></i>나의 여행 만들기</a></li>
											<li class="login">
										<c:choose>
											<c:when test="${empty LOGINUSER}">
												<a href="login.do"><i class="ti-user"></i>로그인 / 회원가입</a>
											</c:when>
										<c:otherwise>
											<a href="login.do"><i class="ti-user"></i> 로그아웃</a>
											<li><a href="member.do"><i class="ti-user"></i>회원정보</a></li>
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
                        
                        <!--Hero Area 검색  -->
                        <form action="listing.do" class="search-box search-box2">
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
                            <!-- Search box -->
                            <div class="search-form">
                                <button type="submit">Search</button>
                            </div>
                        </form>	
                    </div>
                </div>
            </div>
        </div>
        <!--Hero Area 검색 -->
        
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
                        <!--  Filtering start -->
                        <div class="category-listing mb-50">
                            <!-- single one -->
                            <div class="single-listing">
                                <!-- input -->
                                <form action="listing.do">
                                <div class="input-form">
                                    <input type="text" placeholder="여행지를 찾아보세요." name="keyword" required="required" />
                                </div>           
                                <!-- 관광지검색 Filtering  -->
                                <div class="select-job-items1">
 									 <select name="catgo">
                                        <option value="title">관광지</option>
                                        <option value="addr1">주소</option>					
                                    </select>
                                </div>
                            </div>
                            <div class="single-listing">
                                 <button class="btn list-btn mt-20" type="submit">Search</button>
                            </div>
                          </form>
                        </div>
                        <!-- 관광지검색 Filtering End -->
                    </div>
                     
                    <!-- 국내 관광지 리스트 Form -->
                    <div class="col-xl-8 col-lg-8 col-md-6">
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="count mb-35">
                                <c:choose>
                                	<c:when test="${!empty listResult}">
                                	<span>${listResult.totalCount} Listings are available</span>
                                	</c:when> 	
                                	<c:otherwise>
                                		<span style="margin-left:240px;font-size:18px;margin-bottom:50px"> 제공되는 주변 관광지가 없습니다.</span>
                                	</c:otherwise>
                                </c:choose>
                                </div>
                            </div>
                        </div>
                        
                        <!-- 국내 관광지 리스트  시작 -->
                        <div class="listing-details-area">
                            <div class="container">
                                <div class="row">
                                <c:forEach items="${listResult.list}" var="touritems">
                                    <div class="col-lg-6">
                                        <div class="single-listing mb-30">
                                            <div class="list-img"><img src="${touritems.firstimage}" alt="" ></div>
                                            <div class="list-caption">
                                                <span>Open</span>
                                                <h3><a href="listing_details.do?title=${touritems.title}">${touritems.title}</a></h3>
                                                <p>${touritems.addr1}</p>
                                                <div class="list-footer">
                                                    <ul>
                                                        <li></li>
                                                        <li>${touritems.tel}</li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
								</c:forEach>
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
                        
                <!-- 이전 페이지 START-->   
                <c:choose>
 					<c:when test="${keyword!=null}">
						<c:choose>
	                      <c:when test="${listResult.cp eq 1}">
	                        <li class="page-item disabled">
	                         <a class="page-link" href="listing.do?cp=${listResult.prevPage}&keyword=${keyword}&catgo=${catgo}"><span class="ti-angle-left"></span></a>
	                         </li>
	                      </c:when>
	                     <c:otherwise>
	 						<li class="page-item">
	 						<a class="page-link" href="listing.do?cp=${listResult.prevPage}&keyword=${keyword}&catgo=${catgo}"><span class="ti-angle-left"></span></a>
	 						</li>
	 					</c:otherwise>
	 					</c:choose>
	 				</c:when>
	 			<c:otherwise>
	 					<c:choose>
	                      <c:when test="${listResult.cp eq 1}">
	                        <li class="page-item disabled">
	                         <a class="page-link" href="listing.do?cp=${listResult.prevPage}"><span class="ti-angle-left"></span></a>
	                         </li>
	                      </c:when>
	                     <c:otherwise>
	 						<li class="page-item">
	 						<a class="page-link" href="listing.do?cp=${listResult.prevPage}"><span class="ti-angle-left"></span></a>
	 						</li>
	 					</c:otherwise>
	 					</c:choose>
	 			</c:otherwise>
	 			</c:choose>
	 			<!-- 이전 페이지 END --> 	
	 			
	 				
 			<c:choose>
 				<c:when test="${keyword!=null}">
                      <c:forEach begin="${listResult.startPage}" end="${listResult.endPage}" var="i">
                         <li class="page-item active"><a class="page-link" href="listing.do?cp=${i}&keyword=${keyword}&catgo=${catgo}">
                          <c:choose>
		   			    <c:when test="${i==listResult.cp}">
		                	<span style="color:red;font-weight:bold">${i}</span>
		                </c:when>
		                <c:otherwise>
		                    ${i}
		                </c:otherwise>
						</c:choose>            
                        </a>
                        </li>
                      </c:forEach>
                </c:when>
            <c:otherwise>
            		    <c:forEach begin="${listResult.startPage}" end="${listResult.endPage}" var="i">
                         <li class="page-item active"><a class="page-link" href="listing.do?cp=${i}">
                          <c:choose>
		   			    <c:when test="${i==listResult.cp}">
		                	<span style="color:red;font-weight:bold">${i}</span>
		                </c:when>
		                <c:otherwise>
		                    ${i}
		                </c:otherwise>
						</c:choose>            
                        </a>
                        </li>
                      </c:forEach>
            </c:otherwise>
            </c:choose>
                        
                        <!-- 다음 페이지 START -->
                        <c:choose>
 						<c:when test="${keyword!=null}">
	                        <li class="page-item"><a class="page-link" href="listing.do?cp=${listResult.nextPage}&keyword=${keyword}&catgo=${catgo}">
	                        <span class="ti-angle-right"></span></a></li>
                        </c:when>
                        <c:otherwise>
	                         <li class="page-item"><a class="page-link" href="listing.do?cp=${listResult.nextPage}">
	                         <span class="ti-angle-right"></span></a></li>
                        </c:otherwise>
                        </c:choose>
                         <!-- 다음 페이지 END -->
                        
                        </ul>
                    </nav>
                </div>
            </div>
        </div>
    </div>
</div>        
<!--Pagination End  -->
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
                                  <a href="index.do"><img src="assets/img/logo/logo_b.png" style="position:relative; left:45px; max-width: 170px;"></a>
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