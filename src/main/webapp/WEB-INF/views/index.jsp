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
    <script src="js/index/slideShow.js"></script>
    <script src="js/index/index.js"></script>
    <c:import url="/WEB-INF/views/layout/toplink.jsp"/>
</head>
<body>
    <c:import url="/WEB-INF/views/layout/header.jsp" />
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