<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert Member</title>
		<link rel="stylesheet" href="../css/main.css" type="text/css">
		<script src="../js/jquery-3.2.1.min.js"></script>
	</head>
	
	<body>
		<div class="background-window">
			<div class="in-window">
				<h3 class="in-window-head">회원가입</h3>
				
				<div class="in-window-content">
					<p align="center">
						<input type="radio" name="information" checked="checked" value="H">후원자
						<input type="radio"	name="information" value="B">참여자
					</p>
		
		
					<span class="inputs">아이디 </span> <input type="text" class="in-window-content-input" name="uid">
					<br><br>
					<span class="inputs">암호 </span> <input type="text" class="in-window-content-input" name="upwd">
					<br><br>
					<span class="inputs">암호확인 </span> <input type="text" class="in-window-content-input" name="upwd">
					<br><br>
					<span class="inputs">닉네임</span> <input type="text" class="in-window-content-input" name="unick">
					<br><br>
					<span class="inputs">아이디 </span> <input type="text" class="in-window-content-input" name="uemail">
					<br><br>
					<span class="inputs">연락처 </span> <input type="text" class="in-window-content-input" name="uphone">
					
					<div align="center">
						<input type="button" class="in-window-content-button" value="가입" onclick="">
						 &nbsp; &nbsp;
						<input type="button" class="in-window-content-button" value="취소" onclick="">
					</div>
					
					<br>
				</div>
				
			</div>
			
		</div>
	
	
	</body>
</html>