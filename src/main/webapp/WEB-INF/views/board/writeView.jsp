<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<title>방명록 작성</title>
<script language="javascript">
	function validation() {
		var email = document.getElementById("email");
		var pwd = document.getElementById("pwd");
		var content = document.getElementById("content");

		if (email.value == "") {
			alert("이메일을 입력해 주세요");
			email.focus();
			return false;
		}
		if (pwd.value == "") {
			alert("비밀번호를 입력해 주세요");
			pwd.focus();
			return false;
		}
		if (content.value == "") {
			alert("방명록을 입력해 주세요");
			content.focus();
			return false;
		}
	}
</script>
<style>
body {
	padding-top: 70px;
	padding-left: 70px;
	padding-right: 70px;
	padding-bottom: 30px;
}
</style>

</head>
<body>
	<div class="container">
	
		<h1>방명록 작성</h1>
		<hr>
		<form action="/board/write" onsubmit="return validation();" method="post">
			<div class="form-group">
				<label for="inputdefault">이메일</label>
				<input class="form-control input-lg" id="email" name="email" type="email">
			</div>
			<div class="form-group">
			  <label for="comment">내용</label>
			  <textarea class="form-control" rows="5" id="content" name="content"></textarea>
			</div>			
			<div class="form-group">
				<label for="inputdefault">비밀번호</label>
				<input class="form-control input-lg" id="pwd" name="pwd" type="password">
			</div>
			<input class="btn btn-primary" type="submit" value="방명록 추가" />
		</form>
	</div>



</body>
</html>