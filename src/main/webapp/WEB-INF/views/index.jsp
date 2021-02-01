<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요합니다) -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<!-- 부트스트랩 -->
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

<title>HOME</title>
</head>
<body class="container">
	<div class="jumbotron">
		<h1>HOME PAGE</h1>
		<hr>
		 <div>
	           <sec:authorize access="isAnonymous()">
	              <a href="/login">로그인</a> <br>
	              <a href="/beforeSignup">회원가입</a>
	             
	           </sec:authorize>   
	            <sec:authorize access="isAuthenticated()">
	               <a href="/logout">로그아웃</a>
	               <sec:authentication property="principal" var="principal"/>
	               <h3>${principal }</h3>
	            </sec:authorize>
	            
	        </div>
	        
	        <div>
	         <sec:authorize access="isAuthenticated()">        
	               <a href="/user/info">내 정보</a>
	               <a href="/admin">관리자</a>
	                
	            </sec:authorize>
	
	 		     
	        </div>   
	        
		</div>
</body>
</html>