<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Floracion</title>
		<link rel="stylesheet" href="views/css/main.css" type="text/css">
		<script type="text/javascript" src="views/js/jquery-3.2.1.min.js"></script>
		<script src="views/js/main.js"></script>			
	</head>
	
	
	<body>
		<input type="reset" id="reset">
		<button id="insertM"><h1>회원가입</h1></button>
		
		<!--회원가입-->
		<div class="background-window" id="bWindow1">
			<div class="in-window">
				<h3 class="in-window-head">회원가입</h3>
				
				<div class="in-window-content">					
						<div class="radio">
							<input type="radio" name="information" value="H">후원자
							<input type="radio"	name="information" value="B" checked>참여자
						</div>
						<br>
						
						<div>
							<table align="center" style="width:90%">
								<tr>
									<td>
										<span class="inputs">이메일 </span> <input type="email" class="in-window-content-input" name="uemail">
									</td>
									<td style="text-align:center;">
										<input type="button" class="authButton" value="인증" id="duplicate">
									</td>
								</tr>
								<tr>
									<td>
										<span class="inputs">암호 </span> <input type="password" class="in-window-content-input" name="upwd1">
									</td>
								</tr>
								<tr>
									<td>
										<span class="inputs">암호확인 </span> <input type="password" class="in-window-content-input" name="upwd2">
									</td>
								</tr>
								
								<tr>
									<td>
										<span class="inputs">닉네임</span> <input type="text" class="in-window-content-input" name="unick">
									</td>
								</tr>
								
								<tr>
									<td>
										<span class="inputs">연락처 </span> <input type="text" class="in-window-content-input" name="uphone">
									</td>
								</tr>
							</table>
						</div>
						
						<div>
						
						</div>
						
						<div class="in-window-button-div">						
							<input type="submit" class="selectButton" value="가입" id="Minsert">
							 &nbsp; &nbsp;
							<input type="button" class="selectButton" value="취소" name="cancle">
						</div>
					
					<br>
				</div>
				
			</div>
			
		</div>

		<!--카테고리 전-->
		<div class="background-window" id="bWindow2">
			<div class="in-window">
				<h3 class="in-window-head">가입완료</h3>
				
				<div class="in-window-content">
							
						<p class="inputs">
							Floración에 오신걸 환영합니다. <br>
							다음을 눌러 카테고리를 선택해주세요. <br>
							내 정보 수정에서 언제든지 바꿀 수 있습니다.  
						</p> 
				</div>
				<div class="in-window-button-div">
							<input type="submit" class="in-window-content-button" value="다음" id="Cinsert">
							 &nbsp; &nbsp;
							<input type="button" class="in-window-content-button" value="취소" name="cancle">
						</div>				
			</div>			
		</div>
		
		<!-- 인증 -->
		<div class="background-window" id="bWindow3">
			<div class="in-window" style="width:18%;">
				<h3 class="in-window-head">인증</h3>				
				<div>
					<table>
						<tr>
							<td>
								<span class="inputs">인증번호 </span> <input type="text" name="auth" class="in-window-content-input">
							</td>
						</tr>
						
						<tr>
							<td style="text-align:center;">
								<span id="time">&nbsp;</span>
							</td>
						</tr>
						
						<tr>
							<td>
								<div class="in-window-button-div">				
									<input type="submit" class="selectButton" value="인증" id="Econfirm" style="margin-top:0;">
									 &nbsp; &nbsp;
									<input type="button" class="selectButton" value="취소" name="cancle" style="margin-top:0;">
								</div>
							</td>
						</tr>
					</table>
										 
				</div>				
								
			</div>			
		</div>

		<!-- 카테고리선택 -->
		<div class="background-window" id="bWindow4" >
			<div class="in-window" style="width:45%;height:88%;">
				<h3 class="in-window-head">카테고리</h3>
				<span class="inputs">3개까지 선택가능합니다. 내 정보 수정에서 변경 가능합니다.</span>
				<div class="in-window-content">

				<table id="cateTable">
					<tr>
						<td>
							<table>
						<tr>
							<th colspan="3" align="center">Game</th>
						</tr>
						<tr>
							<td><input type="checkbox" name="cate" value="online">온라인게임</td>
						</tr>
						<tr>
							<td><input type="checkbox" name="cate" value="mobile">모바일게임
							</td>
						</tr>
						<tr>
							<td><input type="checkbox" name="cate" value="ghard">게임기</td>
						</tr>
						<tr>
							<td><input type="checkbox" name="cate" value="bgame">보드게임</td>
						</tr>
						<tr>
							<td><input type="checkbox" name="cate" value="g_etc">기타</td>
						</tr>
					</table>
						
						
						
						</td>
						<td>
							<table>
						<tr>
							<th colspan="3" align="center">Technology</th>
						</tr>
						<tr>
							<td><input type="checkbox" name="cate" value="3d">3D프린트</td>
						</tr>
						<tr>
							<td><input type="checkbox" name="cate" value="diy">DIY</td>
						</tr>
						<tr>
							<td><input type="checkbox" name="cate" value="iot">사물인터넷</td>
						</tr>
						<tr>
							<td><input type="checkbox" name="cate" value="vr">가상현실</td>
						</tr>
						<tr>
							<td><input type="checkbox" name="cate" value="wear">웨어러블</td>
						</tr>
						<tr>
							<td><input type="checkbox" name="cate" value="hard">하드웨어</td>
						</tr>
						<tr>
							<td><input type="checkbox" name="cate" value="work">워크샾</td>
						</tr>
						<tr>
							<td><input type="checkbox" name="cate" value="expo">박람회</td>
						</tr>
						<tr>
							<td><input type="checkbox" name="cate" value="t_ect">기타</td>
						</tr>
					</table>
						</td>
						<td>
							<table>
						<tr>
							<th colspan="3" align="center">Art</th>
						</tr>
						<tr>
							<td><input type="checkbox" name="cate" value="music">음악</td>
						</tr>
						<tr>
							<td><input type="checkbox" name="cate" value="publicart">공공예술</td>
						</tr>
						<tr>
							<td><input type="checkbox" name="cate" value="perform">행위예술</td>
						</tr>
						<tr>
							<td><input type="checkbox" name="cate" value="sculpture">조각</td>
						</tr>
						<tr>
							<td><input type="checkbox" name="cate" value="picture">회화</td>
						</tr>
						<tr>
							<td><input type="checkbox" name="cate" value="performance">공연</td>
						</tr>
						<tr>
							<td><input type="checkbox" name="cate" value="image">영상</td>
						</tr>
						<tr>
							<td><input type="checkbox" name="cate" value="a_ect">기타</td>
						</tr>
					</table>
						</td>
						<td>
							<table>
						<tr>
							<th colspan="3" align="left">Publication</th>
						</tr>
						<tr>
							<td><input type="checkbox" name="cate" value="scholarship">학술</td>
						</tr>
						<tr>
							<td><input type="checkbox" name="cate" value="child">어린이</td>
						</tr>
						<tr>
							<td><input type="checkbox" name="cate" value="novel">소설</td>
						</tr>
						<tr>
							<td><input type="checkbox" name="cate" value="nonovel">비소설</td>
						</tr>
						<tr>
							<td><input type="checkbox" name="cate" value="foreign">외서</td>
						</tr>
						<tr>
							<td><input type="checkbox" name="cate" value="poem">시</td>
						</tr>
						<tr>
							<td><input type="checkbox" name="cate" value="pcast">팟캐스트</td>
						</tr>
						<tr>
							<td><input type="checkbox" name="cate" value="exam">수험서</td>
						</tr>
						<tr>
							<td><input type="checkbox" name="cate" value="p_etc">기타</td>
						</tr>
					</table>
						</td>
						<td>
							<table>
						<tr>
							<th colspan="3" align="center">Design</th>
						</tr>
						<tr>
							<td><input type="checkbox" name="cate" value="interior">인테리어</td>
						</tr>
						<tr>
							<td><input type="checkbox" name="cate" value="graphy">켈리그라피</td>
						</tr>
						<tr>
							<td><input type="checkbox" name="cate" value="graphic">그래픽디자인</td>
						</tr>
						<tr>
							<td><input type="checkbox" name="cate" value="plan">설계</td>
						</tr>
						<tr>
							<td><input type="checkbox" name="cate" value="product">제품</td>
						</tr>
						<tr>
							<td><input type="checkbox" name="cate" value="landscape">조경</td>
						</tr>
						<tr>
							<td><input type="checkbox" name="cate" value="d_ect">기타</td>
						</tr>
					</table>
						</td>
					</tr>
				
					<tr>
						<td>
							<table>
						<tr>
							<th colspan="3" align="left">Fashion</th>
						</tr>
						<tr>
							<td><input type="checkbox" name="cate" value="accessory">악세사리</td>
						</tr>
						<tr>
							<td><input type="checkbox" name="cate" value="cloth">의류</td>
						</tr>
						<tr>
							<td><input type="checkbox" name="cate" value="shoe">신발</td>
						</tr>
						<tr>
							<td><input type="checkbox" name="cate" value="sportswear">스포츠웨어</td>
						</tr>
						<tr>
							<td><input type="checkbox" name="cate" value="baby">유아</td>
						</tr>
						<tr>
							<td><input type="checkbox" name="cate" value="s_etc">기타</td>
						</tr>
						<tr>
							<td>&nbsp;</td>
						</tr>
					</table>
						</td>
						<td>
							<table>
						<tr>
							<th colspan="3" align="center">Travel</th>
						</tr>
						<tr>
							<td><input type="checkbox" name="cate"
								value="backpacktravel">배낭여행</td>
						</tr>
						<tr>
							<td><input type="checkbox" name="cate" value="grouptravel">패키지여행</td>
						</tr>
						<tr>
							<td><input type="checkbox" name="cate" value="historytravel">역사탐방</td>
						</tr>
						<tr>
							<td><input type="checkbox" name="cate" value="foodtravel">음식기행</td>
						</tr>
						<tr>
							<td><input type="checkbox" name="cate" value="guidetravel">가이딩</td>
						</tr>
						<tr>
							<td><input type="checkbox" name="cate" value="traveleq">여행용품</td>
						</tr>
						<tr>
							<td><input type="checkbox" name="cate" value="tr_etc">기타</td>
						</tr>
					</table>
						</td>
						<td>
							<table>
						<tr>
							<th colspan="3" align="center">Craftsman</th>
						</tr>
						<tr>
							<td><input type="checkbox" name="cate" value="tatoo">타투</td>
						</tr>
						<tr>
							<td><input type="checkbox" name="cate" value="leather">가죽세공</td>
						</tr>
						<tr>
							<td><input type="checkbox" name="cate" value="gem">보석세공</td>
						</tr>
						<tr>
							<td><input type="checkbox" name="cate" value="tradition">전통기술</td>
						</tr>
						<tr>
							<td><input type="checkbox" name="cate" value="brewing">양조</td>
						</tr>
						<tr>
							<td><input type="checkbox" name="cate" value="brewing">기타</td>
						</tr>
					</table>
						</td>
						<td>
							<table>
						<tr>
							<th colspan="3" align="center">Self Development</th>
						</tr>
						<tr>
							<td><input type="checkbox" name="cate" value="license">자격증</td>
						</tr>
						<tr>
							<td><input type="checkbox" name="cate" value="contest">공모전</td>
						</tr>
						<tr>
							<td><input type="checkbox" name="cate" value="study">스터디</td>
						</tr>
						<tr>
							<td><input type="checkbox" name="cate" value="discuss">토론</td>
						</tr>
						<tr>
							<td><input type="checkbox" name="cate" value="language">외국어</td>
						</tr>
						<tr>
							<td><input type="checkbox" name="cate" value="instrument">악기연주</td>
						</tr>
						<tr>
							<td><input type="checkbox" name="cate" value="s_etc">기타</td>
						</tr>
					</table>
						</td>
						<td>
							<table>
						<tr>
							<th colspan="3" align="center">Exercise</th>
						</tr>
						<tr>
							<td><input type="checkbox" name="cate" value="diet">다이어트</td>
						</tr>
						<tr>
							<td><input type="checkbox" name="cate" value="body">보디빌딩</td>
						</tr>
						<tr>
							<td><input type="checkbox" name="cate" value="yoga">요가</td>
						</tr>
						<tr>
							<td><input type="checkbox" name="cate" value="equipment">운동기구</td>
						</tr>
						<tr>
							<td><input type="checkbox" name="cate" value="cycle">자전거</td>
						</tr>
						<tr>
							<td><input type="checkbox" name="cate" value="competition">대회</td>
						</tr>
						<tr>
							<td><input type="checkbox" name="cate" value="running">러닝</td>
						</tr>
						<tr>
							<td><input type="checkbox" name="cate" value="hiking">하이킹</td>
						</tr>
						<tr>
							<td><input type="checkbox" name="cate" value="water">워터스포츠</td>
						</tr>
						<tr>
							<td><input type="checkbox" name="cate" value="e_ect">기타</td>
						</tr>
					</table>
						</td>
					</tr>
				
				</table>
				

				<div align="center" style="clear:both;">
							<input type="submit" class="selectButton" value="선택" id="Cselect" style="margin-top:0;">
							 &nbsp; &nbsp;
							<input type="button" class="selectButton" value="취소" name="cancle" style="margin-top:0;">
						</div>					
					<br>
				</div>				
			</div>			
		</div>

			
	</body>
</html>