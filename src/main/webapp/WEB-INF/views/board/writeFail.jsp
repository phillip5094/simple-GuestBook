<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<style>
* {
	-webkit-box-sizing: border-box;
	box-sizing: border-box;
}

body {
	padding: 0;
	margin: 0;
}

#notfound {
	position: relative;
	height: 100vh;
}

#notfound .notfound {
	position: absolute;
	left: 50%;
	top: 50%;
	-webkit-transform: translate(-50%, -50%);
	-ms-transform: translate(-50%, -50%);
	transform: translate(-50%, -50%);
}

.notfound {
	max-width: 520px;
	width: 100%;
	line-height: 1.4;
	text-align: center;
}

.notfound .notfound-404 {
	position: relative;
	height: 200px;
	margin: 0px auto 20px;
	z-index: -1;
}

.notfound .notfound-404 h1 {
	font-family: 'Montserrat', sans-serif;
	font-size: 236px;
	font-weight: 200;
	margin: 0px;
	color: #211b19;
	text-transform: uppercase;
	position: absolute;
	left: 50%;
	top: 50%;
	-webkit-transform: translate(-50%, -50%);
	-ms-transform: translate(-50%, -50%);
	transform: translate(-50%, -50%);
}

.notfound label {
	font-family: 'Montserrat', sans-serif;
	display: inline-block;
	font-weight: 700;
	text-decoration: none;
	color: #fff;
	text-transform: uppercase;
	padding: 13px 23px;
	background: #ff6300;
	font-size: 18px;
	-webkit-transition: 0.2s all;
	transition: 0.2s all;
}

@media only screen and (max-width: 767px) {
	.notfound .notfound-404 h1 {
		font-size: 148px;
	}
}

@media only screen and (max-width: 480px) {
	.notfound .notfound-404 {
		height: 148px;
		margin: 0px auto 10px;
	}
	.notfound .notfound-404 h1 {
		font-size: 86px;
	}
	.notfound .notfound-404 h2 {
		font-size: 16px;
	}
	.notfound a {
		padding: 7px 15px;
		font-size: 14px;
	}
}
</style>
<head>
<meta charset="utf-8">
<meta http-equiv="Refresh" content="1; url=/board/list">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

<title>방명록 작성 실패</title>

<!-- Google font -->
<link
	href="https://fonts.googleapis.com/css?family=Montserrat:200,400,700"
	rel="stylesheet">

<!-- Custom stlylesheet -->
<link type="text/css" rel="stylesheet" href="css/style.css" />

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
          <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->

</head>

<body>

	<div id="notfound">
		<div class="notfound">
			<div class="notfound-404">
				<h1>Oops!</h1>
			</div>
			<label> 유효한 이메일이 아닙니다.<br /> 방명록 화면으로 돌아가겠습니다.
			</label>
		</div>
	</div>

</body>
<!-- This templates was made by Colorlib (https://colorlib.com) -->

</html>
