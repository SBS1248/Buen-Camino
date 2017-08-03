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
	margin-bottom:100%;
}
.clearfix{
	margin-bottom:25%;
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

.radio
{
	text-align:center;
	margin-top:5%;
	margin-bottom:5%;
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
		var authFlag=false;
		var authNumber=null;
		
		$(':button[name=buttonauth]').click(function() {
			authFlag=true;
			authNumber=Math.floor(Math.random()*1000000);
			
			var email=$(":input[name=email]").val();
			var auth={"email":email,"number":authNumber};
			
			
			if(email.length!=0)
			{						
				$.ajax({
					url:"/Floracion/memail",
					type:'POST',
					data:auth,
					success:function()
					{
						alert(email+"로 인증번호가 전송되었습니다. \n지금부터 3분까지만 회원가입이 가능합니다.\n이메일이 오지 않았다면 잠시 기다리시거나 회원가입을 다시 시도해주세요.");
						$(this).attr('disabled', 'disabled');
						dailyMissionTimer();
						$(':input[name=inputauth]').css('display', 'block');
						$(':input[name=inputauth]').attr('required', true);
					},
					error:function()
					{
						alert("올바르지 않은 이메일 입니다. \n이메일을 다시 입력해주세요.");
					}
				});				
			}
			else
			{
				alert("e-mail을 입력하세요.");
			}
			
			
			
		});

		function dailyMissionTimer() {
			var time = 180;
			var minutes, seconds;

			interval = setInterval(function() {
				minutes = parseInt(time / 60, 10);
				seconds = parseInt(time % 60, 10);

				minutes = minutes < 10 ? "0" + minutes : minutes;
				seconds = seconds < 10 ? "0" + seconds : seconds;

				$(':button[name=buttonauth]').text(minutes + ":" + seconds);

				if (--time < 0) {
					time = 0;
					$(':button[name=signup]').attr('disabled', 'disabled');
					$(':button[name=signup]').text('회원가입 실패');
					$(':button[name=buttonauth]').text("시간 초과");
					clearInterval(interval);
				}

			}, 1000);
		}
		
		$(':button[name=signup]').click(function(){

			
		 					
			if(authFlag)
			{
				var radio=$(":input:radio[name=information]:checked").val();
				
				var authNum=$(":input[name=inputauth]");
				var email=$(":input[name=email]");
				var pwd1=$(":input[name=psw]");
				var pwd2=$(":input[name=psw-repeat]");
				var nick=$(":input[name=nick]");							
				var phone=$(":input[name=phone]");
				
				var member={"radio":radio,"email":email.val(),"pwd1":pwd1.val(),"nick":nick.val(),"phone":phone.val()};
						
				if(!email.val()) email.css("border-color","red");
				else email.css("border-color","#ccc");
				
				
				if(!(authNum.val()&&authNum.val()==authNumber)) authNum.css("border-color","red");
				else authNum.css("border-color","#ccc");
				
				if(!pwd1.val()) pwd1.css("border-color","red");
				else pwd1.css("border-color","#ccc");
				
				if(!(pwd2.val()&&pwd1.val()==pwd2.val())) pwd2.css("border-color","red");
				else pwd2.css("border-color","#ccc");

				if(!nick.val()) nick.css("border-color","red");
				else nick.css("border-color","#ccc");
							
				if(!phone.val()) phone.css("border-color","red");
				else phone.css("border-color","#ccc");
				
				if(email.val()&&pwd1.val()&&pwd2.val()&&nick.val()&&phone.val()&&pwd1.val()===pwd2.val()&&authNum.val()&&authNum.val()==authNumber)
				{
					$.ajax({
						url:"/Floracion/minsert",
						type:'POST',
						data:member,
						dataType:"text",
						success:function(isFail)
						{		
							if(isFail==-1)
							{
								alert("가입한 이메일이 존재합니다.");
							}
							else
							{
								alert("카테고리 페이지로 넘어가라");
							}
						},
						error:function(isFail)
						{
							alert("ERROR!!");									
						}
					});
				}
			}
			else
			{
				alert("이메일 인증이 필요합니다.");
			}
		}); 
	});
</script>
</head>

<body>

	<div class="outter">
		<h2>Floración 회원가입</h2>
		<div style="border: 1px solid #ccc">
			<div class="container">
					<div class="radio">
							<input type="radio" name="information" value="H">후원자
							<input type="radio"	name="information" value="B" checked>참여자
					</div>
					<input type="text" placeholder="이메일" name="email" required>
					<button type="button" name="buttonauth" class="auth">인증</button>
					<input type="text" placeholder="인증번호" name="inputauth"
						style="display: none;"> <input type="password"
						placeholder="비밀번호" name="psw" required> <input
						type="password" placeholder="비밀번호 확인" name="psw-repeat" required>
					<input type="text" placeholder="닉네임" name="nick" required> <input
						type="text" placeholder="연락처" name="phone" required>
				<p>
					계정 생성은 본사의 <a href="#">개인정보 약관</a>에 동의함을 의미합니다.
				</p>

				<div class="clearfix">
					<button type="button" class="cancelbtn" name="cancle">취소</button>
					<button type="submit" class="signupbtn" name="signup">회원가입</button>
				</div>
				

				<br>

				<div class="line">
					<div class="text">
						<span>Or</span>
					</div>
				</div>

				<br> 다른 방법으로 로그인 찾기

			</div>

		</div>
	</div>

</body>
</html>