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
			<!-- <link rel="manifest" href="site.webmanifest"> -->
			<link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.ico">

			<!-- CSS here -->
			<link rel="stylesheet" href="assets/css/select.css">
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
			<!-- <link rel="stylesheet" href="assets/css/testa2.css"> -->
			<link rel="stylesheet" href="assets/css/planner.css">
			
			<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
			<script src="http://code.jquery.com/ui/1.10.2/jquery-ui.js"></script>
		</head>

        <style>
            a.link_a:link,
            a.link_a:visited {
                text-decoration: none;
                color: black;
            }

            a.link_a:hover {
                color: hotpink;
            }

            .pic {
                border-radius: 25px;
                background: whitesmoke;
                margin: .5rem 0 0 -0.3rem;
                width: 100%;
                float: inline-start;
                margin-bottom: 10px;
            }

            .card {
                padding: 0.5rem;
                box-shadow: 0 1px 2px #aaa;
                background: white;
                /* margin:0 1rem 1rem; */
                border-radius: 3px;
                user-select: none;
                animation: fly-in-from-left .5s 1s ease both;
                transform-origin: top left;
                overflow: auto;
                max-height: 520px;
            }

            .card:nth-child(even) {
                animation-name: fly-in-from-right;
                animation-delay: 1.1s;
                transform-origin: top right;
            }

            .card:after {
                position: absolute;
                font-size: .9rem;
                top: 1.5rem;
                right: 1rem;
                content: "i";
                border: thin solid gray;
                color: gray;
                width: 1rem;
                line-height: 1rem;
                text-align: center;
                border-radius: 50%;
                pointer-events: none;
            }

            .map_wrap,
            .map_wrap * {
                margin: 0;
                padding: 0;
                font-family: 'Malgun Gothic', dotum, '돋움', sans-serif;
                font-size: 12px
            }

            .map_wrap a,
            .map_wrap a:hover,
            .map_wrap a:active {
                color: #000;
                text-decoration: none
            }

            .map_wrap {
                position: relative;
                width: 100%;
                height: 70%
            }

            #menu_wrap {
                position: absolute;
                top: 50px;
                left: 0;
                bottom: 0;
                width: 250px;
                margin: 0px 0 90px 10px;
                padding: 5px;
                overflow-y: auto;
                background: rgba(255, 255, 255, 0.7);
                z-index: 1;
                font-size: 12px;
                border-radius: 10px
            }

            .bg_white {
                background: #fff
            }

            #menu_wrap hr {
                display: block;
                height: 1px;
                border: 0;
                border-top: 2px solid #5f5f5f;
                margin: 3px 0
            }

            #menu_wrap .option {
                text-align: center
            }

            #menu_wrap .option p {
                margin: 10px 0
            }

            #menu_wrap .option button {
                margin-left: 5px
            }

            #placesList li {
                list-style: none
            }

            #placesList .item {
                position: relative;
                border-bottom: 1px solid #888;
                overflow: hidden;
                cursor: pointer;
                min-height: 65px
            }

            #placesList .item span {
                display: block;
                margin-top: 4px
            }

            #placesList .item h5,
            #placesList .item .info {
                text-overflow: ellipsis;
                overflow: hidden;
                white-space: nowrap
            }

            #placesList .item .info {
                padding: 10px 0 10px 55px
            }

            #placesList .info .gray {
                color: #8a8a8a
            }

            #placesList .info .jibun {
                padding-left: 26px;
                background: url(https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/places_jibun.png) no-repeat
            }

            #placesList .info .tel {
                color: #090
            }

            #placesList .item .markerbg {
                float: left;
                position: absolute;
                width: 36px;
                height: 37px;
                margin: 10px 0 0 10px;
                background: url(https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/marker_number_blue.png) no-repeat
            }

            #placesList .item .marker_1 {
                background-position: 0 -10px
            }

            #placesList .item .marker_2 {
                background-position: 0 -56px
            }

            #placesList .item .marker_3 {
                background-position: 0 -102px
            }

            #placesList .item .marker_4 {
                background-position: 0 -148px
            }

            #placesList .item .marker_5 {
                background-position: 0 -194px
            }

            #placesList .item .marker_6 {
                background-position: 0 -240px
            }

            #placesList .item .marker_7 {
                background-position: 0 -286px
            }

            #placesList .item .marker_8 {
                background-position: 0 -332px
            }

            #placesList .item .marker_9 {
                background-position: 0 -378px
            }

            #placesList .item .marker_10 {
                background-position: 0 -423px
            }

            #placesList .item .marker_11 {
                background-position: 0 -470px
            }

            #placesList .item .marker_12 {
                background-position: 0 -516px
            }

            #placesList .item .marker_13 {
                background-position: 0 -562px
            }

            #placesList .item .marker_14 {
                background-position: 0 -608px
            }

            #placesList .item .marker_15 {
                background-position: 0 -654px
            }

            #pagination {
                margin: 10px auto;
                text-align: center
            }

            #pagination a {
                display: inline-block;
                margin-right: 10px
            }

            #pagination .on {
                font-weight: bold;
                cursor: default;
                color: #777
            }
        </style>
        <style>
            .col-lg-4,
            .col-lg-6,
            .col-xl-4,
            .col-xl-auto {
                position: relative;
                width: 10%;
                min-height: 1px;
                padding-right: 1px;
                padding-left: 10px
            }

            .col-1,
            .col-2,
            .col-3,
            .col-4,
            .col-5.col-6,
            .col-7 {
                margin-right: 0px;
                margin-left: 0px;
                position: relative;
                width: 10%;
                min-height: 1px;
                padding-right: 1px;
                padding-left: 10px
            }

            .container {
                width: 100%;
                padding-right: 0px;
                padding-left: 0px;
                margin-right: 10px;
                margin-left: 10px;
                max-width: 2000px;
            }

            .pb-120 {
                padding-bottom: 0px;
            }

            .pt-120 {
                padding-top: 10px;
            }

            .wrap {
                position: absolute;
                left: 0;
                bottom: 40px;
                width: 288px;
                height: 132px;
                margin-left: -144px;
                text-align: left;
                overflow: hidden;
                font-size: 12px;
                font-family: 'Malgun Gothic', dotum, '돋움', sans-serif;
                line-height: 1.5;
            }

            .wrap * {
                padding: 0;
                margin: 0;
            }

            .wrap .info {
                width: 286px;
                height: 120px;
                border-radius: 5px;
                border-bottom: 2px solid #ccc;
                border-right: 1px solid #ccc;
                overflow: hidden;
                background: #fff;
            }

            .wrap .info:nth-child(1) {
                border: 0;
                box-shadow: 0px 1px 2px #888;
            }

            .info .title {
                padding: 5px 0 0 10px;
                height: 30px;
                background: #eee;
                border-bottom: 1px solid #ddd;
                font-size: 18px;
                font-weight: bold;
            }

            .info .close {
                position: absolute;
                top: 10px;
                right: 10px;
                color: #888;
                width: 17px;
                height: 17px;
                background: url('https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/overlay_close.png');
            }

            .info .close:hover {
                cursor: pointer;
            }

            .info .body {
                position: relative;
                overflow: hidden;
            }

            .info .desc {
                position: relative;
                margin: 13px 0 0 90px;
                height: 75px;
            }

            .desc .ellipsis {
                overflow: hidden;
                text-overflow: ellipsis;
                white-space: nowrap;
            }

            .desc .jibun {
                font-size: 11px;
                color: #888;
                margin-top: -2px;
            }

            .info .img {
                position: absolute;
                top: 6px;
                left: 5px;
                width: 73px;
                height: 71px;
                border: 1px solid #ddd;
                color: #888;
                overflow: hidden;
            }

            .info:after {
                content: '';
                position: absolute;
                margin-left: -12px;
                left: 50%;
                bottom: 0;
                width: 22px;
                height: 12px;
                background: url('https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/vertex_white.png')
            }

            .info .link {
                color: #5085BB;
            }

            .btn {
                padding: 21px 10px;
                margin-top: 12px;
            }


            .category-listing .single-listing .select-job-items1 .nice-select::after {
                border-bottom: 1px solid #a9b6cd;
                border-right: 1px solid #a9b6cd;
                height: 12px;
                width: 12px;
                margin-top: -9px;
                right: 14px;
            }
        </style>

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
                                                    <li class="add-list"><a href="listing_details.html"><i
                                                                class="ti-plus"></i>나의 여행 만들기</a></li>
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
                <div class="hero-area3 hero-overly2 d-flex align-items-center " style="min-height: 103px">

                </div>
                <!--Hero End -->
                <!-- listing Area Start -->
                <div class="listing-area pt-120 pb-120">
                    <div class="container">
                        <div class="row">
                            <div class="col-12">
                                <!-- Job Category Listing start -->
                                <div class="row" style="margin-left: 5px">
                                    <div class="col-1">
                                        <label for="fname">여행 제목:</label>
                                    </div>
                                    <div class="col-1">
                                        <input type="text" value="여행 제목" />
                                    </div>
                                    <div class="col-1">
                                        <select name="test1" class="nice-select">
                                            <option value="" selected="selected">인원</option>
                                            <option value="1">1명</option>
                                            <option value="2">2명</option>
                                            <option value="3">3명</option>
                                        </select>
                                    </div>
                                    <div class="col-2">
                                        <select name="test1" class="nice-select">
                                            <option value="1" selected="selected">혼자만의 여행</option>
                                            <option value="2">커플</option>
                                            <option value="3">가족</option>
                                            <option value="4">우정여행</option>
                                        </select>
                                    </div>
                                    <!-- <div class="selectbox"> -->
                                    <div class="col-3">
                                        <form name="form">
                                            <select name="area" id="areacode" class="nice-select"
                                                onchange="changes(value)">
                                                <option value="">지역 선택</option>
                                                <c:forEach items="${list.list}" var="area">
                                                    <option value="${area.areacode}">${area.area}</option>
                                                </c:forEach>
                                            </select>
                                            <select name="sigungu" class="nice-select" id="sigunguCode">
                                                <option>세부 지역</option>
                                            </select>

                                        </form>
                                    </div>

                                    <div class="col-2" style="float:right;margin-left:0px;margin-right:0px;">
                                        <a href="#" class="btn list-btn"
                                            style="width:200px;float:right; padding: 23px 20px;margin-right:15px;">저
                                            장</a>
                                    </div>

                                </div>
                                <!-- Job Category Listing End -->
                            </div>
                        </div>
                    </div>
                    <div class="row" style="margin-right:5px;margin-left:5px;margin-top:10px">
                        <!-- Left content -->
                        <div class="col-1">
                            <div class="row" style="margin-top: 15px;">
                                <div class="col-12">
                                    <div class="small-section-tittle2 mb-45" style="margin-bottom: 15px;">
                                        <h5 style="margin-left: 15px;">DAY</h5>
                                    </div>
                                </div>
                            </div>
                            <!-- Job Category Listing start -->
                            <div class="category-listing mb-50" style="padding: 10px 10px 20px;">
                                <!-- single one -->
                                <div class="single-listing">
                                    <!-- Select job items start -->
                                    <div class="select-job-items1">
                                        <select id="day" onchange="selectDay()">
                                            <option value="0">기간</option>
                                            <option value="1">무박</option>
                                            <option value="2">1박2일</option>
                                            <option value="3">2박3일</option>
                                            <option value="4">3박4일</option>
                                            <option value="5">4박5일</option>
                                            <option value="6">5박6일</option>
                                            <option value="7">6박7일</option>
                                        </select>
                                    </div>
                                    <div class="select-job-items1">
                                        <table id="myTable" class="table">
                                            <thead>
                                                <!-- <th>테이블</th>
										    <th>헤더</th> -->
                                            </thead>
                                            <tbody id="tbody"></tbody>
                                        </table>
                                    </div>
                                    <div class="single-listing">
                                        <!-- Range Slider End -->
                                        <button onclick="rowAdd()" class="btn list-btn mt-20">DAY 추가</button>
                                        <button onclick="rowDelete()" class="btn list-btn mt-20">DAY 삭제</button>
                                        <button onclick="dayDelete()" class="btn list-btn mt-20">전체 삭제</button>
                                    </div>


                                </div>

                            </div>
                            <!-- Job Category Listing End -->
                        </div>
                        <div class="col-2">
                            <div class="row" style="margin-top: 15px;">
                                <div class="col-12">
                                    <div class="small-section-tittle2 mb-45" style="margin-bottom: 15px;">
                                        <h5 style="margin-left: 15px;">DAY 1 일정</h5>
                                    </div>
                                </div>
                            </div>
                            <!-- Job Category Listing start -->
                            <div class="category-listing mb-50">
                                <!-- single one -->
                                <div class="single-listing">
                                    <!-- input -->
                                    <div class="input-form">
                                        <input type="text" id="name2" placeholder="검색하실 도시를 입력해주세요" x-webkit-speech
                                            autocomplete="off" name="writer2" />
                                    </div>
                                    <!-- Select job items start -->

                                    <div class="select-job-items2">
                                        <div class="card" id="card2">
                                        </div>
                                    </div>
                                    <!--  Select job items End-->
                                    <!-- select-Categories start -->


                                </div>

                                <div class="single-listing">
                                    <!-- Range Slider End -->
                                    <a href="#" class="btn list-btn mt-20">검색!</a>
                                    <a href="#" class="btn list-btn mt-20">Reset</a>
                                </div>
                            </div>
                            <!-- Job Category Listing End -->
                        </div>
                        <div class="col-2">
                            <div class="row" style="margin-top: 15px;">
                                <div class="col-12">
                                    <div class="small-section-tittle2 mb-45" style="margin-bottom: 15px;">
                                        <h5 style="margin-left: 15px;">장소를 선택하세요</h5>
                                    </div>
                                </div>
                            </div>
                            <!-- Job Category Listing start -->
                            <div class="category-listing mb-50">
                                <!-- single one -->
                                <div class="single-listing">
                                    <!-- input -->
                                    <div class="input-form">
                                        <input type="text" id="name" placeholder="검색하실 도시를 입력해주세요" x-webkit-speech
                                            autocomplete="off" name="writer" />
                                    </div>
                                    <!-- Select job items start -->
                                    <div class="select-job-items1">
                                        <select title="지역선택" name="areacode" id="areacode">
                                            <option value selected="selected">지역선택</option>
                                            <option value="1">서울</option>
                                            <option value="2">인천</option>
                                            <option value="3">대전</option>
                                        </select>
                                    </div>
                                    <div class="select-job-items1">
                                        <select title="관광타입" name="contenttypeid" id="contenttypeid">
                                            <option value selected="selected">타입선택</option>
                                            <option value="12">관광지</option>
                                            <option value="14">문화시설</option>
                                            <option value="32">숙박</option>
                                            <option value="39">음식</option>
                                        </select>
                                    </div>
                                    <div class="select-job-items2">
                                        <div class="card" id="card">
                                        </div>
                                    </div>
                                </div>

                                <div class="single-listing">
                                    <!-- Range Slider End -->
                                    <a href="#" class="btn list-btn mt-20">검색!</a>
                                    <a href="#" class="btn list-btn mt-20">Reset</a>
                                </div>
                            </div>
                            <!-- Job Category Listing End -->
                        </div>


                        <!-- Map content -->
                        <div class="col-7">

                            <div id="map" style="width:100%;height:90%;float:bottom;margin-right:0px;margin-top: 5%;">
                            </div>
                            <script type="text/javascript"
                                src="//dapi.kakao.com/v2/maps/sdk.js?appkey=cc651cacb53c49f543ec001fb43849b6&libraries=services"></script>
                            <script>
                                var markers = [];
                                var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
                                    mapOption = {
                                        center: new kakao.maps.LatLng(37.56682, 126.97865), // 지도의 중심좌표
                                        level: 3, // 지도의 확대 레벨
                                        mapTypeId: kakao.maps.MapTypeId.ROADMAP // 지도종류
                                    };
                                // 지도를 생성한다 
                                var map = new kakao.maps.Map(mapContainer, mapOption);

                                // 지도 타입 변경 컨트롤을 생성한다
                                var mapTypeControl = new kakao.maps.MapTypeControl();
                                // 지도의 상단 우측에 지도 타입 변경 컨트롤을 추가한다
                                map.addControl(mapTypeControl, kakao.maps.ControlPosition.TOPRIGHT);
                                // 지도에 확대 축소 컨트롤을 생성한다
                                var zoomControl = new kakao.maps.ZoomControl();
                                // 지도의 우측에 확대 축소 컨트롤을 추가한다
                                map.addControl(zoomControl, kakao.maps.ControlPosition.RIGHT);

                                /*
                                                                // 지도 클릭 이벤트를 등록한다 (좌클릭 : click, 우클릭 : rightclick, 더블클릭 : dblclick)
                                                                kakao.maps.event.addListener(map, 'click', function (mouseEvent) {
                                                                    console.log('지도에서 클릭한 위치의 좌표는 ' + mouseEvent.latLng.toString() + ' 입니다.');
                                                                });
                                
                                                                // 지도에 마커를 생성하고 표시한다
                                                                var marker = new kakao.maps.Marker({
                                                                    position: new kakao.maps.LatLng(37.56682, 126.97865), // 마커의 좌표
                                                                    draggable: true, // 마커를 드래그 가능하도록 설정한다
                                                                    map: map // 마커를 표시할 지도 객체
                                                                });
                                                                // 지도를 클릭했을때 클릭한 위치에 마커를 추가하도록 지도에 클릭이벤트를 등록합니다
                                                                kakao.maps.event.addListener(map, 'click', function (mouseEvent) {
                                                                    // 클릭한 위치에 마커를 표시합니다
                                                                    addMarker(mouseEvent.latLng);
                                
                                                                });
                                
                                
                                                                // 지도에 표시된 마커 객체를 가지고 있을 배열입니다
                                                                var markers = [];
                                
                                                                // 마커 하나를 지도위에 표시합니다
                                                                addMarker(new kakao.maps.LatLng(33.450701, 126.570667));
                                
                                                                // 마커를 생성하고 지도위에 표시하는 함수입니다
                                                                function addMarker(position) {
                                
                                                                    // 마커를 생성합니다
                                                                    var marker = new kakao.maps.Marker({
                                                                        position: position
                                                                    });
                                
                                                                    // 마커가 지도 위에 표시되도록 설정합니다
                                                                    marker.setMap(map);
                                
                                                                    // 생성된 마커를 배열에 추가합니다
                                                                    markers.push(marker);
                                                                } */


                            </script>
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
                                                <li><a href="#"><img src="assets/img/gallery/app-logo2.png" alt=""></a>
                                                </li>
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
                                            <i class="fa fa-heart" aria-hidden="true"></i><a href="https://odga.com"
                                                target="_blank">Odga.com</a>
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
            <div id="back-top">
                <a title="Go to Top" href="#"> <i class="fas fa-level-up-alt"></i></a>
            </div>
