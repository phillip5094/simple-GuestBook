<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>방명록 작성</title>
<script language="javascript">
	function validation(){
		var email = document.getElementById("email");
		var pwd = document.getElementById("pwd");
		var content = document.getElementById("content");
		
		if(email.value==""){
			alert("이메일을 입력해 주세요");
			email.focus();
			return false;
		}
		if(pwd.value==""){
			alert("비밀번호를 입력해 주세요");
			pwd.focus();
			return false;
		}
		if(content.value==""){
			alert("방명록을 입력해 주세요");
			content.focus();
			return false;
		}
	}
</script>
</head>
<body>
<h1>방명록 작성</h1><hr>
<form action="/board/write" onsubmit="return validation();" method="post"><br>
	이메일 : <input type="email" id="email" name="email"/><br>
	비밀번호 : <input type="password" id="pwd" name="pwd" /><br>
	본문 : <textarea id="content" name="content"></textarea><br>
	<input type="submit" value="방명록 추가"/>
</form>
</body>
</html>