<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Floracion</title>


<style type="text/css">
.head1 {
	background-color: #99828a
}

.head2 {
	background-color: #99828a
}

.head3 {
	background-color: #99828a
}

.head4 {
	background-color: #99828a
}
</style>

<SCRIPT language=JavaScript> 

function getTime() { 
now = new Date(); 
dday = new Date(2017,07,28,20,00,00); 

days = (dday - now) / 1000 / 60 / 60 / 24; 
daysRound = Math.floor(days); 
hours = (dday - now) / 1000 / 60 / 60 - (24 * daysRound); 
hoursRound = Math.floor(hours); 
minutes = (dday - now) / 1000 /60 - (24 * 60 * daysRound) - (60 * hoursRound); 
minutesRound = Math.floor(minutes); 
seconds = (dday - now) / 1000 - (24 * 60 * 60 * daysRound) - (60 * 60 * hoursRound) - (60 * minutesRound); 
secondsRound = Math.round(seconds);  


document.getElementById("counter2").innerHTML = minutesRound; 
document.getElementById("counter3").innerHTML = secondsRound; 
newtime = window.setTimeout("getTime();", 1000); 
} 

</SCRIPT>

<STYLE type=text/css>
#count {
	height: 100px;
	color: #000;
}

#bt {
	height: 16px;
	width: 30;
	padding-left: 60px;
	padding-top: 0px;
}
</STYLE>


</head>
<body>

	<h1 align="center">
		<a href="/Floracion/mtest">대문 페이지</a>
	</h1>


	<div
		style="border: 0px; width: 340px; height: 200px; background-color: #F2ECE9">

		<h3 class="head1" align="center">로그인페이지</h3>

		<h3 align="center">
			아이디 : <input type="text" name="userid">
		</h3>
		<h3 align="center">
			비밀번호 : <input type="text" name="userpwd">
		</h3>
		<p align="center">
			<input type="submit" value="회원가입">
			<button>아이디/비밀번호찾기</button>
		</p>
	</div>

	<br>
	<br>


	<div id="text1"
		style="border: 0px; width: 270px; height: 150px; background-color: #F2ECE9">
		<h3 class="head2" align="center">회원가입</h3>
		<h3 align="center">
			이메일 : <input type="text" name="useremail">
			<p align="center">
				<button>인증번호</button>
			</p>
		</h3>
	</div>

	<br>
	<br>
	<br>
	<br>
	<div id=count
		style="border: 0px; width: 400px; height: 135px; background-color: #F2ECE9">
		<h3 class="head3" align="center">인증번호확인</h3>
		<h3 align="center">
			인증번호 : <input type="text" name="userpwd"> <input
				type="submit" value="확인">
		</h3>

		<p align="center">
			<SPAN style="FONT: bold 12px Gulim; COLOR: #000" id=counter2></SPAN>
			<FONT style="FONT-FAMILY: '굴림'; size: 7px">분</FONT> <SPAN
				style="FONT: bold 12px Gulim; COLOR: #000" id=counter3></SPAN> <FONT
				style="FONT-FAMILY: '굴림'; size: 7px">초 남았습니다</FONT> <SPAN
				style="padding-left: 15px;"></SPAN>
		</p>

		<SCRIPT>getTime()</SCRIPT>

	</div>

	<br>
	<br>

	<div
		style="border: 0px; width: 350px; height: 400px; background-color: #F2ECE9">
		<h3 class="head4" align="center">회원정보입력</h3>
		<p align="center">
			<input type="radio" name="information" checked="checked" /> <span
				class="up">후원자</span>&nbsp;&nbsp; <input type="radio"
				name="information" /> <span class="up">참여자</span>
		</p>


		<h3>
			아이디 : <input type="text" name="userid">
		</h3>
		<h3>
			비밀번호 : <input type="text" name="userpwd">
		</h3>
		<h3>
			비밀번호확인 : <input type="text" name="userpwd">
		</h3>
		<h3>
			닉네임 : <input type="text" name="user">
		</h3>
		<h3>
			이메일 : <input type="text" name="useremail">
		</h3>
		<h3>
			연락처 : <input type="text" name="userphone">
		</h3>

		<p align="center">
			<input type="button" value="가입" onclick=""> <input
				type="button" value="취소" onclick="">
		</p>
	</div>

</body>
</html>