<!-- <script type="text/javascript">
function changes(fr) {
           var li = new Array();
           var li2 = new Array();
           var latitude = 0;
           var longitude = 0;

			<c:set var="list" value="${list}"/>
			<c:forEach items="${list.list}" var="area">
		   		if(fr==${area.areacode}) {
		    	li.push("세부 지역");
		    	li2.push("");
		    	<c:forEach items="${list.list_s}" var="sigungu">
		    		if(${area.areacode}==${sigungu.areacode}){ 
			    		li.push("${sigungu.si_name}");
			    		li2.push("${sigungu.sigungucode}");
		    		}
		    	</c:forEach>
                num = li;
                vnum = li2;

                latitude = ${ area.latitude };
                longitude = ${ area.longitude };

                }
			</c: forEach >
					  // 셀렉트안의 리스트를 기본값으로 한다..
						for (i = 0; i < form.sigungu.length; i++) {
					                    form.sigungu.options[0] = null;
					                }
					                //포문을 이용하여 두번째(test2)셀렉트 박스에 값을 뿌려줍니당)
					                for (i = 0; i < num.length; i++) {
					                    document.form.sigungu.options[i] = new Option(num[i], vnum[i]);
					                }
					
					                var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
					                    mapOption = {
					                        center: new kakao.maps.LatLng(latitude, longitude), // 지도의 중심좌표
					                        level: 4, // 지도의 확대 레벨
					                        mapTypeId: kakao.maps.MapTypeId.ROADMAP // 지도종류
					                    };
					                // 지도를 생성한다 
					                var map = new kakao.maps.Map(mapContainer, mapOption);
}

