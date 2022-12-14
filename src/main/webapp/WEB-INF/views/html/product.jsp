<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

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
                <h2>${subCategory[0].ctgName}</h2>
            </div>
            <section id="subCategory">
                <!-- 서브 카테고리 메뉴 -->
                    <div id="subCategoryContent">
                        <ul id="subCategoryMenu">
                        
                            <!-- 전체 카테고리 선택 -->
                                                        
                            <li id="menu"><a href="#">ALL</a></li>
                            <c:forEach var='category' items="${subCategory}">
                                <li>|</li>
                                <!-- 서브카테고리 선택 -->
                                <li id="menu" class="menu">
                                	<a href="">${category.subName}</a>
                                </li>
                            </c:forEach>
                            
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

                    <!-- 상품 컨텐츠 -->
                    <c:forEach var="prd" items="${prdList}">
                        <div class="productSource">
                            <a href="<c:url value = '/html/prdInfo/${prd.prdNo}' />"><img src="<c:url value='/img/product/${prd.prdImg}' />" class="image"></a>                       
                            
                            <p class="name">
                                ${prd.prdName}
                            </p>
                            <p class="price">
                                ${prd.prdPrice}
                            </p>
                        </div>
                    </c:forEach>

                    
                </div>  	
            </div> 
        </section>
    </div>

    <!-- Footer : 라이선스 -->
    <c:import url="/WEB-INF/views/layout/footer.jsp" />
</body>
</html>