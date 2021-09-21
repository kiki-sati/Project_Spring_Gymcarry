<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ include file="/WEB-INF/views/frame/metaheader.jsp"%>
<title>PageNotFound</title>
<link rel="stylesheet" href="/gym/css/index.css">
</head>
<body>
	
	<!-- header -->
	<%@ include file="/WEB-INF/views/frame/header.jsp"%>
	
	
	<!-- ------------------------------------ -->
	
    <img src="<c:url value="/images/icon/404.svc"/>" alt="">
    <div class="wrapper">
        <h1>Page Not Found</h1>
       <p class="message">
        잘못된 URL 입니다. 
        
       </p>
       <a href="#" class="btn">Learn More About Us</a>
       <p class="copyRights">&copy; 2020 DeltatyCode</p>
    </div>
    
 <!-- ------------------------------------- -->
	<!-- footer -->
	<%@ include file="/WEB-INF/views/frame/footer.jsp"%>	
	
	<!-- ------------------------------------- -->

