<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<title>방명록 목록</title>
</head>
<body>
	<div class="container">
		<h1>방명록 목록</h1>
		<p><a class="btn btn-primary" href="/board/writeView">방명록 추가</a></p>
		<table class="table table-hover">
			<thead>
				<tr>
					<th>방명록 번호</th>
					<th>내용</th>
					<th>Email</th>
					<th>최종 수정시간</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${list}" var="info">
				<tr style="cursor:pointer" onclick="location.href='/board/readView?bno=${info.bno}'">
					<td>${info.bno}</td>
					<td>${info.content}</td>
					<td>${info.email}</td>
					<td><fmt:formatDate value="${info.mod_date}" pattern="yyyy-MM-dd hh:mm:ss"/></td>
				</tr>
				</c:forEach>

			</tbody>
		</table>
	</div>
</body>
</html>