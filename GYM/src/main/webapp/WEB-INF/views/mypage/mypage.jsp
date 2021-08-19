<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="ko">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/index.css">
<link rel="stylesheet" href="css/swiper.css">
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
<script src="js/index.js"></script>
<!-- Initialize Swiper -->

<title>GymCarry</title>

</head>

<body>
	<!-- Header -->

	<!-- Header End -->
	<!-- Contents -->
	<div class="container">
		<section class="video_section">
			<div class="video">
				<video src="image/video/video3.mp4" autoplay muted loop></video>
			</div>
			<div class="survey">
				<h3>혼자 하는 운동이 막막하고 어려우신가요?</h3>
				<h2>당신의 맞춤 전문 코치를 찾아드릴게요 !</h2>
				<a href="#" class="btn">시작</a>
			</div>
		</section>
		<section class="review_section container_fix swiper-container">
			<h1 class="title">Carry Review</h1>
			<div class="review_contaier swiper-wrapper">
				<div class="review_content swiper-slide">
					<div class="review_img">
						<img src="image/review1.jpg" alt="img">
					</div>
					<div class="review">
						<h2 class="title">트레이너 이름</h2>
						<p>리뷰 내용입니다 최대 60자까지 노출 리뷰 내용입니다 최대 60자까지 노출리뷰 내용입니다 최대 60자까지
							노출</p>
					</div>
				</div>
				<div class="review_content swiper-slide">
					<div class="review_img">
						<img src="image/review2.jpg" alt="img">
					</div>
					<div class="review">
						<h2 class="title">트레이너 이름</h2>
						<p>리뷰 내용입니다 최대 60자까지 노출 리뷰 내용입니다 최대 60자까지 노출리뷰 내용입니다 최대 60자까지
							노출</p>
					</div>
				</div>
				<div class="review_content swiper-slide">
					<div class="review_img">
						<img src="image/review3.jpg" alt="img">
					</div>
					<div class="review">
						<h2 class="title">트레이너 이름</h2>
						<p>리뷰 내용입니다</p>
					</div>
				</div>
				<div class="review_content swiper-slide">
					<div class="review_img">
						<img src="image/review4.jpg" alt="img">
					</div>
					<div class="review">
						<h2 class="title">트레이너 이름</h2>
						<p>리뷰 내용입니다 최대 60자까지 노출 리뷰 내용입니다 최대 60자까지 노출리뷰 내용입니다 최대 60자까지
							노출</p>
					</div>
				</div>
				<div class="review_content swiper-slide">
					<div class="review_img">
						<img src="image/review1.jpg" alt="img">
					</div>
					<div class="review">
						<h2 class="title">트레이너 이름</h2>
						<p>리뷰 내용입니다 최대 60자까지 노출 리뷰 내용입니다 최대 60자까지 노출리뷰 내용입니다 최대 60자까지
							노출</p>
					</div>
				</div>
			</div>
			<div class="swiper-button-next"></div>
			<div class="swiper-button-prev"></div>
		</section>
	</div>
	<!-- Contents end -->
	<!-- Footer -->
	<header>
		<%@ include file="/WEB-INF/views/frame/header.jsp"%>
		<%@ include file="/WEB-INF/views/frame/footer.jsp"%>
	</header>
	</footer>
	</div>
	<script>
		// review slider
		var swiper = new Swiper('.swiper-container', {
			slidesPerView : 4,
			direction : getDirection(),
			navigation : {
				nextEl : '.swiper-button-next',
				prevEl : '.swiper-button-prev',
			},
			on : {
				resize : function() {
					swiper.changeDirection(getDirection());
				},
			},
		});

		function getDirection() {
			var windowWidth = window.innerWidth;
			var direction = window.innerWidth <= 760 ? 'vertical'
					: 'horizontal';

			return direction;

		}
		includeHTML(function() {
			includeRouter(function() {
				// do something in the future
			});
		});
	</script>
</body>

</html>