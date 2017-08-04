<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Floracion</title>
<style type="text/css">
* { //
	border: 1px red solid;
}

body {
	background-color: #F2ECE9;
	margin: 10px;
}

form {
	display: inline-block;
	position: relative;
}

form input {
	padding-right: 4.6em;
}

form button {
	position: absolute;
	top: 0;
	right: 0;
	width: 4.4em;
}

#iptsrch {
	display: block;
	width: 520px;
	height: 25px;
	border-radius: 10px;
	border: 0px;
	width: 480px;
}

#srchbtn {
	background-color: #e0e0e0;
	height: 27px;
}

input {
	font-size: 16px;
}

#cover {
	display: block;
	background-color: white;
	width: 90%;
	height: 500px;
	margin: auto;
	margin-top: 20px;
}

#cover_text {
	margin-left : 60%;
	margin-right : 20px;
	margin-top : 40px;
}

#cover_h{
	text-align : center;
}

#cover_p {
	text-align : center;
}



input[type="radio"] {
	display: none;
}

input[type="radio"]+label {
	
}

input[type="radio"]+label span {
	display: inline-block;
	width: 19px;
	height: 19px;
	margin: -2px 5px 0 0;
	vertical-align: middle;
	background:
		url(https://s3-us-west-2.amazonaws.com/s.cdpn.io/210284/check_radio_sheet.png)
		-38px top no-repeat;
	cursor: pointer;
}

input[type="radio"]:checked+label span {
	background:
		url(https://s3-us-west-2.amazonaws.com/s.cdpn.io/210284/check_radio_sheet.png)
		-57px top no-repeat;
}
</style>
</head>
<body>


	<form>
		<input type="text" id="iptsrch" placeholder="프로젝트 검색하기">
		<button id="srchbtn">검색</button>
	</form>

	<div id="cover">
		<div id="cover_text">
			<div id="cover_h">
				<h1>ART</h1>
			</div>
			<div id="cover_p">
				<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
					Nulla vitae nisl lectus. Etiam finibus, nunc vitae hendrerit
					aliquet, nibh ipsum laoreet tortor, a elementum est elit efficitur
					nibh. Proin iaculis tincidunt lobortis.</p>
			</div>
		</div>

	</div>

	<div class="radio-container">
		<br> <input type="radio" id="r1" name="project" /> <label
			for="r1"><span></span>최신 프로젝트</label> <input type="radio" id="r2"
			name="project" /> <label for="r2"><span></span>마감 임박 프로젝트</label> <input
			type="radio" id="r3" name="project" /> <label for="r3"><span></span>인기
			프로젝트</label>
	</div>

	<table>
		<tr>
			<td>1</td>
			<td>2</td>
			<td>3</td>
		</tr>
		<tr>
			<td>4</td>
			<td>5</td>
			<td>6</td>
		</tr>
	</table>



</body>
</html>