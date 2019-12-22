<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		
		var formObj = $("form[name='readForm']");
		
		$(".cancel_btn").on("click", function() {
			event.preventDefault();
			location.href = "/board/list";
		})
		$(".delete_btn").on("click", function() {
			event.preventDefault();
			formObj.attr("action", "/board/delete");
			formObj.attr("method", "post");
			formObj.submit();
		})
	})
</script>

<style>
body {
	padding-top: 70px;
	padding-left: 70px;
	padding-right: 70px;
	padding-bottom: 30px;
}
</style>

<title>상세 방명록 정보</title>
</head>
<body>
<!-- 
	<h1>상세 방명록 정보</h1>
	<a href="/board/list">방명록 목록</a>
	
	<hr>
	<form name="readForm" action="/board/update" method="post">
		<input type="hidden" name="bno" value="${read.bno}" readonly/>
		이메일 : <input type="text" name="email" value="${read.email}" readonly /><br>
		본문 :
		<textarea id="content" name="content">${read.content}</textarea>
		<br> 수정시간 :
		<fmt:formatDate value="${read.mod_date}" pattern="yyyy-MM-dd HH:mm:ss" />
		<br> 비밀번호 : <input type="password" name="pwd" /><br>
		<input type="submit" value="수정" />
		<button type="submit" class="delete_btn" name="delete">삭제</button>
		<button type="submit" class="cancel_btn" name="cancle">취소</button>
	</form>
	 -->
	<div class="container">
	
		<h1>상세 방명록 정보</h1>
		<p><a class="btn btn-primary" href="/board/list">방명록 목록</a></a></p>
		<hr>
		<form name="readForm" action="/board/update" method="post">
			<input type="hidden" name="bno" value="${read.bno}" readonly/>
			<div class="form-group">
				<label for="inputdefault">이메일</label>
				<input class="form-control input-lg" id="email" name="email" type="email" value="${read.email}" readonly />
			</div>
			<div class="form-group">
			  <label for="comment">내용</label>
			  <textarea class="form-control" rows="5" id="content" name="content">${read.content}</textarea>
			</div>	
			
			<div class="form-group">
				<label for="inputdefault">수정시간</label>
				<label class="form-control input-lg" id="mod_date">
					<fmt:formatDate value='${read.mod_date}' pattern='yyyy-MM-dd HH:mm:ss' />
				</label>
			</div>
					
			<div class="form-group">
				<label for="inputdefault">비밀번호</label>
				<input class="form-control input-lg" id="pwd" name="pwd" type="password">
			</div>
			<input class="btn btn-primary" type="submit" value="수정" />
			<button class="btn btn-warning" type="submit" class="delete_btn" name="delete">삭제</button>
			<button class="btn btn-success" type="submit" class="cancel_btn" name="cancle">취소</button>
			
			
			
		</form>
	</div>
	
	
	
	
	
	
</body>
</html>