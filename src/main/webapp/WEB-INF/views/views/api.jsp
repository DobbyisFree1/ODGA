<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
        <!DOCTYPE html>
        <html>

        <head>
            <meta charset="utf-8">
            <title>다음 지도 API</title>
            <style>
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
            </style>
        </head>
<script src="http://code.jquery.com/jquery-1.9.1.js"></script>
<script src="http://code.jquery.com/ui/1.10.2/jquery-ui.js"></script>
<script type="text/javascript">
$(function(){
	 $(document).ready(function() {
            // ID를 alpreah_input로 가지는 곳에서 키를 누를 경우
            $("#name").keydown(function(key) {
                //키의 코드가 13번일 경우 (13번은 엔터키)
                if (key.keyCode == 13) {
                	var areaindex = $("#areacode option:selected").attr('value');
                	var typeindex = $("#contenttypeid option:selected").attr('value');
                	alert("start");
		             $.ajax({
		                    type: 'get',
		                    url: 'http://api.visitkorea.or.kr/openapi/service/rest/KorService/areaBasedList?ServiceKey=6f%2B9GV1OSBV%2BRfUgfgMGJdFxW6rxP%2F5pUN8ZCITBNd94TjMATfCcpyLoRWl3X8ad9ojV9B%2BSLxgndmvE23wVBQ%3D%3D&contentTypeId='+typeindex+'&areaCode='+areaindex+'&sigunguCode=&cat1=&cat2=&cat3=&listYN=Y&MobileOS=ETC&MobileApp=TourAPI3.0_Guide&arrange=A&numOfRows=1000&pageNo=', // 읽어올 문서
		    			    dataType: "xml",
		                    data: { addr1 : $("#name").val()},
		                    success: function(xml) {
		                    	 var num = 0;
		                    	 var html= "";
		                    	 var str = "";
		                    	 var result = 0;
		                    	 var firstimage = "";
		                    	 alert($("#name").val());
		                    	 alert(areaindex);
		                    	 alert(typeindex);
		                    	 $(xml).find('item').each(function(){
		                    		 str = $(this).find("addr1").text();
		                    		 firstiamge = $(this).find("firstimage").text();
		                    		 imgSize= firstiamge.length;
		                    		 if(str.indexOf($("#name").val())!=-1){
			                    		 html += "<h1><a class='link_a' href='testGet.do?contentid="+$(this).find("contentid").text()+"'>"+$(this).find("title").text()+"</a></h1>";
			                    		 html += "<h2>"+$(this).find("addr1").text()+"</h2>";
			                    		 if(imgSize>0){ html += "<div ><img class='map' src='"+$(this).find("firstimage").text()+"'/></div>";	
			                    		 }else{ html += "<div><img class='map' src='https://st4.depositphotos.com/17828278/24401/v/600/depositphotos_244011872-stock-illustration-image-vector-symbol-missing-available.jpg'/></div>";}
			                    		 //alert($(this).find("addr1").text());		
			                    		 //result = str.indexOf($("#name").val());
		                    	 		 //alert(result);
		                    		 }else{
		                    			 if(num<1){
		                    			 	html += "<h1>검색결과 없음</h1>";
		                    			 	num++;
		                    			 }
		                    		 }
		                    	 });
		                    	 $("#card").html(html);		                   
		                    }			                       					
		             });
                }
            }); 
    });
});
</script>
        <body>
            <div id="map" style="width:60%;height:70vh;float:right;margin-top:5%;margin-bottom:15%"></div>
            <p>
                <input type="checkbox" id="chkTraffic" onclick="setOverlayMapTypeId()" /> 교통정보 보기
                <input type="checkbox" id="chkBicycle" onclick="setOverlayMapTypeId()" /> 자전거도로 정보 보기
            </p>

            <script type="text/javascript"
                src="//dapi.kakao.com/v2/maps/sdk.js?appkey=cc651cacb53c49f543ec001fb43849b6"></script>
            <script>
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
                // 지도 중심 좌표 변화 이벤트를 등록한다
                kakao.maps.event.addListener(map, 'center_changed', function () {
                    console.log('지도의 중심 좌표는 ' + map.getCenter().toString() + ' 입니다.');
                });
                // 지도 확대 레벨 변화 이벤트를 등록한다
                kakao.maps.event.addListener(map, 'zoom_changed', function () {
                    console.log('지도의 현재 확대레벨은 ' + map.getLevel() + '레벨 입니다.');
                });
                // 지도 영역 변화 이벤트를 등록한다
                kakao.maps.event.addListener(map, 'bounds_changed', function () {
                    var mapBounds = map.getBounds(),
                        message = '지도의 남서쪽, 북동쪽 영역좌표는 ' +
                            mapBounds.toString() + '입니다.';
                    console.log(message);
                });
                // 지도 시점 변화 완료 이벤트를 등록한다
                kakao.maps.event.addListener(map, 'idle', function () {
                    var message = '지도의 중심좌표는 ' + map.getCenter().toString() + ' 이고,' +
                        '확대 레벨은 ' + map.getLevel() + ' 레벨 입니다.';
                    console.log(message);
                });
                // 지도 클릭 이벤트를 등록한다 (좌클릭 : click, 우클릭 : rightclick, 더블클릭 : dblclick)
                kakao.maps.event.addListener(map, 'click', function (mouseEvent) {
                    console.log('지도에서 클릭한 위치의 좌표는 ' + mouseEvent.latLng.toString() + ' 입니다.');
                });
                // 지도 드래깅 이벤트를 등록한다 (드래그 시작 : dragstart, 드래그 종료 : dragend)
                kakao.maps.event.addListener(map, 'drag', function () {
                    var message = '지도를 드래그 하고 있습니다. ' +
                        '지도의 중심 좌표는 ' + map.getCenter().toString() + ' 입니다.';
                    console.log(message);
                });
                // 지도에 마커를 생성하고 표시한다
                var marker = new kakao.maps.Marker({
                    position: new kakao.maps.LatLng(37.56682, 126.97865), // 마커의 좌표
                    draggable: true, // 마커를 드래그 가능하도록 설정한다
                    map: map // 마커를 표시할 지도 객체
                });
             // 지도를 클릭했을때 클릭한 위치에 마커를 추가하도록 지도에 클릭이벤트를 등록합니다
                kakao.maps.event.addListener(map, 'click', function(mouseEvent) {        
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
                }
                
                //해당 마커 정보
                var content = '<div class="wrap">' + 
                '    <div class="info">' + 
                '        <div class="title">' + 
                '            카카오 스페이스닷원' + 
                '            <div class="close" onclick="closeOverlay()" title="닫기"></div>' + 
                '        </div>' + 
                '        <div class="body">' + 
                '            <div class="img">' +
                '                <img src="https://cfile181.uf.daum.net/image/250649365602043421936D" width="73" height="70">' +
                '           </div>' + 
                '            <div class="desc">' + 
                '                <div class="ellipsis">제주특별자치도 제주시 첨단로 242</div>' + 
                '                <div class="jibun ellipsis">(우) 63309 (지번) 영평동 2181</div>' + 
                '                <div><a href="https://www.kakaocorp.com/main" target="_blank" class="link">홈페이지</a></div>' + 
                '            </div>' + 
                '        </div>' + 
                '    </div>' +    
                '</div>';
	             // 마커 위에 커스텀오버레이를 표시합니다
	             // 마커를 중심으로 커스텀 오버레이를 표시하기위해 CSS를 이용해 위치를 설정했습니다
	             var overlay = new kakao.maps.CustomOverlay({
	                 content: content,
	                 map: map,
	                 position: marker.getPosition()       
	             });
	
	             // 마커를 클릭했을 때 커스텀 오버레이를 표시합니다
	             kakao.maps.event.addListener(marker, 'click', function() {
	                 overlay.setMap(map);
	             });
	
	             // 커스텀 오버레이를 닫기 위해 호출되는 함수입니다 
	             function closeOverlay() {
	                 overlay.setMap(null);     
	             }
                
                // 마커에 클릭 이벤트를 등록한다 (우클릭 : rightclick)
                kakao.maps.event.addListener(marker, 'click', function () {
                    alert('마커를 클릭했습니다!');
                });
                // 마커에 mouseover 이벤트를 등록한다
                kakao.maps.event.addListener(marker, 'mouseover', function () {
                    console.log('마커에 mouseover 이벤트가 발생했습니다!');
                });
                // 마커에 mouseout 이벤트 등록
                kakao.maps.event.addListener(marker, 'mouseout', function () {
                    console.log('마커에 mouseout 이벤트가 발생했습니다!');
                });
                // 마커에 dragstart 이벤트 등록
                kakao.maps.event.addListener(marker, 'dragstart', function () {
                    console.log('마커에 dragstart 이벤트가 발생했습니다!');
                });
                // 마커에 dragend 이벤트 등록
                kakao.maps.event.addListener(marker, 'dragend', function () {
                    console.log('마커에 dragend 이벤트가 발생했습니다!');
                });
                // 지도에 선을 표시한다 
                var polyline = new kakao.maps.Polyline({
                    map: map, // 선을 표시할 지도 객체 
                    path: [ // 선을 구성하는 좌표 배열
                        new kakao.maps.LatLng(37.56682, 126.97665),
                        new kakao.maps.LatLng(37.56782, 126.97765),
                        new kakao.maps.LatLng(37.56782, 126.97665)
                    ],
                    strokeWeight: 3, // 선의 두께
                    strokeColor: '#FF0000', // 선 색
                    strokeOpacity: 0.9, // 선 투명도
                    strokeStyle: 'solid' // 선 스타일
                });
                //실시간 교통정보랑 자전거
                var mapTypes = {
                    traffic: kakao.maps.MapTypeId.TRAFFIC,
                    bicycle: kakao.maps.MapTypeId.BICYCLE
                };

                // 체크 박스를 선택하면 호출되는 함수입니다
                function setOverlayMapTypeId() {
                    var chkTraffic = document.getElementById('chkTraffic'),
                        chkBicycle = document.getElementById('chkBicycle');


                    // 지도 타입을 제거합니다
                    for (var type in mapTypes) {
                        map.removeOverlayMapTypeId(mapTypes[type]);
                    }

                    // 교통정보 체크박스가 체크되어있으면 지도에 교통정보 지도타입을 추가합니다
                    if (chkTraffic.checked) {
                        map.addOverlayMapTypeId(mapTypes.traffic);
                    }

                    // 자전거도로정보 체크박스가 체크되어있으면 지도에 자전거도로정보 지도타입을 추가합니다
                    if (chkBicycle.checked) {
                        map.addOverlayMapTypeId(mapTypes.bicycle);
                    }

                }  
            </script>
        </body>

 </html>