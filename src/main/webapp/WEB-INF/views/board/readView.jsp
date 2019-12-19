<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript">
	$(document).ready(function(){
		$(".cancel_btn").on("click", function(){
			event.preventDefault();
			location.href = "/board/list";
		})
	})
</script>
<title>상세 방명록 정보</title>
</head>
<body>
	<h1>상세 방명록 정보</h1>
	<a href="/board/list">방명록 목록</a>
	<hr>
	<form action="/board/update" method="post">
	이메일 : <input type="text" name="email" value="${read.email}" readonly/><br>
	본문 : <textarea id="content" name="content" >${read.content}</textarea><br>
	수정시간 : <fmt:formatDate value="${read.mod_date}" pattern="yyyy-MM-dd HH:mm:ss"/><br>
	비밀번호 : <input type="password" name="pwd"/><br>
	<input type="submit" value="수정"/>
	<button class="cancel_btn" name="cancle">취소</button>
	</form>
</body>
</html>