<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>방명록 작성</title>
</head>
<body>
<h1>방명록 작성</h1><hr>
<form action="/board/write" method="post"><br>
	이메일 : <input type="text" id="email" name="email" /><br>
	비밀번호 : <input type="password" id="pwd" name="pwd" /><br>
	본문 : <textarea id="content" name="content"></textarea><br>
	<button type="submit">방명록 등록</button>
</form>
</body>
</html>