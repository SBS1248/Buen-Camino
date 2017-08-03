<%@ page contentType="text/html; charset=utf-8"%>
    <html>

    <head>
        <meta charset="UTF-8">
        <link rel="stylesheet" href="views/css/main.css">
        <link rel="stylesheet" href="bootstrap-3.3.7-dist/css/bootstrap.min.css">
        <script type="text/javascript" src="bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
        <script type="text/javascript" src="views/js/main.js"></script>
        <script type="text/javascript" src="jquery-3.2.1.min.js"></script>
        <script type="text/javascript" src='views/js/main.js'></script>
        <title>Floracion</title>
        <!--
        <script type="text/javascript">
            var flag = true;
            var userEmail = null;
            var userNick = null;

            $(function() {
                alert("!!!!!");
                $(':button[name=findMember]').click(function() {
                    if (flag) {
                        $(this).attr('disabled', 'disabled');
                        $(':input[name=inputauth]').css('display', 'block');

                        setTimeout(function() {
                            $(':button[name=findMember]').removeAttr('disabled');
                        }, 3000);

                        dailyMissionTimer();
                        alert(flag);
                        flag = false;
                    } else {
                        alert(flag);
                    }
                });

                $(':button[name=login]').click(function() {

                    var email = $(":input[name=email]");
                    var pwd = $(":input[name=psw]");

                    var logIn = {
                        "email": email.val(),
                        "pwd": pwd.val()
                    };

                    if (!email.val())
                        email.css("border-color", "red");
                    else
                        email.css("border-color", "#ccc");

                    if (!pwd.val())
                        pwd.css("border-color", "red");
                    else
                        pwd.css("border-color", "#ccc");

                    if (email.val() && pwd.val()) {
                        $.ajax({
                            url: "/Floracion/mlogin",
                            type: 'POST',
                            data: logIn,
                            dataType: 'json',
                            success: function(member) {
                                if (member.member != null) {
                                    userEmail =
                                        <%=session.getAttribute("email")%>;
                                    userNick =
                                        <%=session.getAttribute("nick")%>;

                                    alert(member.member + "님 환영합니다.");
                                    $('#id01').css('display', 'none');

                                    alert(
                                        <%=session.getAttribute("member ")%>
                                    );

                                    alert("메인 페이지를 띄워라" + userEmail + "/" + userNick);
                                    window.location.reload();
                                } else
                                    alert("이메일 또는 비밀번호 오류!!");

                            },
                            error: function() {
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
                    $(':button[name=findMember]').text(
                        minutes + ":" + seconds + " 내에 클릭");
                    if (--time < 0) {
                        time = 0;
                        $(':button[name=findMember]').attr('disabled', 'disabled');
                        $(':button[name=findMember]').text("시간 초과");
                        clearInterval(interval);
                    }
                }, 1000);
            }

            function findInfo() {
                $('#id02').css('display', 'block');
                $('#id01').css('display', 'none');
            }

        </script>
-->
    </head>

    <body>
        <%@ include file="./header.jsp"%>
            <div id="myCarousel" class="carousel slide" data-ride="carousel">
                <!-- Indicators -->
                <ol class="carousel-indicators">
                    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                    <li data-target="#myCarousel" data-slide-to="1"></li>
                    <li data-target="#myCarousel" data-slide-to="2"></li>
                </ol>

                <!-- Wrapper for slides -->
                <div class="carousel-inner" role="listbox">
                    <div class="item active">
                        <img src="./img/main01.jpg" alt="New York">
                        <div class="carousel-caption">
                            <h3>New York</h3>
                            <p>The atmosphere in New York is lorem ipsum.</p>
                        </div>
                    </div>

                    <div class="item">
                        <img src="./img/main02.jpg" alt="Chicago">
                        <div class="carousel-caption">
                            <h3>Chicago</h3>
                            <p>Thank you, Chicago - A night we won't forget.</p>
                        </div>
                    </div>

                    <div class="item">
                        <img src="./img/main03.jpg" alt="Los Angeles">
                        <div class="carousel-caption">
                            <h3>LA</h3>
                            <p>Even though the traffic was a mess, we had the best time.</p>
                        </div>
                    </div>
                </div>

                <!-- Left and right controls -->
                <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev"> <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span> <span class="sr-only">Previous</span>
                </a>
                <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next"> <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>
            <br>
            <br>
            <br>
            <br>
            <h3>카테고리 목록</h3>
            <div class="container center-block">
                <div class="row">
                    <div class="col-md-2">
                        <img src="./img/img_1.jpg" class="img-thumbnail" alt="Cinque Terre" width="300" height="300">
                    </div>
                    <div class="col-md-2">
                        <img src="./img/img_2.jpg" class="img-thumbnail" alt="Cinque Terre" width="300" height="300">
                    </div>
                    <div class="col-md-2">
                        <img src="./img/img_3.jpg" class="img-thumbnail" alt="Cinque Terre" width="300" height="300">
                    </div>
                    <div class="col-md-2">
                        <img src="./img/img_4.jpg" class="img-thumbnail" alt="Cinque Terre" width="300" height="300">
                    </div>
                    <div class="col-md-2">
                        <img src="./img/img_5.jpg" class="img-thumbnail" alt="Cinque Terre" width="300" height="300">
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-2">
                        <img src="./img/img_6.jpg" class="img-thumbnail" alt="Cinque Terre" width="300" height="300">
                    </div>
                    <div class="col-md-2">
                        <img src="./img/img_7.jpg" class="img-thumbnail" alt="Cinque Terre" width="300" height="300">
                    </div>
                    <div class="col-md-2">
                        <img src="./img/img_8.jpg" class="img-thumbnail" alt="Cinque Terre" width="300" height="300">
                    </div>
                    <div class="col-md-2">
                        <img src="./img/img_1.jpg" class="img-thumbnail" alt="Cinque Terre" width="300" height="300">
                    </div>
                    <div class="col-md-2">
                        <img src="./img/img_2.jpg" class="img-thumbnail" alt="Cinque Terre" width="300" height="300">
                    </div>
                </div>
            </div>

            <br>
            <br>
            <br>
            <br>
            <br>
            <ul class="nav nav-tabs">
                <li class="active"><a data-toggle="tab" href="#menu1">최신 프로젝트</a></li>
                <li><a data-toggle="tab" href="#menu2">인기 프로젝트</a></li>
                <li><a data-toggle="tab" href="#menu3">마감임박 프로젝트</a></li>
            </ul>
            <br>
            <br>
            <br>
            <br>
            <div class="tab-content">
                <div id="menu1" class="tab-pane fade in active">
                    <div class="container row center-block">
                        <div class="col-md-3">
                            <div class="thumbnail">
                                <a href="#"> <img src="./img/img_1.jpg" alt="Lights" style="width: 100%">
                                    <div class="caption">
                                        <a href="">Category</a>
                                        <p>Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum...</p>
                                        <h4>&#8361; 100,000원</h4>
                                        <div class="progress">
                                            <div class="progress-bar progress-bar-striped active" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%">40%</div>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="thumbnail">
                                <a href="#"> <img src="./img/img_1.jpg" alt="Lights" style="width: 100%">
                                    <div class="caption">
                                        <a href="">Category</a>
                                        <p>Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum...</p>
                                        <h4>&#8361; 100,000원</h4>
                                        <div class="progress">
                                            <div class="progress-bar progress-bar-striped active" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%">40%</div>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="thumbnail">
                                <a href="#"> <img src="./img/img_1.jpg" alt="Lights" style="width: 100%">
                                    <div class="caption">
                                        <a href="">Category</a>
                                        <p>Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum...</p>
                                        <h4>&#8361; 100,000원</h4>
                                        <div class="progress">
                                            <div class="progress-bar progress-bar-striped active" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%">40%</div>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="thumbnail">
                                <a href="#"> <img src="./img/img_1.jpg" alt="Lights" style="width: 100%">
                                    <div class="caption">
                                        <a href="">Category</a>
                                        <p>Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum...</p>
                                        <h4>&#8361; 100,000원</h4>
                                        <div class="progress">
                                            <div class="progress-bar progress-bar-striped active" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%">40%</div>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="container row center-block">
                        <div class="col-md-3">
                            <div class=""></div>
                            <div class="thumbnail">
                                <a href="#"> <img src="./img/img_1.jpg" alt="Lights" style="width: 100%">
                                    <div class="caption">
                                        <a href="">Category</a>
                                        <p>Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum...</p>
                                        <h4>&#8361; 100,000원</h4>
                                        <div class="progress">
                                            <div class="progress-bar progress-bar-striped active" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%">40%</div>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="thumbnail">
                                <a href="#"> <img src="./img/img_1.jpg" alt="Lights" style="width: 100%">
                                    <div class="caption">
                                        <a href="">Category</a>
                                        <p>Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum...</p>
                                        <h4>&#8361; 100,000원</h4>
                                        <div class="progress">
                                            <div class="progress-bar progress-bar-striped active" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%">40%</div>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="thumbnail">
                                <a href="#"> <img src="./img/img_1.jpg" alt="Lights" style="width: 100%">
                                    <div class="caption">
                                        <a href="">Category</a>
                                        <p>Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum...</p>
                                        <h4>&#8361; 100,000원</h4>
                                        <div class="progress">
                                            <div class="progress-bar progress-bar-striped active" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%">40%</div>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="thumbnail">
                                <a href="#"> <img src="./img/img_1.jpg" alt="Lights" style="width: 100%">
                                    <div class="caption">
                                        <a href="">Category</a>
                                        <p>Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum...</p>
                                        <h4>&#8361; 100,000원</h4>
                                        <div class="progress">
                                            <div class="progress-bar progress-bar-striped active" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%">40%</div>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
                <div id="menu2" class="tab-pane fade">
                    <div class="container row center-block">
                        <div class="col-md-3">
                            <div class="thumbnail">
                                <a href="#"> <img src="./img/img_1.jpg" alt="Lights" style="width: 100%">
                                    <div class="caption">
                                        <a href="">Category</a>
                                        <p>Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum...</p>
                                        <h4>&#8361; 100,000원</h4>
                                        <div class="progress">
                                            <div class="progress-bar progress-bar-striped active" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%">40%</div>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="thumbnail">
                                <a href="#"> <img src="./img/img_1.jpg" alt="Lights" style="width: 100%">
                                    <div class="caption">
                                        <a href="">Category</a>
                                        <p>Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum...</p>
                                        <h4>&#8361; 100,000원</h4>
                                        <div class="progress">
                                            <div class="progress-bar progress-bar-striped active" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%">40%</div>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="thumbnail">
                                <a href="#"> <img src="./img/img_1.jpg" alt="Lights" style="width: 100%">
                                    <div class="caption">
                                        <a href="">Category</a>
                                        <p>Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum...</p>
                                        <h4>&#8361; 100,000원</h4>
                                        <div class="progress">
                                            <div class="progress-bar progress-bar-striped active" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%">40%</div>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="thumbnail">
                                <a href="#"> <img src="./img/img_1.jpg" alt="Lights" style="width: 100%">
                                    <div class="caption">
                                        <a href="">Category</a>
                                        <p>Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum...</p>
                                        <h4>&#8361; 100,000원</h4>
                                        <div class="progress">
                                            <div class="progress-bar progress-bar-striped active" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%">40%</div>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="container row center-block">
                        <div class="col-md-3">
                            <div class=""></div>
                            <div class="thumbnail">
                                <a href="#"> <img src="./img/img_1.jpg" alt="Lights" style="width: 100%">
                                    <div class="caption">
                                        <a href="">Category</a>
                                        <p>Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum...</p>
                                        <h4>&#8361; 100,000원</h4>
                                        <div class="progress">
                                            <div class="progress-bar progress-bar-striped active" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%">40%</div>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="thumbnail">
                                <a href="#"> <img src="./img/img_1.jpg" alt="Lights" style="width: 100%">
                                    <div class="caption">
                                        <a href="">Category</a>
                                        <p>Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum...</p>
                                        <h4>&#8361; 100,000원</h4>
                                        <div class="progress">
                                            <div class="progress-bar progress-bar-striped active" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%">40%</div>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="thumbnail">
                                <a href="#"> <img src="./img/img_1.jpg" alt="Lights" style="width: 100%">
                                    <div class="caption">
                                        <a href="">Category</a>
                                        <p>Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum...</p>
                                        <h4>&#8361; 100,000원</h4>
                                        <div class="progress">
                                            <div class="progress-bar progress-bar-striped active" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%">40%</div>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="thumbnail">
                                <a href="#"> <img src="./img/img_1.jpg" alt="Lights" style="width: 100%">
                                    <div class="caption">
                                        <a href="">Category</a>
                                        <p>Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum...</p>
                                        <h4>&#8361; 100,000원</h4>
                                        <div class="progress">
                                            <div class="progress-bar progress-bar-striped active" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%">40%</div>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
                <div id="menu3" class="tab-pane fade">
                    <div class="container row center-block">
                        <div class="col-md-3">
                            <div class="thumbnail">
                                <a href="#"> <img src="./img/img_1.jpg" alt="Lights" style="width: 100%">
                                    <div class="caption">
                                        <a href="">Category</a>
                                        <p>Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum...</p>
                                        <h4>&#8361; 100,000원</h4>
                                        <div class="progress">
                                            <div class="progress-bar progress-bar-striped active" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%">40%</div>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="thumbnail">
                                <a href="#"> <img src="./img/img_1.jpg" alt="Lights" style="width: 100%">
                                    <div class="caption">
                                        <a href="">Category</a>
                                        <p>Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum...</p>
                                        <h4>&#8361; 100,000원</h4>
                                        <div class="progress">
                                            <div class="progress-bar progress-bar-striped active" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%">40%</div>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="thumbnail">
                                <a href="#"> <img src="./img/img_1.jpg" alt="Lights" style="width: 100%">
                                    <div class="caption">
                                        <a href="">Category</a>
                                        <p>Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum...</p>
                                        <h4>&#8361; 100,000원</h4>
                                        <div class="progress">
                                            <div class="progress-bar progress-bar-striped active" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%">40%</div>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="thumbnail">
                                <a href="#"> <img src="./img/img_1.jpg" alt="Lights" style="width: 100%">
                                    <div class="caption">
                                        <a href="">Category</a>
                                        <p>Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum...</p>
                                        <h4>&#8361; 100,000원</h4>
                                        <div class="progress">
                                            <div class="progress-bar progress-bar-striped active" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%">40%</div>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="container row center-block">
                        <div class="col-md-3">
                            <div class="thumbnail">
                                <a href="#"> <img src="./img/img_1.jpg" alt="Lights" style="width: 100%">
                                    <div class="caption">
                                        <a href="">Category</a>
                                        <p>Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum...</p>
                                        <h4>&#8361; 100,000원</h4>
                                        <div class="progress">
                                            <div class="progress-bar progress-bar-striped active" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%">40%</div>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="thumbnail">
                                <a href="#"> <img src="./img/img_1.jpg" alt="Lights" style="width: 100%">
                                    <div class="caption">
                                        <a href="">Category</a>
                                        <p>Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum...</p>
                                        <h4>&#8361; 100,000원</h4>
                                        <div class="progress">
                                            <div class="progress-bar progress-bar-striped active" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%">40%</div>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="thumbnail">
                                <a href="#"> <img src="./img/img_1.jpg" alt="Lights" style="width: 100%">
                                    <div class="caption">
                                        <a href="">Category</a>
                                        <p>Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum...</p>
                                        <h4>&#8361; 100,000원</h4>
                                        <div class="progress">
                                            <div class="progress-bar progress-bar-striped active" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%">40%</div>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="thumbnail">
                                <a href="#"> <img src="./img/img_1.jpg" alt="Lights" style="width: 100%">
                                    <div class="caption">
                                        <a href="">Category</a>
                                        <p>Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum...</p>
                                        <h4>&#8361; 100,000원</h4>
                                        <div class="progress">
                                            <div class="progress-bar progress-bar-striped active" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%">40%</div>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>


            <div id="id01" class="modal">

                <div class="modal-content animate">
                    <div class="imgcontainer">
                        Floración <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>
                    </div>
                    <div class="containerinmodal">
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

                    <div class="containerinmodal" style="background-color: #f1f1f1; text-align: right;">
                        <span class="psw">아직 Floración의 회원이 아니신가요? <a name="sigUp">회원
						가입</a> <br>아이디 또는 비밀번호가 기억나지 않나요? <a href="javascript:void(0)"
					onclick="findInfo();">회원 정보 찾기</a></span><br>

                    </div>

                </div>
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

            <%@ include file="./footer.jsp"%>






    </body>

    </html>
