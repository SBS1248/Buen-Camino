<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>Floracion</title>
    <link rel="stylesheet" href="./floracion_main.css">
    <link rel="stylesheet" href="./slick/slick.css">
    <link rel="stylesheet" href="./slick/slick-theme.css">
    <script type="text/javascript" src="jquery-3.2.1.min.js"></script>
    <script type="text/javascript" src="./slick/slick.min.js"></script>
    <script type="text/javascript" src="./Headroom.js"></script>
    <script type="text/javascript">
        $(function() {
            $('#menuclk').on('click', function() {
                var submenu = $('#menu');
                if (submenu.is(":visible")) {
                    submenu.slideUp();
                } else {
                    submenu.slideDown();
                }
            });

            $('.MImg').slick({
            });
        });

    </script>
</head>

<body>
    <header>
        <ul id="menu">
            <li><a href="" class="selected">게임</a></li>
            <br>
            <li><a href="">기술</a></li>
            <br>
            <li><a href="">전문기술</a></li>
            <br>
            <li><a href="">출판</a></li>
            <br>
            <li><a href="">디자인</a></li>
            <br>
            <li><a href="">예술</a></li>
            <br>
            <li><a href="">패션</a></li>
            <br>
            <li><a href="">여행</a></li>
            <br>
            <li><a href="">운동</a></li>
            <br>
            <li><a href="">자기계발</a></li>
            <br>
        </ul>
        <img id="menuclk" src="./img/menu_icon.png" alt="메뉴 아이콘" width="30px" height="30px">
        <a href="">
            <h1>Floracion</h1>
        </a>
        <form action="" method="post" id="MSearch">
            <input type="search" name="PSearch">&nbsp;<input type="submit" value="검색">
        </form>
        <div>
            <a href="">로그인</a>&nbsp;/&nbsp;
            <a href="">회원가입</a>
        </div>
    </header>
    <!--    메인페이지 상단-->
    <div id="MInt">
        <div class="MImg">
            <div><img src="./img/Floracion_main.jpg" alt="메인사진"></div>
            <div><img src="./img/img_1.jpg" alt="메인사진"></div>
            <div><img src="./img/img_2.jpg" alt="메인사진"></div>
        </div>
        <div id="MTxt">
            <h3>Floracion 소개글</h3><br> Floracion 소개글입니다. Floracion 소개글입니다. Floracion 소개글입니다. Floracion 소개글입니다. Floracion 소개글입니다. Floracion 소개글입니다. Floracion 소개글입니다.
        </div>
    </div>
    <br><br><br>

    <!--    카테고리 목록 -->
    <h3 id="CList">카테고리 목록</h3>
    <div id="MCategory">
        <table cellpadding="10">
            <tr>
                <td><img src="./img/img_1.jpg" alt="사진1" width="240" height="240"></td>
                <td><img src="./img/img_2.jpg" alt="사진2" width="240" height="240"></td>
                <td><img src="./img/img_3.jpg" alt="사진3" width="240" height="240"></td>
                <td><img src="./img/img_4.jpg" alt="사진4" width="240" height="240"></td>
                <td><img src="./img/img_5.jpg" alt="사진4" width="240" height="240"></td>
            </tr>
            <tr>
                <td><img src="./img/img_5.jpg" alt="사진5" width="240" height="240"></td>
                <td><img src="./img/img_6.jpg" alt="사진6" width="240" height="240"></td>
                <td><img src="./img/img_7.jpg" alt="사진7" width="240" height="240"></td>
                <td><img src="./img/img_8.jpg" alt="사진8" width="240" height="240"></td>
                <td><img src="./img/img_1.jpg" alt="사진8" width="240" height="240"></td>
            </tr>

        </table>
    </div>

    <div id="Project_Sort">
        <a href="" class="selected">최신 프로젝트</a> &nbsp;&nbsp;
        <a href="">인기 프로젝트</a> &nbsp;&nbsp;
        <a href="">마감 임박 프로젝트</a>
        <a href="" id="see_all">자세히 보기</a>
    </div>

    <!--    프로젝트 목록 -->
    <div id="MProject">
        <table cellpadding="30" cellspacing="30">
            <tr>
                <td>
                    <div id="Project1">
                        <div id="Project1_img"></div><br>
                        <div id="Category1"><a href="">카테고리</a></div><br>
                        <div id="Project1_title"><a href="">프로젝트 1번</a></div><br>
                        <div id="Project1_txt">프로젝트 내용 프로젝트 내용 프로젝트 내용 프로젝트 내용 프로젝트 내용프로젝트 내용프로젝트 내용프로젝트 내용프로젝트 내용프로젝트 내용프로젝트 내용프로젝트 내용내용프로젝트 내용내용프로젝트 내용내용프로젝트 내용</div><br>
                        <div id="Project1_money">
                            <h4>&#8361; 100,000원</h4>
                        </div>
                        <div class="BGGraph">
                            <div id="Project1_Percent"></div>
                        </div>
                    </div>
                </td>
                <td>
                    <div id="Project2_img"></div><br>
                    <div id="Category2"><a href="">카테고리</a></div><br>
                    <div id="Project2_title"><a href="">프로젝트 2번</a></div><br>
                    <div id="Project2_txt">프로젝트 내용 프로젝트 내용 프로젝트 내용 프로젝트 내용 프로젝트 내용프로젝트 내용프로젝트 내용프로젝트 내용프로젝트 내용프로젝트 내용프로젝트 내용프로젝트 내용내용프로젝트 내용내용프로젝트 내용내용프로젝트 내용</div><br>
                    <div id="Project2_money">
                        <h4>&#8361; 324,000원</h4>
                    </div>
                    <div class="BGGraph">
                        <div id="Project2_Percent"></div>
                    </div>
                </td>
                <td>
                    <div id="Project3_img"></div><br>
                    <div id="Category3"><a href="">카테고리</a></div><br>
                    <div id="Project3_title"><a href="">프로젝트 3번</a></div><br>
                    <div id="Project3_txt">프로젝트 내용 프로젝트 내용 프로젝트 내용 프로젝트 내용 프로젝트 내용프로젝트 내용프로젝트 내용프로젝트 내용프로젝트 내용프로젝트 내용프로젝트 내용프로젝트 내용내용프로젝트 내용내용프로젝트 내용내용프로젝트 내용</div><br>
                    <div id="Project3_money">
                        <h4>&#8361; 1,000,000원</h4>
                    </div>
                    <div class="BGGraph">
                        <div id="Project3_Percent"></div>
                    </div>
                </td>
                <td>
                    <div id="Project4_img"></div><br>
                    <div id="Category4"><a href="">카테고리</a></div><br>
                    <div id="Project4_title"><a href="">프로젝트 4번</a></div><br>
                    <div id="Project4_txt">프로젝트 내용 프로젝트 내용 프로젝트 내용 프로젝트 내용 프로젝트 내용프로젝트 내용프로젝트 내용프로젝트 내용프로젝트 내용프로젝트 내용프로젝트 내용프로젝트 내용내용프로젝트 내용내용프로젝트 내용내용프로젝트 내용</div><br>
                    <div id="Project4_money">
                        <h4>&#8361; 0원</h4>
                    </div>
                    <div class="BGGraph">
                        <div id="Project4_Percent"></div>
                    </div>
                </td>
            </tr>
            <tr>
                <td>
                    <div id="Project5">
                        <div id="Project5_img"></div><br>
                        <div id="Category5"><a href="">카테고리</a></div><br>
                        <div id="Project5_title"><a href="">프로젝트 1번</a></div><br>
                        <div id="Project5_txt">프로젝트 내용 프로젝트 내용 프로젝트 내용 프로젝트 내용 프로젝트 내용프로젝트 내용프로젝트 내용프로젝트 내용프로젝트 내용프로젝트 내용프로젝트 내용프로젝트 내용내용프로젝트 내용내용프로젝트 내용내용프로젝트 내용</div><br>
                        <div id="Project5_money">
                            <h4>&#8361; 100,000원</h4>
                        </div>
                        <div class="BGGraph">
                            <div id="Project5_Percent"></div>
                        </div>
                    </div>
                </td>
                <td>
                    <div id="Project6_img"></div><br>
                    <div id="Category6"><a href="">카테고리</a></div><br>
                    <div id="Project6_title"><a href="">프로젝트 2번</a></div><br>
                    <div id="Project6_txt">프로젝트 내용 프로젝트 내용 프로젝트 내용 프로젝트 내용 프로젝트 내용프로젝트 내용프로젝트 내용프로젝트 내용프로젝트 내용프로젝트 내용프로젝트 내용프로젝트 내용내용프로젝트 내용내용프로젝트 내용내용프로젝트 내용</div><br>
                    <div id="Project6_money">
                        <h4>&#8361; 324,000원</h4>
                    </div>
                    <div class="BGGraph">
                        <div id="Project6_Percent"></div>
                    </div>
                </td>
                <td>
                    <div id="Project7_img"></div><br>
                    <div id="Category7"><a href="">카테고리</a></div><br>
                    <div id="Project7_title"><a href="">프로젝트 3번</a></div><br>
                    <div id="Project7_txt">프로젝트 내용 프로젝트 내용 프로젝트 내용 프로젝트 내용 프로젝트 내용프로젝트 내용프로젝트 내용프로젝트 내용프로젝트 내용프로젝트 내용프로젝트 내용프로젝트 내용내용프로젝트 내용내용프로젝트 내용내용프로젝트 내용</div><br>
                    <div id="Project7_money">
                        <h4>&#8361; 1,000,000원</h4>
                    </div>
                    <div class="BGGraph">
                        <div id="Project7_Percent"></div>
                    </div>
                </td>
                <td>
                    <div id="Project8_img"></div><br>
                    <div id="Category8"><a href="">카테고리</a></div><br>
                    <div id="Project8_title"><a href="">프로젝트 4번</a></div><br>
                    <div id="Project8_txt">프로젝트 내용 프로젝트 내용 프로젝트 내용 프로젝트 내용 프로젝트 내용프로젝트 내용프로젝트 내용프로젝트 내용프로젝트 내용프로젝트 내용프로젝트 내용프로젝트 내용내용프로젝트 내용내용프로젝트 내용내용프로젝트 내용</div><br>
                    <div id="Project8_money">
                        <h4>&#8361; 0원</h4>
                    </div>
                    <div class="BGGraph">
                        <div id="Project8_Percent"></div>
                    </div>
                </td>
            </tr>
        </table>
    </div>

    <br><br>
    <footer>
        <div>
            <a href="">채용</a>&nbsp;&nbsp;
            <a href="">가이드</a>&nbsp;&nbsp;
            <a href="">2016 결산</a>&nbsp;&nbsp;
            <a href="">이용약관</a>&nbsp;&nbsp;
            <a href="">개인정보보호</a>&nbsp;&nbsp;
            <a href="">헬프센터</a>
        </div>
        <hr>
        <div>Floracion | 서울특별시 강남구 테헤란로 14길 남도빌딩 2층 | 제작 : Buen Camino</div>
    </footer>
</body>

</html>
