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
   <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.ico">

  <!-- CSS here -->
      <link rel="stylesheet" href="assets/css/bootstrap.min.css">
      <link rel="stylesheet" href="assets/css/owl.carousel.min.css">
      <link rel="stylesheet" href="assets/css/slicknav.css">
      <link rel="stylesheet" href="assets/css/animate.min.css">
      <link rel="stylesheet" href="assets/css/magnific-popup.css">
      <link rel="stylesheet" href="assets/css/fontawesome-all.min.css">
      <link rel="stylesheet" href="assets/css/themify-icons.css">
      <link rel="stylesheet" href="assets/css/slick.css">
      <link rel="stylesheet" href="assets/css/nice-select.css">
      <link rel="stylesheet" href="assets/css/style.css">
</head>
<style>
.like{
	color:#dc3545;
}
</style>
<body>
<!--    Preloader Start-->
   <div id="preloader-active">
      <div class="preloader d-flex align-items-center justify-content-center">
            <div class="preloader-inner position-relative">
               <div class="preloader-circle"></div>
               <div class="preloader-img pere-text">
                  <img src="assets/img/logo/loder1_d.jpg" alt="" >
               </div>
            </div>
      </div>
   </div>
   <!--Preloader Start -->
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
													<li><a href="review">여행후기</a></li>
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
                           <h2>여행 후기</h2>
                     </div>
                  </div>
               </div>
         </div>
      </div>
      <c:set value="${reviewDetail.review}" var="review"/>
      <c:set value="${reviewDetail.reply}" var="reply"/>
      <c:set value="${reviewDetail.countReply}" var="countReply"/>
      <c:set value="${reviewDetail.writerInfo}" var="writerInfo"/>
      <!--Hero End -->
      <!--================Blog Area =================-->
	<div class="whole-wrap">
	<div class="container box_1170">
      <section class="blog_area single-post-area section-padding">
         <div class="container">
            <div class="row">
               <div class="col-lg-8 posts-list">
                  <div class="single-post">
                     <div class="feature-img">
                        <img class="img-fluid" src="resources/upload/${review.b_img}" style="height:500px;width:770px;" alt="">
                     </div>
                     <div class="blog_details">
                        <h2>${ review.b_subject }</h2>
                        <ul class="blog-info-link mt-3 mb-4">
                           <li><i class="fa fa-user"></i><a href="글쓴이 아이디로 검색되는 후기리스트 링크">${ review.b_writer }</a></li>
                           <li><i class="fa fa-comments"></i> ${countReply} Comments</li>
                           <li><i class="fa fa-comments" id="like2"> ${ review.b_like }</i>Likes</li>
                        </ul>
                        <p>${ review.b_content }</p>
                        
                     </div>
                  </div>
                  <div class="navigation-top">
                     <div class="d-sm-flex justify-content-between text-center">
                        <p class="like-info"><span class="align-middle" >
                        <c:choose>
	                        <c:when test="${likeflag==1}">
	                        	<li id="likeBtn" onclick="like(${review.b_id});setColor('likeBtn', '#dc3545')" class="fa fa-heart like" style="font-size:23px;margin-left: -9%;"></li></span>
	                        	<li id="like"style="margin-left: -7%;margin-right: -7%;">${review.b_like}</li>people like this</p>
	                        </c:when>
	                        <c:otherwise>
	                        	<li id="likeBtn" onclick="like(${review.b_id});setColor('likeBtn', '#10285d')" class="fa fa-heart" style="font-size:23px;margin-left: -9%;"></li></span>
	                        	<li id="like"style="margin-left: -7%;margin-right: -7%;">${review.b_like}</li>people like this</p>
	                       </c:otherwise>
                       </c:choose>
                        <div class="col-sm-4 text-center my-2 my-sm-0">
                           <!-- <p class="comment-count"><span class="align-middle"><i class="fa fa-comment"></i></span> 06 Comments</p> -->
                        </div>
                        <ul class="social-icons">                          
                           <li><a href="#"><i class="fab fa-twitter"></i></a></li>
                           <li><a href="#"><i class="fab fa-dribbble"></i></a></li>
                           <li><a href="#"><i class="fab fa-behance"></i></a></li>
                            <li><div class="fb-share-button" data-href="https://developers.facebook.com/docs/plugins/" data-layout="button" data-size="small"><a target="_blank" href="https://www.facebook.com/sharer/sharer.php?u=http://localhost:8080/review_details?b_id=${review.b_id}&amp;src=sdkpreparse" class="fb-xfbml-parse-ignore"></div></i></a></li>
                        </ul>
                     </div>
                     <div class="navigation-area">
                        <div class="row">
                           <div
                              class="col-lg-6 col-md-6 col-12 nav-left flex-row d-flex justify-content-start align-items-center">
                              <div class="thumb">
                                 <a href="review_details?b_id=${getOtherReview.reviewPre.b_id}&m_id=${LOGINUSER.m_id}">
                                    <img class="img-fluid" src="assets/img/post/preview.png" alt="">
                                 </a>
                              </div>
                              <div class="arrow">
                                 <a href="review_details?b_id=${getOtherReview.reviewPre.b_id}&m_id=${LOGINUSER.m_id}">
                                    <span class="lnr text-white ti-arrow-left"></span>
                                 </a>
                              </div>
                              <div class="detials">
                                 <p>Prev Post</p>
                                 <a href="review_details?b_id=${getOtherReview.reviewPre.b_id}&m_id=${LOGINUSER.m_id}">
                                    <c:if test="${empty getOtherReview.reviewPre}"><h4>이전글이 없습니다.</h4></c:if>
                                    <h4>${getOtherReview.reviewPre.b_subject}</h4>                                  
                                 </a>
                              </div>
                           </div>
                           <div
                              class="col-lg-6 col-md-6 col-12 nav-right flex-row d-flex justify-content-end align-items-center">
                              <div class="detials">
                                 <p>Next Post</p>
                                 <a href="review_details?b_id=${getOtherReview.reviewNext.b_id}&m_id=${LOGINUSER.m_id}">
                                    <c:if test="${empty getOtherReview.reviewNext}"><h4>다음글이 없습니다.</h4></c:if>
                                    <h4>${getOtherReview.reviewNext.b_subject}</h4>
                                 </a>
                              </div>
                              <div class="arrow">
                                 <a href="review_details?b_id=${getOtherReview.reviewNext.b_id}&m_id=${LOGINUSER.m_id}">
                                    <span class="lnr text-white ti-arrow-right"></span>
                                 </a>
                              </div>
                              <div class="thumb">
                                 <a href="review_details?b_id=${getOtherReview.reviewNext.b_id}&m_id=${LOGINUSER.m_id}">
                                    <img class="img-fluid" src="assets/img/post/next.png" alt="">
                                 </a>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
                  <div class="blog-author">
                     <div class="media align-items-center">
                        <img src="assets/img/blog/author.png" alt="">
                        <div class="media-body">
                           <a href="#">
                              <h4>${writerInfo.m_name}</h4>
                           </a>
                           <p>${writerInfo.m_about}</p>
                        </div>
                     </div>
                  </div>
                  <div class="comments-area" style="overflow: auto;height: 15%;">
                     <h4>${countReply} Comments</h4>
                     <c:if test="${empty reply}">
                     	<div class="comment-list">
	                        <div class="single-comment justify-content-between d-flex">
	                           <div class="user justify-content-between d-flex">                              
	                              <div class="desc">
	                                 <p class="comment">
	                                    	댓글이 하나도 없어요.
	                                 </p>                                
	                              </div>
	                           </div>
	                        </div>
	                     </div>
                     </c:if>
                     <c:forEach items="${reply}" var="reply">
	                     <div class="comment-list">
	                        <div class="single-comment justify-content-between d-flex">
	                           <div class="user justify-content-between d-flex">
	                              <div class="thumb">
	                                 <img src="assets/img/comment/minyong.png" alt="">
	                              </div>
	                              <div class="desc">
	                                 <p class="comment">
	                                    ${reply.re_content}
	                                 </p>
	                                 <div class="d-flex justify-content-between">
	                                    <div class="d-flex align-items-center">
	                                       <h5>
	                                          <a href="#">${reply.re_writer}</a>
	                                       </h5>
	                                       <p class="date">${reply.re_rdate}</p>
	                                    </div>
	                                    <div class="reply-btn">
	                                    <c:if test="${writerInfo.m_id == LOGINUSER.m_id}"> <!-- 세션 m_id받기 -->
	                                       <a href="del_re?re_id=${reply.re_id}&b_id=${review.b_id}" class="btn-reply text-uppercase">삭제</a>
	                                    </c:if>
	                                    </div>
	                                 </div>
	                              </div>
	                           </div>
	                        </div>
	                     </div>
                     </c:forEach>                   
                  </div>
                  <div class="comment-form">
                     <h4>Leave a Reply</h4>
                     <form class="form-contact comment_form" method="post" action="write_re" id="commentForm">
                     <input type="hidden" name="b_id" value="${review.b_id}"/>
                        <div class="row">
                           <div class="col-12">
                              <div class="form-group">
                                 <textarea class="form-control w-100" name="re_content" id="re_content" cols="30" rows="9"
                                    placeholder="Write Comment"></textarea>
                              </div>
                           </div>
                           <div class="col-sm-6">
                              <div class="form-group">
                                 <input class="form-control" name="re_writer" id="re_writer" type="text" placeholder="Name : " value="회원 닉네임">
                              </div>
                           </div>
                        </div>
                        <div class="form-group">
                           <button type="submit" class="button button-contactForm btn_1 boxed-btn">Send Message</button>
                        </div>
                     </form>
                  </div>
               </div>
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
		                     </aside>
                        </div>
                    </div>
            </div>
         </div>
      </section>
      <!--================ Blog Area end =================-->
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
	<script type="text/javascript">
	var clickLike = ${likeflag};
	var m_id =${LOGINUSER.m_id};
		function like(b_id){						
			$.ajax({
				   url: "likeUp", 
				   type: "GET",
				   data: { b_id: b_id,m_id:m_id},
				   success: function(responseData){
		           var html = "";
				   var b_like = responseData;
						  html += " "+b_like+"";           
					  $("#like").empty();
					  $("#like").html(html);
					  $("#like2").empty();
					  $("#like2").html(html);
				   }
			   });
			if(clickLike==0){
				clickLike = 1;
			}else{
				clickLike = 0;
			}
		  }
		 var count=${likeflag};
		function setColor(likeBtn, color){
		    var property = document.getElementById(likeBtn);
 		    if (count == 1){ //깜장
		        property.style.color = "#212529";
		        count=0;        
		    }
		    else if(count == 0){ //빨강
		        property.style.color = "#dc3545";
		        count=1;
		    }
		}
	</script>
	
</body>

</html>