<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="member.vo.Member" %>
<%session.setAttribute("trying",0); %>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript" src="views/js/jquery-3.2.1.min.js"></script>
<link rel="stylesheet" href="views/css/login.css" type="text/css">
<script src="views/js/login.js"></script>	

</head>

<body>

	<div id="id01" class="modal">
		<div class="modal-content animate">
			<div class="imgcontainer">
				Floración 
			</div>
			<div style="text-align:center;">
					<input type="radio" name="information" value="H">후원자
					<input type="radio"	name="information" value="B" checked>참여자
			</div>
			<div class="container">
				<input type="text" placeholder="이메일" name="email" required>

				<input type="password" placeholder="비밀번호" name="psw" required>

				<button name="login" onclick="">로그인</button>
			</div>
			
			<div class="line">
					<div class="text">
						<span>Or</span>
					</div>
				</div>

				<br> 다른 방법으로 로그인 찾기

			<div class="container"	style="background-color: #f1f1f1; text-align: right;">
				<span class="psw">아직 Floración의 회원이 아니신가요? 	<a href="javascript:void(0)" onclick="signIn();">회원 가입</a> 
				<br>아이디 또는 비밀번호가 기억나지 않나요?	 <a href="javascript:void(0)" onclick="findInfo();">회원 정보 찾기</a></span><br>
				
			</div>
			
		</div>
	</div>
	
	
	

</body>
</html>
