<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="member.vo.Member" %>
<%System.out.println("여기는 jsp : "+session); %>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript" src="views/js/jquery-3.2.1.min.js"></script>
<link rel="stylesheet" href="views/css/login.css" type="text/css">
<script src="views/js/login.js"></script>	
</head>

<body>

	<h2>Modal Login Form</h2>
	<span id="test"></span>
	<button onclick="document.getElementById('id01').style.display='block'"
		style="width: auto;">로그인</button>

	<div id="id01" class="modal">

		<div class="modal-content animate">
			<div class="imgcontainer">
				Floración <span
					onclick="document.getElementById('id01').style.display='none'"
					class="close" title="Close Modal">&times;</span>
			</div>
			<div class="container">
				<input type="text" placeholder="이메일" name="email" required>

				<input type="password" placeholder="비밀번호" name="psw" required>

				<button name="login">로그인</button>
			</div>
			
			<div class="line">
					<div class="text">
						<span>Or</span>
					</div>
				</div>

				<br> 다른 방법으로 로그인 찾기

			<div class="container"	style="background-color: #f1f1f1; text-align: right;">
				<span class="psw">아직 Floración의 회원이 아니신가요? 	<a name="sigUp">회원 가입</a> 
				<br>아이디 또는 비밀번호가 기억나지 않나요?	 <a href="javascript:void(0)" onclick="findInfo();">회원 정보 찾기</a></span><br>
				
			</div>
			
		</div>
	</div>
	
	<div id="id02" class="modal">

		<form class="modal-content animate">
			<div class="imgcontainer">
				Floración <span
					onclick="document.getElementById('id02').style.display='none'"
					class="close" title="Close Modal">&times;</span>
			</div>
			<div class="container">
				<span>가입 당시 사용했던 이메일을 입력해주세요</span>
				<input type="text" placeholder="이메일" name="findemail" required>
				<input type="text" placeholder="인증번호" name="inputauth" required style="display: none;">
				
				<button type="submit" name="findMember">찾기</button>
				<!--  찾기 누르면 디비에서 검색해서 결과 알려주기 ||| 있을 때 = 인증절차 진행, 없을 때 회원 가입 페이지로 이동-->
				
			</div>
			
			
			
		</form>
	</div>
	
	
	<script>
// Get the modal
var modal1 = document.getElementById("id01");
var modal2 = document.getElementById("id02");

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == modal1) {
        modal1.style.display = "none";
    }
    if (event.target == modal2) {
        modal2.style.display = "none";
    }
}
</script>

</body>
</html>
