<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="<c:url value = '/css/product/product.css' />">	
    <link rel="stylesheet" type="text/css" href="<c:url value = '/css/product/categoryMenu.css' />">	
    <link rel="stylesheet" type="text/css" href="<c:url value = '/css/index/headerMenu.css' />">
    <link rel="stylesheet" type="text/css" href="<c:url value = '/css/index/menu.css' />"> 
    <script src="<c:url value = '/js/jquery-3.6.1.min.js' />"></script>    
    <script src="<c:url value = '/js/product/product.js' />"></script>    
    <script src="<c:url value = '/js/index/menu.js' />"></script>    
    <script src="<c:url value = '/js/index/index.js' />"></script>

    <!-- Header 메인창 -->
    <c:import url="/WEB-INF/views/layout/toplink.jsp"/>

    <title>상품</title>
</head>
<body>
    <!-- Header 카테고리 메뉴 -->
    <c:import url="/WEB-INF/views/layout/header.jsp" />

    <div id="mainBody">
        <!-- 카테고리 이름 -->
        <section id="category">
            <div id="categoryName">
                <h2>간식</h2>
            </div>
            <section id="subCategory">
                <!-- 서브 카테고리 메뉴 -->
                    <div id="subCategoryContent">
                        <ul id="subCategoryMenu"> 
                            <li id="menu0" class="menu"><a href="#">ALL</a></li>
                            <li>|</li>
                            <li id="menu1" class="menu"><a href="#">간식</a></li>
                            <li>|</li>
                            <li id="menu2" class="menu"><a href="#">개껌</a></li>
                            <li>|</li>
                            <li id="menu3" class="menu"><a href="#">캔</a></li>
                        </ul>
                    </div>                             
            </section>    
        </section>
        <!-- 상품들 -->
        <section>
            <br>
            <br>
            <!-- 카테고리 총 개수 -->
            <div id="elementCount">
                총000개
            </div>
            <hr> <!--및줄-->   

            <div id="content">
                <div id="product">
                    <div class="productSource">
                        <a href="<c:url value = '/html/prdInfo' />"><img src="../img/product/06950f7e9aaffab2bd5d790056acb907.jpg" class="image"></a>                        
                        <p class="name">
                            sdsdsdsdsdsd
                        </p>
                        <p class="price">
                            00000원
                        </p>
                    </div>
                    <div class="productSource">
                        <a href="<c:url value = '/html/prdInfo' />"><img src="../img/product/06950f7e9aaffab2bd5d790056acb907.jpg" class="image"></a>
                        <p class="name">
                            sdsdsdsdsdsd
                        </p>
                        <p class="price">
                            00000원
                        </p>
                    </div>
                    <div class="productSource">
                        <a href="<c:url value = '/html/prdInfo' />"><img src="../img/product/06950f7e9aaffab2bd5d790056acb907.jpg" class="image"></a>
                        <p class="name">
                            sdsdsdsdsdsd
                        </p>
                        <p class="price">
                            00000원
                        </p>
                    </div>
                    <div class="productSource">
                        <a href="<c:url value = '/html/prdInfo' />"><img src="../img/product/_02 (1).png" class="image"></a>
                        <p class="name">
                            sdsdsdsdsdsd
                        </p>
                        <p class="price">
                            00000원
                        </p>
                    </div>
                    <div class="productSource">
                        <a href="<c:url value = '/html/prdInfo' />"><img src="../img/product/_02.png" class="image"></a>
                        <p class="name">
                            sdsdsdsdsdsd
                        </p>
                        <p class="price">
                            00000원
                        </p>
                    </div>

                </div>  	
            </div> 
        </section>
    </div>

    <!-- Footer : 라이선스 -->
    <c:import url="/WEB-INF/views/layout/footer.jsp" />
</body>
</html>