<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<title>GymCarry : 결제 완료</title>

<%@ include file="/WEB-INF/views/frame/metaheader.jsp"%>
<link rel="stylesheet" href="/gym/css/payment/paymentComplete.css">
<link
	href="https://fonts.googleapis.com/css?family=Roboto:300,400&display=swap"
	rel="stylesheet">

</head>
<body>
	<!-- header -->
	<%@ include file="/WEB-INF/views/frame/header.jsp"%>


	<!-- Contents -->
	<div class="container_fix container paymentComplete_wrap">
		<h1>결제 완료</h1>
		<br> <br>
		<h2>결제가 정상적으로 완료 되었습니다.</h2>
		<h2>감사합니다!</h2>

		<div class="btn">
<<<<<<< Updated upstream
=======
<<<<<<< HEAD
			<input type="submit" value="결제 내역"
				onclick="location.href='<c:url value = "/mypage/mypage2"/>'">
			<input type="button" value="홈으로"
				onclick="location.href='<c:url value = "/index"/>'">
		</div>
=======
>>>>>>> Stashed changes
			<!-- <input type="submit" value="결제 내역" onclick="moveMyPageCash()"> -->
			<input type="submit" value="결제 내역" onclick="location.href='<c:url value = "/mypage/mypage"/>'">
			<input type="button" value="홈으로" onclick="location.href='<c:url value = "/index"/>'">
		</div>  
>>>>>>> 1a8408f346b68edc9b69fc3b52deecddc580f3a9

	</div>



	<!-- Contents end -->


	<!-- footer -->
<<<<<<< HEAD
	<%@ include file="/WEB-INF/views/frame/footer.jsp"%>
=======
	<%@ include file="/WEB-INF/views/frame/footer.jsp"%>


<script>
	
	function moveMyPageCash() {
		location.href= '<c:url value="/mypage/mypage" />';
		
		$(document).ready(function(){
			$('#cash').trigger("click");
		});
			
			/* $('.list_tab').click(function() {

				var activeTab = $(this).attr('data-tab');
				$.ajax({
					type : 'POST',
					url : activeTab,
					dataType : "html",

					success : function(data) {
						$('.col-right').html(data);

					},

					error : function() {

						alert('나가 임마');
					},

<<<<<<< Updated upstream

<script>
	
	function moveMyPageCash() {
		location.href= '<c:url value="/mypage/mypage" />';
		
		$(document).ready(function(){
			$('#cash').trigger("click");
		});
			
			/* $('.list_tab').click(function() {

				var activeTab = $(this).attr('data-tab');
				$.ajax({
					type : 'POST',
					url : activeTab,
					dataType : "html",

					success : function(data) {
						$('.col-right').html(data);

					},

					error : function() {

						alert('나가 임마');
					},

=======
>>>>>>> Stashed changes
				});
			}); */
			
		
	}
</script>
<<<<<<< Updated upstream
=======
>>>>>>> 1a8408f346b68edc9b69fc3b52deecddc580f3a9
>>>>>>> Stashed changes
