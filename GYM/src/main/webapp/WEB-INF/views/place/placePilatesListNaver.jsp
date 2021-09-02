<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<title>Community</title>
<%@ include file="/WEB-INF/views/frame/metaheader.jsp"%>
<link rel="stylesheet" href="/gym/css/place/placeList.css">

<script type="text/javascript"
	src="https://openapi.map.naver.com/openapi/v3/maps.js?ncpClientId=ql9vcy7uun&submodules=geocoder"></script>
<script src="https://code.jquery.com/jquery-3.6.0.js"
	integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
	crossorigin="anonymous"></script>

</head>
<body>
	<!-- header -->
	<%@ include file="/WEB-INF/views/frame/header.jsp"%>


	<!-- Contents -->
	<div class="container container_fix place_list_section">
		<h1 class="page_title">내 주변 운동시설 찾아보기</h1>
		<ul class="place_menu">
			<li class="on"><a href="<c:url value="/place/list"/>">전체</a></li>
			<li><a href="<c:url value="/place/list?placenum=1"/>">헬스</a></li>
			<li><a href="<c:url value="/place/pilates?placenum=2"/>">필라테스</a>
			</li>
			<li><a href="<c:url value="/place/list?placenum=3"/>">요가</a></li>
		</ul>
		<div class="place_search_bar">
			<input type="text" name="search" id="search"
				placeholder="센터명을 검색해보세요.">
			<button type="submit">
				<img src="<c:url value="/images/icon/search_icon.png"/>"
					alt="search">
			</button>
		</div>
		<div id="map" class="map_section"></div>
		<div class="place_list">
			<c:forEach items="${placePilatesList}" var="placeList"
				varStatus="status">
				<div class="place_content">
					<div class="place_info">
						<h3>${placeList.placename}</h3>
						<p>${placeList.placeaddress}</p>
						<a href="#">더 알아보기</a>
					</div>
					<div class="place_img">
						<img src="<c:url value="${placeList.placeimg}"/>">
					</div>
				</div>
			</c:forEach>
		</div>
	</div>
	<!-- Contents end -->

	<!-- 지도[s] -->
	<div id="map" style="width: 100%; height: 500px; margin-top: 50px"></div>

	<script>
	

    var positions = new naver.maps.LatLng(37.55528086061827, 126.93683578593966); //lat 위도, lng 경도

    //지도 생성
    var map = new naver.maps.Map('map', {
        center: positions,      //x,y 값 설정
        scaleControl: false,  // 우측 하단 scale 표시
        zoom: 16
    });
    
    //인포 윈도우 내용 
    var contentString = [
        '<div class="iw_inner">',
        '   <h3>서울특별시청</h3>',
        '   <p>서울특별시 중구 태평로1가 31 | 서울특별시 중구 세종대로 110 서울특별시청<br>',
        '       <img src="./img/hi-seoul.jpg" width="55" height="55" alt="서울시청" class="thumb" /><br>',
        '       02-120 | 공공,사회기관 > 특별,광역시청<br>',
        '       <a href="http://www.seoul.go.kr" target="_blank">www.seoul.go.kr/</a>',
        '   </p>',
        '</div>'
    ].join('');
    
    // 마커 생성
    var marker = new naver.maps.Marker({
        position: positions,
        map: map,
        title: '정보',
        icon: {
            content: [
                '<div style="padding-top:5px;padding-bottom:5px;padding-left:5px;padding-right:5px;">' +
                '<div> <img src="/gym/images/icon/muscles.png" style="width:60px; height:60px;"></div>' +
                '</div>'
            ].join(''),
            size: new naver.maps.Size(38, 58),
            anchor: new naver.maps.Point(19, 58),
        },
        draggable: false

    });
    

    var infowindow = new naver.maps.InfoWindow({
        content: contentString
    });

    naver.maps.Event.addListener(marker, "click", function(e) {
        if (infowindow.getMap()) {
            infowindow.close();
        } else {
            infowindow.open(map, marker);
        }
    });


    </script>


	<!-- 지도[e] -->


	<!-- footer -->
	<%@ include file="/WEB-INF/views/frame/footer.jsp"%>