</script> -->
<script>


    function daydo(value) {
        var p_idj = 5;
        var sp_dayj = value;
        $.ajax({
            url: "dayselect.json",
            type: "GET",
            data: { p_id: p_idj, sp_day: sp_dayj },
            success: function (responseData) {
                if (!responseData) {
                    alert("장소를 추가해주세요.");
                    return false;
                }
                var html = "";
                html += "";
                html += "<table>";
                html += "<tr>";
                html += "<th>장소명</th>";
                html += "<th>주소</th>";
                html += "<th>이미지</th>";
                html += "</tr>";

                if (responseData.length != 0) {
                    for (var i = 0; i < responseData.length; i++) {
                        html += "<tr>";
                        html += "<td align='center'>" + responseData[i].title + "</td>";
                        html += "<td align='center'>" + responseData[i].addr1 + "</td>";
                        html += "<td align='center'>" + responseData[i].firstimage + "</td>";
                        html += "</tr>";
                    }
                } else {
                    html += "<tr>";
                    html += "<td colspan='4' align='center'>장소를 추가해주세요</td>";
                    html += "</tr>";
                }
                html += "</table>";
                $("#seq").val("");

                $("#card2").html(html);
            }
        });
    }
    function rowAdd() {
        var trCnt = $('#myTable tr').length + 1;
        if (trCnt < 11) {
            var innerHtml = '<tr><td><button style="color:black;" id="daybtn' + trCnt + '" value="' + trCnt + '" onclick="daydo(value)">DAY ' + trCnt + '</button></td></tr>';
            $('#myTable > tbody:last').append(innerHtml);
        } else {
            alert("최대 10일까지만 가능합니다.");
            return false;
        }

    }

    function rowDelete() {
        var trCnt = $('#myTable tr').length;
        if (trCnt > 0) {
            $('#myTable > tbody:last > tr:last').remove();
        } else {
            return false;
        }
    }

    function dayDelete() {
        var trCnt = $('#myTable tr').length;
        if (trCnt > 0) {
            $('#myTable > tbody:last > tr ').remove();
        } else {
            return false;
        }
    }

    function selectDay() {
        dayDelete();
        var dayOption = document.getElementById("day");
        var value = dayOption.options[document.getElementById("day").selectedIndex].value;

        switch (value) {
            case "1":
                rowAdd();
                break;
            case "2":
                for (var i = 1; i <= 2; i++) {
                    rowAdd();
                }
                break;
            case "3":
                for (var i = 1; i <= 3; i++) {
                    rowAdd();
                }
                break;
            case "4":
                for (var i = 1; i <= 4; i++) {
                    rowAdd();
                }
                break;
            case "5":
                for (var i = 1; i <= 5; i++) {
                    rowAdd();
                }
                break;
            case "6":
                for (var i = 1; i <= 6; i++) {
                    rowAdd();
                }
                break;
            case "7":
                for (var i = 1; i <= 7; i++) {
                    rowAdd();
                }
                break;
            default:
                break;
        }
    }


