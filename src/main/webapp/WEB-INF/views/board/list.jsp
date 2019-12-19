<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>방명록 목록</title>
</head>
<body>
	<h1>방명록 목록</h1>
	<hr>
	<ul>
		<c:forEach items="${list}" var="info">
			<li><a href="/board/readView?bno=${info.bno}"><c:out value="${info.content}"/></a></li>
		</c:forEach>
	</ul>
</body>
</html>