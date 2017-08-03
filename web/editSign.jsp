<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script> 
   <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> 
<style>
/* Full-width input fields */
input[type=text], input[type=password] {
	width: 100%;
	padding: 12px 20px;
	margin: 8px 0;
	display: inline-block;
	border: 1px solid #ccc;
	box-sizing: border-box;
}

/* Set a style for all buttons */
button {
	background-color: #4CAF50;
	color: white;
	padding: 14px 20px;
	margin: 8px 0;
	border: none;
	cursor: pointer;
	width: 100%;
}

/* Extra styles for the cancel button */
.cancelbtn {
	padding: 14px 20px;
	background-color: #f44336;
}

/* Float cancel and signup buttons and add an equal width */
.cancelbtn, .signupbtn {
	float: left;
	width: 50%;
}

.auth {
	float: right;
	width: 25%;
}

/* Add padding to container elements */
.container {
	padding: 16px;
}

.outter {
	width: 30%;
	margin: auto;
	padding-top: 3%;
}

/* Clear floats */
.clearfix::after {
	clear: both;
}

.clearfix {	
	height:50px;
}

.auth {
	float: both;
}

.line {
	height: 1px;
	background-color: #ccc;
	width: 100%;
	position: relative;
}

.text {
	display: inline-block;
	background-color: #FFFFFF;
	font-size: 14px;
	padding-left: 7px;
	padding-right: 7px;
	position: absolute;
	color: #3D3D66;
	left: 47%;
	top: -1000%;
	position: absolute;
}

/* Change styles for cancel button and signup button on extra small screens */
@media screen and (max-width: 300px) {
	.cancelbtn, .signupbtn, .auth {
		width: 100%;
	}
}
</style>

<script type="text/javascript" src="views/js/jquery-3.2.1.min.js"></script>
<script type="text/javascript">
	$(function() {
		
	});
</script>
</head>

<body>

	<div class="outter">
		<h2>회원 정보수정</h2>
		<div style="border: 1px solid #ccc">
			<div class="container">
				<input type="text" placeholder="인증번호" name="inputauth" required
					style="display: none;"> <input type="password"
					placeholder="비밀번호" name="psw" required> <input
					type="password" placeholder="비밀번호 확인" name="psw-repeat" required>
				<input type="text" placeholder="닉네임" name="nick" required>
				 <input	type="text" placeholder="연락처" name="phone" required>

				<div class="clearfix">
					<button type="button" class="cancelbtn" name="cancle">취소</button>
					<button type="submit" class="signupbtn" name="editSign">정보수정</button>
				</div>				

			</div>

		</div>
	</div>

</body>
</html>