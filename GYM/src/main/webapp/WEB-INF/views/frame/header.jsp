<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<header class="header">
	<div class="logo">
		<a href="<c:url value="/index"/>">GymCarry</a>
	</div>
	<nav class="nav">
		<ul>
			<li><a href="#">ABOUT</a></li>
			<li><a href="<c:url value="/carry/allList"/>">1:1MATCHING</a></li>
			<li><a href="<c:url value="/place/all"/>">PLACE</a></li>
			<li><a href="<c:url value="/community/boardList"/>">COMMUNITY</a></li>
			<%-- <li><a href="<c:url value="/mypage/mypage"/>">MY BODY</a></li> --%>
			<c:choose>
				<c:when test="${loginSession.crnick ne null}">
					<li><a href="<c:url value="/mypage/carrymypage"/>">MY PAGE</a></li>
				</c:when>
				<c:when test="${loginSession.memnick ne null}">
					<li><a href="<c:url value="/mypage/mypage"/>">MY BODY</a></li>
				</c:when>
				<c:when test="${loginSession eq null}">
					<li><a href="<c:url value="/member/login"/>">MY BODY</a></li>
				</c:when>
			</c:choose>
		</ul>
	</nav>
	<div class="sub_nav">
		<div class="chatting">
			<a href="<c:url value="/chatting/chatList"/>"> <img
				src="<c:url value="/images/icon/chatting_icon.png"/>" alt="chatting">
			</a>
		</div>
		<c:if test="${loginSession eq null}">
		<a href="<c:url value="/member/login"/>" class="login"> LOGIN </a>
		</c:if>
		<c:if test="${loginSession ne null}">
		<a href="<c:url value="/member/logOut"/>" class="login" onclick="kakaoLogout()"> LOGOUT </a>
		</c:if>
	</div>
</header>
<link rel="stylesheet" type="text/css" href="http://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/css/toastr.min.css" />
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
<script src="https://cdn.jsdelivr.net/npm/sockjs-client@1/dist/sockjs.min.js"></script>
<script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js"></script>
<script src = " https://unpkg.com/sweetalert/dist/sweetalert.min.js " > </script> 

<script>
	Kakao.init('0ecec0f1529ce019d44a9de3e0b3bb22');
	//카카오 로그아웃  
	function kakaoLogout() {
		if (Kakao.Auth.getAccessToken()) {
			Kakao.API.request({
				url : '/v1/user/unlink',
				success : function(response) {
					console.log(response)
					window.location.href='<c:url value="/chatting/chatList"/>';
				},
				fail : function(error) {
					console.log(error)
				},
			})
			Kakao.Auth.setAccessToken(undefined)
		}
	}
	var session_memnick = '${loginSession.memnick}'
	var session_crnick = '${loginSession.crnick}'
	
	<c:if test="${loginSession ne null}">
 	var socket = new SockJS("<c:url value='/echo'/>");
	socket.onmessage = function(message) {
		var data = message.data;
		var jsonData = JSON.parse(data);
		if(jsonData.to == session_memnick){
			toastr.options.escapeHtml = true;
			toastr.options.closeButton = true;
			toastr.options.newestOnTop = false;
			toastr.options.progressBar = true;
			toastr.options.onclick = function() { 
				location.href = '<c:url value="/chatting/chatList"/>'; 
			}
			toastr.info('메세지보냈습니다.', jsonData.chatNick+'님이', {timeOut: 5000});

		} else if(jsonData.to == session_crnick){
			
			toastr.options.escapeHtml = true;
			toastr.options.closeButton = true;
			toastr.options.newestOnTop = false;
			toastr.options.progressBar = true;
			toastr.options.onclick = function() { 
				location.href = '<c:url value="/chatting/chatList"/>'; 
			}
			toastr.info('메세지보냇습니다.', jsonData.chatNick+'님이' , {timeOut: 5000});
		}
	};
	</c:if>
	
</script>