</script>

<script type="text/javascript">
$(function(){
	 
	 $(document).ready(function() {
			 
            // ID를 alpreah_input로 가지는 곳에서 키를 누를 경우
            $("#name").keydown(function(key) {
                //키의 코드가 13번일 경우 (13번은 엔터키)
                if (key.keyCode == 13) {
                	var areaindex = $("#areacode option:selected").attr('value');
                	var typeindex = $("#contenttypeid option:selected").attr('value');
                	var sigunguIndex = $("#sigunguCode option:selected").attr('value');
                	var matchNum = 0; 
       			 	var nomatchNum = 0;
                	//alert("start");
		             $.ajax({
		                    type: 'get',
		                    url: 'http://api.visitkorea.or.kr/openapi/service/rest/KorService/areaBasedList?ServiceKey=6f%2B9GV1OSBV%2BRfUgfgMGJdFxW6rxP%2F5pUN8ZCITBNd94TjMATfCcpyLoRWl3X8ad9ojV9B%2BSLxgndmvE23wVBQ%3D%3D&contentTypeId='+typeindex+'&areaCode='+areaindex+'&sigunguCode='+sigunguIndex+'&cat1=&cat2=&cat3=&listYN=Y&MobileOS=ETC&MobileApp=TourAPI3.0_Guide&arrange=A&numOfRows=1000&pageNo=', // 읽어올 문서
		    			    dataType: "xml",
		                    data: { addr1 : $("#name").val()},
		                    success: function(xml) {
		                    	 
		                    	 var html= "";
		                    	 var str = "";
		                    	 var result = 0;
		                    	 var firstimage = "";
		                    	 //alert($("#name").val());
		                    	// alert(areaindex);
		                    	 //alert(typeindex);
		                    	 $(xml).find('item').each(function(){
		                    		 str = $(this).find("addr1").text();
		                    		 firstiamge = $(this).find("firstimage").text();
		                    		 imgSize= firstiamge.length;
		                    		 if(str.indexOf($("#name").val())!=-1){
		                    			 //alert(str.indexOf($("#name").val()));
			                    		 html += "<h5><a class='link_a' href='testGet.do?contentid="+$(this).find("contentid").text()+"'>"+$(this).find("title").text()+"</a></h5>";
			                    		 html += "<h5>"+$(this).find("addr1").text()+"</h5>";
			                    		 if(imgSize>0){ html += "<div style='margin-bottom:5px'><img class='pic' src='"+$(this).find("firstimage").text()+"'/></div>";	
			                    		 }else{ html += "<div><img class='pic' src='https://st4.depositphotos.com/17828278/24401/v/600/depositphotos_244011872-stock-illustration-image-vector-symbol-missing-available.jpg'/></div>";}
			                    		 //alert($(this).find("addr1").text());		
			                    		 //result = str.indexOf($("#name").val());
		                    	 		 //alert(result);
			                    		 matchNum++;
			                    		// alert(matchNum);
		                    		 }else{
		                    			// alert(str);
		                    			 if(nomatchNum<1){		                    				 
		                    			 	html += "<div id=header>검색결과 없음</div>";
		                    			 	nomatchNum++;		                    				
		                    			 }
		                    		 }
		                    	 });
		                    	 $("#card").html(html);	
		                    	 //alert(matchNum);
					             if(matchNum>=1){
				              		 var x = document.getElementById("header");
				       				 if (x.style.display === "none") {
				       					    x.style.display = "block";
				       			 	 }else {
				       			 	    x.style.display = "none";
				       			  }
				              	}  
		                    	 
		                    }		
		                   
		             });
		             
                }
                
            });
            
    });
});
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
            <!-- <script src="./assets/js/price-range.js"></script> -->
            <script src="./assets/js/animated.headline.js"></script>
            <script src="./assets/js/jquery.magnific-popup.js"></script>

            <!-- Nice-select, sticky -->
            <!--  <script src="./assets/js/jquery.nice-select.min.js"></script> -->
            <script src="./assets/js/jquery.sticky.js"></script>

            <!-- contact js -->
            <!--  <script src="./assets/js/contact.js"></script> -->
            <script src="./assets/js/jquery.form.js"></script>
            <script src="./assets/js/jquery.validate.min.js"></script>
            <script src="./assets/js/mail-script.js"></script>
            <script src="./assets/js/jquery.ajaxchimp.min.js"></script>

            <!-- Jquery Plugins, main Jquery -->
            <script src="./assets/js/plugins.js"></script>
            <script src="./assets/js/main.js"></script>




            <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
            <!-- <script src="//work6.kr/plugin/plugin_link/19"></script> -->

        </body>

</html>