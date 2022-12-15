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
    <link rel="stylesheet" type="text/css" href="<c:url value='css/index/index.css' />">
    <link rel="stylesheet" type="text/css" href="<c:url value='css/index/slideShow.css' />">
    <link rel="stylesheet" type="text/css" href="<c:url value='css/index/product.css' />">
    <script src="<c:url value='js/jquery-3.6.1.min.js' />"></script>
    <script src="<c:url value='js/index/slideShow.js' />"></script>
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
        <div id="Event">
            <div id="dogEvent1"> <img src="img/index/dog3.jpg"></div>
            <div id="dogEvent2"> <img src="img/index/dogimg1.jpg"></div>
            <div id="dogEvent3"> <img src="img/index/dog2.jpg"></div>
        </div>
        
        
        <article  id="content2"> <!-- 베스트 상품 -->    
            <div id="productBox" >
                <div class="prdRecommend">신규 상품</div>
                <div class="Mainproduct">
                    
                    <c:forEach var="prdDate" items="${prdListDate}">
                        <div>
                            <a href="<c:url value = '/html/prdInfo/${prdDate.prdNo}' />">
                                <img src="<c:url value='/img/product/${prdDate.prdImg}' />">
                                    ${prdDate.prdName}
                                <p>
                                    ${prdDate.prdPrice}
                                </p>
                            </a>
                        </div>
                    </c:forEach>
                </div>
                <div class="prdRecommend">많이 보는 상품</div>
                <div class="Mainproduct">
                    <c:forEach var="prdVisit" items="${prdListVisit}">
                        <div>
                            <a href="<c:url value = '/html/prdInfo/${prdVisit.prdNo}' />">
                                <img src="<c:url value='/img/product/${prdVisit.prdImg}' />">
                                    ${prdVisit.prdName}
                                <p>
                                    ${prdVisit.prdPrice}
                                </p>
                            </a>
                        </div>
                    </c:forEach>
                </div>
                <div class="prdRecommend">주문량이 많은 상품</div>
                <div class="Mainproduct">
                    <c:forEach var="prdOrder" items="${prdListOrder}">
                        <div>
                            <a href="<c:url value = '/html/prdInfo/${prdOrder.prdNo}' />">
                                <img src="<c:url value='/img/product/${prdOrder.prdImg}' />">
                                    ${prdOrder.prdName}
                                <p>
                                    ${prdOrder.prdPrice}
                                </p>
                            </a>
                        </div>
                    </c:forEach>
                </div>
               
            </div>     	
        </article>
        
    </section>
    
    <c:import url="/WEB-INF/views/layout/footer.jsp" />
</body>
</html>