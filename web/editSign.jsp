<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 정보수정</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script> 
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> 
<script type="text/javascript" src="views/js/jquery-3.2.1.min.js"></script>
<link rel="stylesheet" href="views/css/editSign.css" type="text/css">
<script src="views/js/editSign.js"></script>	
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
					<button type="submit" class="signupbtn" name="edit">정보수정</button>
				</div>				

			</div>

		</div>
	</div>

</body>
</html>