<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>상세 방명록 정보</title>
</head>
<body>
	<h1>상세 방명록 정보</h1>
	<a href="/board/list">방명록 목록</a>
	<hr>
	이메일 : <c:out value="${read.email}" /><br>
	본문 : <c:out value="${read.content}" /><br>
	수정시간 : <fmt:formatDate value="${read.mod_date}" pattern="yyyy-MM-dd HH:mm:ss"/><br>
	
</body>
</html>