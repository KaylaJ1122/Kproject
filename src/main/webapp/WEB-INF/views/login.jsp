<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=dege">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>로그인</title>
<!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요합니다) -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<!-- 부트스트랩 -->
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

<style type="text/css">
td{
	border:1px solid #000000;
	border-collapse:collapse;
}
</style>

</head>
<body>
	<article class="container">
	<div class="page-header">
		<div class="col-md-6 col-md-offset-3">
			<h2>로그인</h2>
		</div>
	</div>

	<div class="col-sm-6 col-md-offset-3">
	<form action="/loginPro" method="post">
	<!-- csrf -->
	<input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }">
		<div class="form-group">
			<label for="id">아이디</label>
			<input type="text" class="form-control" id="username" name="username" placeholder="ID 입력">
			<div class="eheck_font" id="id_check"></div>
		</div>
		
		<div class="form-group">
			<label for="password">비밀번호</label>
			<input type="password" class="form-control" id="password" name="password" placeholder="Password"><br>
			<div class="eheck_font" id="pw_check"></div>
		</div>
		
		<div class="form-group">
			<input type="checkbox" id="remember_me" name="remember_me" value="RememberMe">Remember Me
			
		</div>
		
		<div class="form-group text-center">
			<button type="submit" class="btn btn-primary">로그인</button>
		</div>
		</form>
		
		</div>
	</article>

</body>
</html>