<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<title>상품등록</title>
</head>
<body>
	<div class="container">
		<div class="jumbotron">
			<h1>Products Upload</h1>
			<p>views/product/upload.jsp</p>
		</div>
		
		<form action="/product/upload" method="post">
			<div class="form-group form-group-lg">
				<label class="control-label">상품번호</label>
				<input name="pId" type="text" class="form-control">
			</div>
			
			<div class="form-group form-group-lg">
				<label class="control-label">상품이름</label>
				<input name="pName" type="text" class="form-control">
			</div>
			
			<div class="form-group form-group-lg">
				<label class="control-label">상품가격</label>
				<input name="pPrice" type="text" class="form-control">
			</div>
			
			<div class="form-group form-group-lg">
				<label class="control-label">상품상세</label>
				<input name="pDetail" type="text" class="form-control">
			</div>
			
			<div class="form-group form-group-lg">
				<label class="control-label">상품사진</label>
				<input name="pPhoto" type="text" class="form-control">
			</div>
			
			<button type="submit" class="btn btn-lg btn-primary">등록</button>
		</form>
	</div>

</body>
</html>