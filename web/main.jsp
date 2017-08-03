<%@ page contentType="text/html; charset=euc-kr" %>
    <html>

    <head>
        <meta charset="UTF-8">
        <link rel="stylesheet" href="./views/css/main.css">
        <link rel="stylesheet" href="./bootstrap-3.3.7-dist/css/bootstrap.min.css">
        <script type="text/javascript" src="bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
        <script type="text/javascript" src="./views/js/jquery-3.2.1.min.js"></script>
        <title>Document</title>
    </head>

    <body>
        <%@ include file="./header.jsp" %>
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
                <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
                    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
                    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>
            <br><br><br><br>
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

            <br><br><br><br><br>
            <div class="ProjectList">
                <a href="" id="selected">최신 프로젝트</a> &nbsp;&nbsp;
                <a href="">인기 프로젝트</a> &nbsp;&nbsp;
                <a href="">마감임박 프로젝트</a> &nbsp;&nbsp;
                <a href="">자세히 보기</a>
            </div>

            <div class="container row center-block">
                <div class="col-md-3">
                    <div class="thumbnail">
                        <a href="#">
                            <img src="./img/img_1.jpg" alt="Lights" style="width:100%">
                            <div class="caption">
                                <a href="">Category</a>
                                <p>
                                    Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum...
                                </p>
                                <h4>&#8361; 100,000원</h4>
                                <div class="progress">
                                    <div class="progress-bar progress-bar-striped active" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width:40%">
                                        40%
                                    </div>
                                </div>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="thumbnail">
                        <a href="#">
                            <img src="./img/img_1.jpg" alt="Lights" style="width:100%">
                            <div class="caption">
                                <a href="">Category</a>
                                <p>
                                    Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum...
                                </p>
                                <h4>&#8361; 100,000원</h4>
                                <div class="progress">
                                    <div class="progress-bar progress-bar-striped active" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width:40%">
                                        40%
                                    </div>
                                </div>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="thumbnail">
                        <a href="#">
                            <img src="./img/img_1.jpg" alt="Lights" style="width:100%">
                            <div class="caption">
                                <a href="">Category</a>
                                <p>
                                    Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum...
                                </p>
                                <h4>&#8361; 100,000원</h4>
                                <div class="progress">
                                    <div class="progress-bar progress-bar-striped active" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width:40%">
                                        40%
                                    </div>
                                </div>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="thumbnail">
                        <a href="#">
                            <img src="./img/img_1.jpg" alt="Lights" style="width:100%">
                            <div class="caption">
                                <a href="">Category</a>
                                <p>
                                    Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum...
                                </p>
                                <h4>&#8361; 100,000원</h4>
                                <div class="progress">
                                    <div class="progress-bar progress-bar-striped active" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width:40%">
                                        40%
                                    </div>
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
                        <a href="#">
                            <img src="./img/img_1.jpg" alt="Lights" style="width:100%">
                            <div class="caption">
                                <a href="">Category</a>
                                <p>
                                    Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum...
                                </p>
                                <h4>&#8361; 100,000원</h4>
                                <div class="progress">
                                    <div class="progress-bar progress-bar-striped active" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width:40%">
                                        40%
                                    </div>
                                </div>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="thumbnail">
                        <a href="#">
                            <img src="./img/img_1.jpg" alt="Lights" style="width:100%">
                            <div class="caption">
                                <a href="">Category</a>
                                <p>
                                    Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum...
                                </p>
                                <h4>&#8361; 100,000원</h4>
                                <div class="progress">
                                    <div class="progress-bar progress-bar-striped active" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width:40%">
                                        40%
                                    </div>
                                </div>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="thumbnail">
                        <a href="#">
                            <img src="./img/img_1.jpg" alt="Lights" style="width:100%">
                            <div class="caption">
                                <a href="">Category</a>
                                <p>
                                    Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum...
                                </p>
                                <h4>&#8361; 100,000원</h4>
                                <div class="progress">
                                    <div class="progress-bar progress-bar-striped active" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width:40%">
                                        40%
                                    </div>
                                </div>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="thumbnail">
                        <a href="#">
                            <img src="./img/img_1.jpg" alt="Lights" style="width:100%">
                            <div class="caption">
                                <a href="">Category</a>
                                <p>
                                    Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum...
                                </p>
                                <h4>&#8361; 100,000원</h4>
                                <div class="progress">
                                    <div class="progress-bar progress-bar-striped active" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width:40%">
                                        40%
                                    </div>
                                </div>
                            </div>
                        </a>
                    </div>
                </div>
            </div>
            <%@ include file="./footer.jsp" %>

    </body>

    </html>
