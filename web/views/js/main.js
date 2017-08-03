$(function()
			  {
				var interval=null;
				$('#insertM').click(function()
						{//메인화면 버튼 클릭
							$('#bWindow1').css('display','block');
						});
				
				$(':input[name=cancle]').click(function()
					    {//취소 클릭시
							$('#bWindow1').css('display','none');
							$('#bWindow2').css('display','none');
							$('#bWindow3').css('display','none');
							$('#bWindow4').css('display','none');
							
							$(".in-window-content-input").css("border-color","white");
							$(":input[name=upwd2]").removeAttr('title');
							$(':input:not([type=submit],[type=button],[type=radio],[type=checkbox])').each(function(){$(this).val('');});
							$('input[name=cate]:checkbox').each(function(){$(this).removeAttr("disabled");$(this).prop('checked',false);});
							if(interval!=null)clearInterval(interval);
					    });
				
				$('#Cinsert').click(function()
						{//카테고리 설명 화면 버튼 클릭
							$('#bWindow2').css('display','none');
							$('#bWindow4').css('display','block');
						});
				
				$('input[name=cate]:checkbox').change(function()
						{//카테고리 설명 화면 버튼 클릭
							var limit=3;
							
							if($("input[name=cate]:checkbox:checked").length==limit)
							{
								$("input[name=cate]:checkbox:not(:checked)").attr("disabled", "disabled");
							}
							else
							{
								$("input[name=cate]:checkbox").removeAttr("disabled");
							}
							
						//	$('#bWindow4').css('display','none');
						});
				
				$('#Cselect').click(function()
						{
							var i, sum=0, tag=[], str="";
						    var chk = document.getElementsByName('cate');
						    var tot = chk.length;
						    for (i = 0; i < tot; i++) {
						        if (chk[i].checked == true) {
						            tag[sum] = chk[i].value;
						            sum++;
						        }
						    }
						    
						    if(tag.length > 0) str += "\n값 : "+tag.join(",");
						    alert(str);					
							
						});
				
				var number=null;
				var accept=false;
				
				$('#Econfirm').click(function()
					    {//번호 입력 후 인증 클릭시
							var auth=$(':input[name=auth]').val();
							
							alert(number+", "+auth);
							
							
							if(auth)
							{
								if(number==auth)
								{
									accept=true;
									alert("인증번호이 완료되었습니다. 회원 가입을 진행합니다.");
									$('#bWindow3').css('display','none');
									$('#bWindow1').css('display','block');
								}
								else
								{
									alert("인증번호가 다릅니다.");
								}
							}
							else
							{
								alert("인증번호를 입력하세요.");
							}							
					    });
				
				$('#duplicate').click(function()
					    {//인증 클릭시
					
							var email=$(":input[name=uemail]").val();
							number=Math.floor(Math.random()*1000000);										
							var auth={"email":email,"number":number};
							dailyMissionTimer();
							if(email)
							{				
								$(this).prop('disabled',true);
								$('#bWindow1').css('display','none');
								$('#bWindow2').css('display','none');								
								
								$.ajax({
									url:"/Floracion/memail",
									type:'POST',
									data:auth
								});					
								
								$('#bWindow3').css('display','block');
							}
							else
							{
								alert("e-mail을 입력하세요.");
							}
							$('#Econfirm').prop("disabled",false);
							$(this).prop('disabled',false);
					    });
				
	
				$('#Minsert').click(function()
					    {
							var radio=$(":input:radio[name=information]:checked").val();
							var email=$(":input[name=uemail]").val();
							var pwd1=$(":input[name=upwd1]").val();
							var pwd2=$(":input[name=upwd2]").val();
							var nick=$(":input[name=unick]").val();							
							var phone=$(":input[name=uphone]").val();
							
							var member={"radio":radio,"email":email,"pwd1":pwd1,"nick":nick,"phone":phone};
														
							if(!email)
							{
								$(":input[name=uemail]").css("border-color","red");
							}
							else
							{
								$(":input[name=uemail]").css("border-color","white");
							}
							
							if(!pwd1)
							{
								$(":input[name=upwd1]").css("border-color","red");
							}
							else
							{
								$(":input[name=upwd1]").css("border-color","white");
							}
							
							if(!pwd2)
							{
								$(":input[name=upwd2]").css("border-color","red");
							}
							else
							{
								$(":input[name=upwd2]").css("border-color","white");
							}
							
							if(!nick)
							{
								$(":input[name=unick]").css("border-color","red");
							}
							else
							{
								$(":input[name=unick]").css("border-color","white");
							}
							
							if(!phone)
							{
								$(":input[name=uphone]").css("border-color","red");
							}
							else
							{
								$(":input[name=uphone]").css("border-color","white");
							}
														
							if(pwd1&&pwd2&&pwd1===pwd2)
							{
								$(":input[name=upwd2]").css("border-color","white");
							}
							else
							{
								$(":input[name=upwd2]").css("border-color","red");
								$(":input[name=upwd2]").attr('title','암호와 일치하지 않습니다.');
							}							
							
							if(!accept)
							{
								alert("이메일 인증이 필요합니다.");
							}
							
							if(radio&&email&&pwd1&&pwd2&&nick&&phone&&accept&&pwd1===pwd2)
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
											$('#bWindow1').css('display','none');
											$('#bWindow2').css('display','block');
										}
									},
									error:function(isFail)
									{
										alert("ERROR!!");									
									}
								});
							}														
					    });
				
				
				function dailyMissionTimer() 
				{				    
				    var time = 180;
				    var minutes, seconds;
				    
				    interval = setInterval(function(){
				        minutes = parseInt(time / 60, 10);
				        seconds = parseInt(time % 60, 10);	
				        
				        minutes = minutes < 10 ? "0" + minutes : minutes;
				        seconds = seconds < 10 ? "0" + seconds : seconds;						
				        
				        $('#time').text(minutes+":"+seconds);
				        
				        if (--time < 0) {
				            time = 0;
				            $('#time').html("시간 초과<br> 다시 시도하세요.");
							$('#Econfirm').prop("value","X");
				            $('#Econfirm').prop("disabled",true);
				            clearInterval(interval);
				        }
				       
				    }, 1000);
				}
				
	
				
			  });