<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>메인</title>
    <link rel="stylesheet" type="text/css" href="css/index/index.css">
    <link rel="stylesheet" type="text/css" href="css/index/headerMenu.css">
    <link rel="stylesheet" type="text/css" href="css/index/menu.css">
    <link rel="stylesheet" type="text/css" href="css/index/slideShow.css">
    <link rel="stylesheet" type="text/css" href="css/index/product.css">
    <script src="js/jquery-3.6.1.min.js"></script>
	<script src="js/index/menu.js"></script>
    <script src="js/index/slideShow.js"></script>
    <script src="js/index/index.js"></script>
</head>
<body>
    <header id="header">
        <div id="headerBox">
            <div id="logoBox">
                <a href="index.html"><h1>비전공 애견샵</h1></a>
            </div>
            <div id ="headerMenuBox">
                <div id="hMenuItem" class="signIn"><a href="#" class="signInA">로그인</a></div>
                <div id="hMenuItem" class="signUp"><a href="#" class="signUnA">회원가입</a></div>
                <div id="hMenuItem" class="myPage"><a href="#" class="myPageA">마이페이지</a></div>
            </div>
        </div>
    </header>
    <nav id="nav">
        <div id="mainMenuBox">
            <ul id="menuItem">
                <li><a href="../webapp/html/product.html" id="menu1" value="3">강아지 사료</a></li>
                <li><a href="../webapp/html/product.html" id="menu2" value="2">간식/저키</a></li>
                <li><a href="../webapp/html/product.html" id="menu3" value="3">미용/목욕용품</a></li>
                <li><a href="../webapp/html/product.html" id="menu4" value="2">위생/배변용품</a></li>
                <li><a href="../webapp/html/product.html" id="menu5" value="3">장난감/훈련용품</a></li>
                <li><a href="../webapp/html/product.html" id="menu6" value="3">식기/물병</a></li>
                <li><a href="../webapp/html/product.html" id="menu7" value="3">의류/악세사리</a></li>
                <li><a href="../webapp/html/product.html" id="menu8" value="2">샘플</a></li>
                <li><a href="../webapp/html/product.html" id="menu9" value="2">고객센터</a></li>
            </ul>
        </div>
        <div id="subMenuBox">
            <!-- 서브 메뉴 아이템 6개  -->
            <div class="subMenuItem" id="subMenuItem1">
                <ul id = "submenu1" class="submenu">
                    <li><a href="../webapp/html/product.html" id="menu1">퍼피사료</a></li>
                    <li><a href="../webapp/html/product.html" id="menu1">어덜트사료</a></li>
                    <li><a href="../webapp/html/product.html" id="menu1">시니어사료</a></li>
                </ul>
            </div>
            <div class="subMenuItem" id="subMenuItem2">
                <ul id = "submenu2" class="submenu">
                    <li><a href="../webapp/html/product.html" id="menu2">간식</a></li>
                    <li><a href="../webapp/html/product.html" id="menu2">저키</a></li>
                </ul>
            </div>
            <div class="subMenuItem" id="subMenuItem3">
                <ul id = "submenu3" class="submenu">
                    <li><a href="../webapp/html/product.html" id="menu3">샴푸</a></li>
                    <li><a href="../webapp/html/product.html" id="menu3">린스</a></li>
                    <li><a href="../webapp/html/product.html" id="menu3">클리퍼</a></li>
                </ul>
            </div>
            <div class="subMenuItem" id="subMenuItem4">
                <ul id = "submenu4" class="submenu">
                    <li><a href="../webapp/html/product.html" id="menu4">미용가위</a></li>
                    <li><a href="../webapp/html/product.html" id="menu4">배변패드</a></li>
                </ul>
            </div>
            <div class="subMenuItem" id="subMenuItem5">
                <ul id = "submenu5" class="submenu">
                    <li><a href="../webapp/html/product.html" id="menu5">짖음제어</a></li>
                    <li><a href="../webapp/html/product.html" id="menu5">봉제,치칠,고무</a></li>
                    <li><a href="../webapp/html/product.html" id="menu5">행동제어</a></li>
                </ul>
            </div>
            <div class="subMenuItem" id="subMenuItem6">
                <ul id = "submenu6" class="submenu">
                    <li><a href="../webapp/html/product.html" id="menu6">자동급식기</a></li>
                    <li><a href="../webapp/html/product.html" id="menu6">사료보관통</a></li>
                    <li><a href="../webapp/html/product.html" id="menu6">젖병</a></li>
                </ul>
            </div>
            <div class="subMenuItem" id="subMenuItem7">
                <ul id = "submenu7" class="submenu">
                    <li><a href="../webapp/html/product.html" id="menu7">의류</a></li>
                    <li><a href="../webapp/html/product.html" id="menu7">신발/양말</a></li>
                    <li><a href="../webapp/html/product.html" id="menu7">머리핀/고무줄</a></li>
                </ul>
            </div>
            <div class="subMenuItem" id="subMenuItem8">
                <ul id = "submenu8" class="submenu">
                    <li><a href="../webapp/html/product.html" id="menu8">프로모션 샘플</a></li>
                    <li><a href="../webapp/html/product.html" id="menu8">이벤트</a></li>
                </ul>
            </div>
            <div class="subMenuItem" id="subMenuItem9">
                <ul id = "submenu9" class="submenu">
                    <li><a href="../webapp/html/product.html" id="menu9">공지사항</a></li>
                    <li><a href="../webapp/html/product.html" id="menu9">마이페이지</a></li>
                </ul>
            </div>
        </div>
    </nav>
    <section id="section">
        <article  id="slideShow"> <!-- 슬라이드 쇼 -->  
            <!--  (1) prevNext 버튼 박스 -->
            <div id="prevNextButtonBox">
                <img id="prevButton" src="img/index/prevButton.png">
                <img id="nextButton" src="img/index/nextButton.png">
            </div>
            <!--  (2) 슬라이드 쇼 박스-->
            <div id="slideShowBox">
                <div id="slidePanel">
                    <img src="img/index/dogfood1.jpg" class="slideImage">
                    <img src="img/index/dogfood2.jpg" class="slideImage">
                    <img src="img/index/dogfood3.jpg" class="slideImage">
                    <img src="img/index/dogfood4.jpg" class="slideImage">
                </div> <!-- slidePanel 끝 --> 
            </div><!-- slideShowBox 끝 -->
            <!-- (3) 컨트롤 버튼 -->
            <div id="controlButtonBox">
                <img src="img/index/button2.png" class="controlButton0">
                <img src="img/index/button1.png" class="controlButton1">
                <img src="img/index/button1.png" class="controlButton2">
                <img src="img/index/button1.png" class="controlButton3">
            </div>
        </article>
        <div id="Avent">
            <div id="dogAvent1"> <img src="img/index/dog3.jpg"></div>
            <div id="dogAvent2"> <img src="img/index/dogimg1.jpg"></div>
            <div id="dogAvent3"> <img src="img/index/dog2.jpg"></div>
        </div>
        
        
        <article  id="content2"> <!-- 베스트 상품 -->    
            <div id="productBox" >
                <div class="product">
                    <div><a href="../webapp/html/prdInfo.html"><img src="img/index/dogfood1.jpg">네츄럴코어 헬로쿠키<P>4000원</P></a></div>
                    <div><a href="../webapp/html/prdInfo.html"><img src="img/index/dogfood2.jpg">네츄럴코어 헬로쿠키 <P>4000원</P></a></div>
                    <div><a href="../webapp/html/prdInfo.html"><img src="img/index/dogfood3.jpg">네츄럴코어 헬로쿠키 <P>4000원</P></a></div>
                    <div><a href="../webapp/html/prdInfo.html"><img src="img/index/dogfood4.jpg">네츄럴코어 헬로쿠키 <P>4000원</P></a></div>
                    <div><a href="../webapp/html/prdInfo.html"><img src="img/index/dogfood1.jpg">네츄럴코어 헬로쿠키 <P>4000원</P></a></div>
                </div>
                <div class="product">
                    <div><a href="../webapp/html/prdInfo.html"><img src="img/index/dogfood1.jpg">네츄럴코어 헬로쿠키<P>4000원</P></a></div>
                    <div><a href="../webapp/html/prdInfo.html"><img src="img/index/dogfood2.jpg">네츄럴코어 헬로쿠키 <P>4000원</P></a></div>
                    <div><a href="../webapp/html/prdInfo.html"><img src="img/index/dogfood3.jpg">네츄럴코어 헬로쿠키 <P>4000원</P></a></div>
                    <div><a href="../webapp/html/prdInfo.html"><img src="img/index/dogfood4.jpg">네츄럴코어 헬로쿠키 <P>4000원</P></a></div>
                    <div><a href="../webapp/html/prdInfo.html"><img src="img/index/dogfood1.jpg">네츄럴코어 헬로쿠키 <P>4000원</P></a></div>
                </div>
                <div class="product">
                    <div><a href="../webapp/html/prdInfo.html"><img src="img/index/dogfood1.jpg">네츄럴코어 헬로쿠키<P>4000원</P></a></div>
                    <div><a href="../webapp/html/prdInfo.html"><img src="img/index/dogfood2.jpg">네츄럴코어 헬로쿠키 <P>4000원</P></a></div>
                    <div><a href="../webapp/html/prdInfo.html"><img src="img/index/dogfood3.jpg">네츄럴코어 헬로쿠키 <P>4000원</P></a></div>
                    <div><a href="../webapp/html/prdInfo.html"><img src="img/index/dogfood4.jpg">네츄럴코어 헬로쿠키 <P>4000원</P></a></div>
                    <div><a href="../webapp/html/prdInfo.html"><img src="img/index/dogfood1.jpg">네츄럴코어 헬로쿠키 <P>4000원</P></a></div>
                </div>
               
            </div>     	
        </article>
        
    </section>
    <footer id="footer">
        <hr/>
        <div><img src="img/index/free-icon-profile-3135707.png"></div>
        <div id="compamy">
            <div>COMPAMY : 비전공같은 전공 / CALL CENTER : 영업부 031-0000-0000</div>
            <div>ADRESS : 서울 어딘가</div>
            <div>개인정보책임자 : 누군가 / 사업자 등록번호 100-23-00000 / 통신판매업 신고번호 : 2022-경기성남-0000호[사업자정보확인]</div>
            <div>Copyright by 비전공같은 전공. All rights reserved</div>
        </div>
        
    </footer>
</body>
</html>