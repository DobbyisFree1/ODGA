<%@ page contentType="text/html; charset=utf-8" import="odga.bt.domain.Review" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!doctype html>
<html class="no-js" lang="zxx">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Odga.com</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.ico">

    <!-- CSS here -->
        <link rel="stylesheet" href="assets/css/bootstrap.min.css">
        <link rel="stylesheet" href="assets/css/owl.carousel.min.css">
        <link rel="stylesheet" href="assets/css/slicknav.css">
        <link rel="stylesheet" href="assets/css/animate.min.css">
        <link rel="stylesheet" href="assets/css/magnific-popup.css">
        <link rel="stylesheet" href="assets/css/fontawesome-all.min.css">
        <link rel="stylesheet" href="assets/css/themify-icons.css">
        <link rel="stylesheet" href="assets/css/themify-icons.css">
        <link rel="stylesheet" href="assets/css/slick.css">
        <link rel="stylesheet" href="assets/css/nice-select.css">
        <link rel="stylesheet" href="assets/css/style.css">
        <link rel="stylesheet" href="assets/css/responsive.css">
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
                            <div class="col-xl-2 col-lg-2 col-md-1">
                                <div class="logo">
                                
                                    <a href="index.html"><img src="assets/img/logo/logo_b.png" alt="" style="max-width: 170px;"></a>
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
											<li class="add-list"><a href="planner?m_id=${LOGINUSER.m_id}"><i class="ti-plus"></i>나의 여행 만들기</a></li>
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
        <!-- Header End -->
    </header>
    <main>

        <!-- Hero Start-->
        <div class="hero-area2  slider-height2 hero-overly2 d-flex align-items-center">
            <div class="container">
                <div class="row">
                    <div class="col-xl-12">
                        <div class="hero-cap text-center pt-50">
                            <h2>여행후기</h2>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--Hero End -->
        <!--================Blog Area =================-->
        <section class="blog_area section-padding">
            <div class="container">
                <div class="row">
                    <div class="col-lg-4">
                        <div class="blog_right_sidebar">
                            <aside class="single_sidebar_widget search_widget">
                                <div class="select-job-items1">
                                <form name="S" method="post" action="search">
                                    <select name="searchOption" id="searchOption">
                                    	<option value="all">전체에서 찾기</option>
                                        <option value="b_subject">제목으로 찾기</option>
                                        <option value="b_writer">아이디로 찾기</option>
                                        <option value="b_content">내용으로 찾기</option>
                                    </select>	               
	                                    <div class="form-group">
	                                        <div class="input-group mb-3">
	                                            <input type="text" class="form-control"  id="keyword" name="keyword" placeholder='Search Keyword'
	                                                onfocus="this.placeholder = ''"
	                                                onblur="this.placeholder = 'Search Keyword'">
	                                            <div class="input-group-append">
	                                                <button class="btns" id="searchOk1" type="button"><i class="ti-search"></i></button>
	                                            </div>
	                                        </div>
	                                    </div>
	                                    <button class="button rounded-0 primary-bg text-white w-100 btn_1 boxed-btn"
	                                        type="submit">Search</button>
	                                </form>
                                </div>
                            </aside>
                            <aside class="single_sidebar_widget search_widget">
						<a href="write" class="genric-btn danger w-100 mb-10" style="line-height: 50px">새 글 쓰기</a>
							</aside>
		                     <aside class="single_sidebar_widget post_category_widget">
		                        <h4 class="widget_title">카테고리</h4>
		                        <ul class="list cat-list">
		                           <li>
		                              <a href="catgo?catgo=가족여행" class="d-flex">
		                                 <p>가족여행</p>
		                                 &nbsp;
		                                 <p style="letter-spacing: 2px;">(${reviewSidebar.family})</p>
		                              </a>
		                           </li>
		                           <li>
		                              <a href="catgo?catgo=혼자여행" class="d-flex">
		                                 <p>혼자여행</p>
		                                 &nbsp;
		                                 <p style="letter-spacing: 2px;">(${reviewSidebar.alone})</p>
		                              </a>
		                           </li>
		                           <li>
		                              <a href="catgo?catgo=커플여행" class="d-flex">
		                                 <p>커플여행</p>
		                                 &nbsp;
		                                 <p style="letter-spacing: 2px;">(${reviewSidebar.couple})</p>
		                              </a>
		                           </li>
		                           <li>
		                              <a href="catgo?catgo=우정여행" class="d-flex">
		                                 <p>우정여행</p>
		                                 &nbsp;
		                                 <p style="letter-spacing: 2px;">(${reviewSidebar.friend})</p>
		                              </a>
		                           </li>
		                           <li>
		                              <a href="catgo?catgo=패키지여행" class="d-flex">
		                                 <p>패키지여행</p>
		                                 &nbsp;
		                                 <p style="letter-spacing: 2px;">(${reviewSidebar.pack})</p>
		                              </a>
		                           </li>
		                        </ul>
		                     </aside>
		                     <aside class="single_sidebar_widget popular_post_widget">
		                        <h3 class="widget_title">최근 후기</h3>
		                        <c:forEach items="${reviewSidebar.recently}" end="4" var="recently">
		                        <div class="media post_item" style="width: auto; height: auto; overflow: hidden">
	 		                       <!-- <img src="assets/img/blog/single_blog_6.png" alt="post"> -->
		                           <div style="width: 80px; height: 80px;">
		                         		<img src="assets/img/blog/single_blog_6.png" style="width: 80px; height: 80px;" alt="post">
		                           </div>
			                           <div class="media-body">
			                              <a href="blog_details.html">
			                                 <h3>${recently.b_subject}</h3>
			                              </a>
			                              <p>${recently.b_rdate}</p>
			                           </div>
		                        </div>
		                        </c:forEach>
		                       
		                        <!-- <div class="media post_item">
		                           <img src="assets/img/post/post_2.png" alt="post">
		                           <div class="media-body">
		                              <a href="blog_details.html">
		                                 <h3>The Amazing Hubble</h3>
		                              </a>
		                              <p>02 Hours ago</p>
		                           </div>
		                        </div> -->
		                     </aside>
                        </div>
                    </div>
                    <div class="col-lg-8 mb-5 mb-lg-0">
                        <div class="blog_left_sidebar">
							<c:if test="${fn:length(review)==0 && (reviewSearch.count == 0 || reviewCatgo.count==0)}">
							     <div class="blog_details"><h2>게시글이 없습니다.</h2></div>
							</c:if>						
							<c:forEach items="${review}" var="review">
	                            <article class="blog_item">
	                            <a href="review_details.do?b_id=${review.b_id}&m_id=${LOGINUSER.m_id}">
	                                <div class="blog_item_img">
	                                    <img class="card-img rounded-0" src="resources/upload/${review.b_img}" style="height:500px;width:770px;" alt="">
	                                    <a class="blog_item_date">
	                                        <h3>${review.b_rdate}</h3>
	                                    </a>
	                                </div>
	                                <div class="blog_details">
	                                    <a class="d-inline-block" href="review_details?b_id=${review.b_id}&m_id=${LOGINUSER.m_id}">
	                                        <h2>${review.b_subject}</h2>
	                                    </a>
	                                    <p>${review.b_catgo}</p>
	                                    <ul class="blog-info-link">
	                                        <li><i class="fa fa-user"></i> ${review.b_writer}</li>
                                        	<li><i class="fa fa-comments"></i> 03 Comments</li>
	                                        <li><i class="fa fa-comments"></i> ${review.b_like} Likes</li>
	                                    </ul>
	                                </div>
	                                </a>
	                            </article>
							</c:forEach>
							<!-- 검색리스트 -->
							<c:choose>
								<c:when test="${reviewSearch.count == 0}">
								    <div class="blog_details"><h2>검색 결과가  없습니다.</h2></div>
								</c:when>
								<c:when test="${reviewSearch.count >= 1}">
									 <div class="blog_details"><h2>${reviewSearch.count}개의 검색 결과가 있습니다.</h2></div>									   
									<c:forEach items="${reviewSearch.list}" var="search">
			                            <article class="blog_item">
			                            <a href="review_details.do?b_id=${search.b_id}">
			                                <div class="blog_item_img">
			                                    <img class="card-img rounded-0" src="assets/img/blog/single_blog_6.png" alt="">
			                                    <a class="blog_item_date">
			                                        <h3>${search.b_rdate}</h3>
			                                    </a>
			                                </div>			
			                                <div class="blog_details">
			                                    <a class="d-inline-block" href="review_details.do?b_id=${search.b_id}&m_id=${LOGINUSER.m_id}">
			                                        <h2>${search.b_subject}</h2>
			                                    </a>
			                                    <p>${search.b_catgo}</p>
			                                    <ul class="blog-info-link">
			                                        <li><i class="fa fa-user"></i> ${search.b_writer}</li>
		                                        	<li><i class="fa fa-comments"></i> 03 Comments</li>
			                                        <li><i class="fa fa-comments"></i> ${search.b_like} Likes</li>
			                                    </ul>
			                                </div>
			                                </a>
			                            </article>
									</c:forEach>
								</c:when>
							</c:choose>
							<!--카테고리리스트 -->
							<c:choose>
								<c:when test="${reviewCatgo.count == 0}">
								    <div class="blog_details"><h2>해당 결과가  없습니다.</h2></div>
								</c:when>
								<c:when test="${reviewCatgo.count >=1}">
									 <div class="blog_details"><h2>${reviewCatgo.count}개의 후기가 있습니다.</h2></div>									   
									<c:forEach items="${reviewCatgo.list}" var="cat">
			                            <article class="blog_item">
			                            <a href="review_details.do?b_id=${cat.b_id}">
			                                <div class="blog_item_img">
			                                    <img class="card-img rounded-0" src="assets/img/blog/single_blog_6.png" alt="">
			                                    <a class="blog_item_date">
			                                        <h3>${cat.b_rdate}</h3>
			                                    </a>
			                                </div>			
			                                <div class="blog_details">
			                                    <a class="d-inline-block" href="review_details.do?b_id=${cat.b_id}&m_id=${LOGINUSER.m_id}">
			                                        <h2>${cat.b_subject}</h2>
			                                    </a>
			                                    <p>${cat.b_catgo}</p>
			                                    <ul class="blog-info-link">
			                                        <li><i class="fa fa-user"></i> ${cat.b_writer}</li>
		                                        	<li><i class="fa fa-comments"></i> 03 Comments</li>
			                                        <li><i class="fa fa-comments"></i> ${cat.b_like} Likes</li>
			                                    </ul>
			                                </div>
			                                </a>
			                            </article>
									</c:forEach>
								</c:when>
							</c:choose>

                            <nav class="blog-pagination justify-content-center d-flex">
                                <ul class="pagination">
                                    <li class="page-item">
                                        <a href="#" class="page-link" aria-label="Previous">
                                            <i class="ti-angle-left"></i>
                                        </a>
                                    </li>
                                    <li class="page-item">
                                        <a href="#" class="page-link">1</a>
                                    </li>
                                    <li class="page-item active">
                                        <a href="#" class="page-link">2</a>
                                    </li>
                                    <li class="page-item">
                                        <a href="#" class="page-link" aria-label="Next">
                                            <i class="ti-angle-right"></i>
                                        </a>
                                    </li>
                                </ul>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
        </section>

    </main>
    <footer>
        <!-- Footer Start-->
        <div class="footer-area">
            <div class="container">
               <div class="footer-top footer-padding">
                    <div class="row justify-content-between">
                        <div class="col-xl-3 col-lg-4 col-md-4 col-sm-6">
                            <div class="single-footer-caption mb-50">
                                <div class="single-footer-caption mb-30">
                                    <!-- logo -->
                                    <div class="footer-logo">
                                        <a href="index.html"><img src="assets/img/logo/logo2_footer.png" alt=""></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-2 col-lg-2 col-md-4 col-sm-6">
                            <div class="single-footer-caption mb-50">
                                <div class="footer-tittle">
                                    <h4>All packages</h4>
                                    <ul>
                                        <li><a href="#">Package-1</a></li>
                                        <li><a href="#">Package-2</a></li>
                                        <li><a href="#">Package-3</a></li>
                                        <li><a href="#">Custome</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-2 col-lg-3 col-md-4 col-sm-6">
                            <div class="single-footer-caption mb-50">
                                <div class="footer-tittle">
                                    <h4>Quick Link</h4>
                                    <ul>
                                        <li><a href="#">Contact Us</a></li>
                                        <li><a href="#">About Us</a></li>
                                        <li><a href="#">News & Articles</a></li>
                                        <li><a href="#">Privacy Policy</a></li>     
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-3 col-lg-3 col-md-4 col-sm-6">
                            <div class="single-footer-caption mb-50">
                                <div class="footer-tittle">
                                    <h4>+1 514 648 256</h4>
                                    <ul>
                                        <li><a href="#">youremail@gmail.com</a></li>
                                    </ul>
                                    <p>123 East 26th Street, Fifth Floor, New York, NY 10011</p>
                                </div>
                            </div>
                        </div>
                    </div>
               </div>
                <div class="footer-bottom">
                    <div class="row d-flex justify-content-between align-items-center">
                        <div class="col-xl-9 col-lg-9 ">
                            <div class="footer-copy-right">
                                <p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
  Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
  <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
                            </div>
                        </div>
                        <div class="col-xl-3 col-lg-3">
                            <!-- Footer Social -->
                            <div class="footer-social f-right">
                                <a href="#"><i class="fab fa-facebook-f"></i></a>
                                <a href="#"><i class="fab fa-twitter"></i></a>
                                <a href="#"><i class="fas fa-globe"></i></a>
                                <a href="#"><i class="fab fa-instagram"></i></a>
                            </div>
                        </div>
                    </div>
               </div>
            </div>
        </div>
        <!-- Footer End-->
    </footer>
    <!-- Scroll Up -->
    <div id="back-top" >
        <a title="Go to Top" href="#"> <i class="fas fa-level-up-alt"></i></a>
    </div>
    	<script src="./assets/js/vendor/jquery-1.12.4.min.js"></script>
    <script src="https://ajax.googlepis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
<!-- JS here -->
	
		<!-- All JS Custom Plugins Link Here here -->
        <script src="./assets/js/vendor/modernizr-3.5.0.min.js"></script>
		<!-- Jquery, Popper, Bootstrap -->

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
		
		<!-- Nice-select, sticky -->
        <script src="./assets/js/jquery.nice-select.min.js"></script>
		<script src="./assets/js/jquery.sticky.js"></script>
        <script src="./assets/js/jquery.magnific-popup.js"></script>

        <!-- contact js -->
        <script src="./assets/js/contact.js"></script>
        <script src="./assets/js/jquery.form.js"></script>
        <script src="./assets/js/jquery.validate.min.js"></script>
        <script src="./assets/js/mail-script.js"></script>
        <script src="./assets/js/jquery.ajaxchimp.min.js"></script>
        
		<!-- Jquery Plugins, main Jquery -->	
        <script src="./assets/js/plugins.js"></script>
        <script src="./assets/js/main.js"></script>
        
        <script language="javascript">
	       function f(select){
	           //var el = document.getElementById("psId");
	           var ps = select.value;
	           //alert("ps : " + ps);
	           location.href="review.do?ps="+ps;
	       }
    	</script>
    	
    	
    	
        
</body>
</html>