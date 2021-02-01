<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="s"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 페이지</title>
</head>
<body>
<div>
	<h1>관리자 페이지</h1>
	
</div>

<div class="container">
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