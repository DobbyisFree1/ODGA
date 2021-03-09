<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!doctype html>
<html class="no-js" lang="zxx">

<head>
	<meta charset="utf-8">
	<meta http-equiv="x-ua-compatible" content="ie=edge">
	<title>어디가조 </title>
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
                                <a href="index.do"><img src="assets/img/logo/logo_b.png" style="position:relative; left:45px; max-width: 170px;"></a>
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
											<li class="add-list"><a onclick="goPlanner()"><i class="ti-plus"></i>나의 여행 만들기</a></li>
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
		<!-- Start Sample Area -->
		
				<div class="section-top-border">
					<div class="row justify-content-center">
						<div class="col-lg-10 col-md-8">
							<h3 class="mb-30">후기작성</h3>
							<form action="write" method="post" enctype="multipart/form-data">
								<div class="mt-10 mb-20">
									<input type="hidden" name="m_id" value='${LOGINUSER.m_id}' readonly />
								</div>
								<div class="mt-10 mb-20">
								<input type="text" name="b_writer" value='   ${LOGINUSER.m_name}' class="single-input" style="width:50%" readonly />
								</div>
								<div class="mt-10 mb-20">
									<input name="b_subject" type="text" placeholder="   글제목을 입력해주세요"
									onfocus="this.placeholder = ''" onblur="this.placeholder = '글제목을 입력해주세요.'" required
									class="single-input" style="width:50%" >
								</div>
						
								<div class="input-group-icon mt-10 mb-20" style="width:50%" >
									<div class="form-select" id="default-select" >
										<select name="b_catgo" style="display: none;" >
											<option value="기타">여행 테마를 골라주세요</option>
											<option value="가족여행">가족여행</option>
											<option value="혼자여행">혼자여행</option>
											<option value="커플여행">커플여행</option>
											<option value="우정여행">우정여행</option>
											<option value="패키지여행">패키지여행</option>
										</select>
									</div>
								</div>
								<div class="mt-10 mb-20">
									<input name='file' type='file' class="genric-btn default" style="width:50%"><br/> <!-- Choose File -->
								</div>
								<div class="justify-content-center">
									<textarea  name="b_content" id="ir1" rows="20" style="width: 780px;">사진과 글을 원하는 위치에 이쁘게 꾸며주세요!<br/>사진은 우측 상단 버튼을 이용해서 넣어주세요!</textarea>
								</div>
								<div class="form-group mt-3">
									<div>
	                                	<input type="submit" class="btn btn-sm btn-primary" value="저장" >
	                                </div>
	                            </div>
							</form>
						</div>
					</div>
				</div>
		<!-- End Align Area -->
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
                                       <a href="index.do"><img src="assets/img/logo/logo_b.png" style="position:relative; left:45px; max-width: 170px;"></a>
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
                                        <li><a href="#">Custom</a></li>
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
		
		<script type="text/javascript" src="./se2/js/HuskyEZCreator.js" charset="utf-8"></script>
		
		<script type="text/javascript">
			$(document).ready(function(){
				var oEditors = [];
				nhn.husky.EZCreator.createInIFrame({
					 oAppRef: oEditors,
					 elPlaceHolder: "ir1",
					 sSkinURI: "/se2/SmartEditor2Skin.html",
					 fCreator: "createSEditor2"
				});
				
				$(".btn").on("click", function() {
					oEditors.getById["ir1"].exec("UPDATE_CONTENTS_FIELD", []);
					var value = document.getElementById("ir1").value;
					console.log(value);
				});				
			});
			// 필수값 Check 
			function validation(){ 
				var contents = $.trim(oEditors[0].getContents()); 
				if(contents === '<p>&bnsp;</p>' || contents === ''){ // 기본적으로 아무것도 입력하지 않아도 값이 입력되어 있음. 
					alert("내용을 입력하세요."); 
					oEditors.getById['ir1'].exec('FOCUS');
					return false; 
				} 
				return true; 
			}

		</script>
		
		<script type="text/javascript">	
		function get_query(){
		    var url = document.location.href;
		    var qs = url.substring(url.indexOf('?') + 1).split('&');
		    for(var i = 0, result = {}; i < qs.length; i++){
		        qs[i] = qs[i].split('=');
		        result[qs[i][0]] = decodeURIComponent(qs[i][1]);
		    }
		    return result;
		}
		</script>
		
		
		
		
</body>
</html>