<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="member.vo.Member" %>
<%System.out.println("여기는 jsp : "+session); %>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript" src="views/js/jquery-3.2.1.min.js"></script>
<script type="text/javascript">
	var flag=true;
	var userEmail=null;
	var userNick=null;
	
	$(function(){
		$('#test').text("<%=session.getAttribute("email")%>");
		$(':button[name=findMember]').click(function() {
				if(flag)
				{
					$(this).attr('disabled','disabled');
					$(':input[name=inputauth]').css('display', 'block');
					
					setTimeout(function(){
						$(':button[name=findMember]').removeAttr('disabled');
					},3000);				
					
					dailyMissionTimer();
					alert(flag);
					flag=false;
				}
				else
				{
					alert(flag);
				}			
		});
			
		$(':button[name=login]').click(function(){
			
			var email=$(":input[name=email]");
			var pwd=$(":input[name=psw]");
					
			var logIn={"email":email.val(),"pwd":pwd.val()};
			 
			if(!email.val()) email.css("border-color","red");
			else email.css("border-color","#ccc");			
			
			if(!pwd.val()) pwd.css("border-color","red");
			else pwd.css("border-color","#ccc");
			 
			if(email.val()&&pwd.val())
			{
				$.ajax({
					url:"/Floracion/mlogin",
					type:'POST',
					data:logIn,
					dataType:"json",
					success:function(member)
					{	
						if(member.member!=null)
						{
							userEmail="<%=session.getAttribute("email")%>";
							userNick="<%=session.getAttribute("nick")%>";
							
							alert(member.member+"님 환영합니다.");
							$('#id01').css('display', 'none');
							
							
							alert("<%=session.getAttribute("member")%>");
							
							alert("메인 페이지를 띄워라"+userEmail+"/"+userNick);
							window.location.reload();
						}
						else alert("이메일 또는 비밀번호 오류!!");
						
					},
					error:function()
					{
						alert("ERROR!!");									
					}
				});
			}
			
		});
	});

	function dailyMissionTimer() {
		var time = 10;
		var minutes, seconds;

		interval = setInterval(function() {
			minutes = parseInt(time / 60, 10);
			seconds = parseInt(time % 60, 10);

			minutes = minutes < 10 ? "0" + minutes : minutes;
			seconds = seconds < 10 ? "0" + seconds : seconds;

			$(':button[name=findMember]').text(minutes + ":" + seconds+" 내에 클릭");

			if (--time < 0) {
				time = 0;		
				$(':button[name=findMember]').attr('disabled','disabled');
				$(':button[name=findMember]').text("시간 초과");
				clearInterval(interval);
			}

		}, 1000);
	}
	
	
	function findInfo()
	{
		$('#id02').css('display', 'block');
		$('#id01').css('display', 'none');
	}
</script>

<style>
/* Full-width input fields */
@import
	url(https://fonts.googleapis.com/earlyaccess/nanumbrushscript.css);

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

button:hover {
	opacity: 0.8;
}

/* Extra styles for the cancel button */
.cancelbtn {
	width: auto;
	padding: 10px 18px;
	background-color: #f44336;
}

/* Center the image and position the close button */
.imgcontainer {
	text-align: center;
	margin: 24px 0 12px 0;
	position: relative;
	font-family: 'Nanum Brush Script', serif;
	font-size: 600%;
	font-weight: 800;
	color: #f27e9d;
}

img.avatar {
	width: 40%;
	border-radius: 50%;
}

.container {
	padding: 16px;
}

span.psw {
	text-align: right;
}

/* The Modal (background) */
.modal {
	display: none; /* Hidden by default */
	position: fixed; /* Stay in place */
	z-index: 1; /* Sit on top */
	left: 0;
	top: 0;
	width: 100%; /* Full width */
	height: 100%; /* Full height */
	overflow: auto; /* Enable scroll if needed */
	background-color: rgb(0, 0, 0); /* Fallback color */
	background-color: rgba(0, 0, 0, 0.4); /* Black w/ opacity */
	padding-top: 60px;
}

/* Modal Content/Box */
.modal-content {
	background-color: #fefefe;
	margin: 5% auto 15% auto;
	/* 5% from the top, 15% from the bottom and centered */
	border: 1px solid #888;
	width: 35%; /* Could be more or less, depending on screen size */
}

/* The Close Button (x) */
.close {
	position: absolute;
	right: 25px;
	top: 0;
	color: #000;
	font-size: 35px;
	font-weight: bold;
}

.close:hover, .close:focus {
	color: red;
	cursor: pointer;
}

.line {
	height: 1px;
	background-color: #ccc;
	width: 90%;
	position: relative;
	margin-left:5%;
	margin-right:5%;
}

.text {
	display: inline-block;
	background-color: white;
	font-size: 14px;
	padding-left: 7px;
	padding-right: 7px;
	position: absolute;
	color: #3D3D66;
	left: 47%;
	top: -1000%;
	position: absolute;
}

/* Add Zoom Animation */
.animate {
	-webkit-animation: animatezoom 0.6s;
	animation: animatezoom 0.6s
}

@
-webkit-keyframes animatezoom {
	from {-webkit-transform: scale(0)
}

to {
	-webkit-transform: scale(1)
}

}
@
keyframes animatezoom {
	from {transform: scale(0)
}

to {
	transform: scale(1)
}

}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
	span.psw {
		display: block;
		float: none;
	}
	.cancelbtn {
		width: 100%;
	}
}
</style>




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
