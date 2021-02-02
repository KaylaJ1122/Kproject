<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="s"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=dege">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요합니다) -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<!-- 부트스트랩 -->
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<title>관리자 페이지</title>
</head>
<body>


<div class="container">
	<div class="jumbotron">
		<h1>관리자 페이지</h1>
	</div>
	
	<a href="/product/upload" class="btn btn-lg btn-primary">상품등록</a>
	
	<table class="table table-striped">
		<thead>
			<tr>
				<th>User</th>
				<th>Roles</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="user" items="${username }">
				<tr>
					<td>${user.username }</td>
					<td>
						<c:forEach var="authority" items="${user.authorities }">${authority.authority }</c:forEach>
					</td>
				</tr>
			</c:forEach>
		</tbody>
		
		
	</table>

</div>
</body>
</html>