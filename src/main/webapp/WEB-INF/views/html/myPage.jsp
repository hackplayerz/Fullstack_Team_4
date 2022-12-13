<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>마이페이지 - 주문현황</title>
  <link rel="stylesheet" type="text/css" href="<c:url value='/css/mypage/myPage.css' />">
  <link rel="stylesheet" type="text/css" href="<c:url value='/css/index/headerMenu.css' />">
  <link rel="stylesheet" type="text/css" href="<c:url value='/css/index/menu.css' />">
  <script src="<c:url value='/js/jquery-3.6.1.min.js' />"></script>
  <script src="<c:url value='/js/index/menu.js' />"></script>
  <script src="<c:url value='/js/index/index.js' />"></script>
  <script src="<c:url value='/js/mypage/receiveMypage.js' />"></script>
  <script src="<c:url value='/js/mypage/myPage.js' />"></script>
  <script type="text/javascript">
	var qty=1;
	// 주문 수량을 변경하는 함수
			
	function qtyChange(num){
		qty = qty + num;
		if(qty < 1)
			qty = 1;
		// 주문액을 계산하는 함수 호출하기
		calAmount();
		}
			
	// 주문수량 변경될 때 주문액을 계산해서 출력하는 함수
	function calAmount(){
		//현재 주문수량과 예정 금액 가져오기
		var cartQty = document.getElementById('cartQty');
		var amount = document.getElementById('amount');
				
		var total = qty * ${prd.prdPrice};
				
		//결과 값 반영
		cartQty.value = qty;
		amount.innerHTML = total.toLocaleString(); //천단위 구분
		}
  </script>
  
  <!-- Header 메인창 -->
  <c:import url="/WEB-INF/views/layout/toplink.jsp"/>
    
</head>
<body>
  <!-- Header 카테고리 메뉴 -->
  <c:import url="/WEB-INF/views/layout/header.jsp" />
	
  <!-- 사이드 메뉴 영역 -->
  <section class="side_menu">
    <nav id="nav2">
      <h4>&nbsp;&nbsp;마이 페이지</h4>
      <ul>
        <li><a href="<c:url value='/html/myPage.jsp' />">장바구니</a>
        <li><a href="<c:url value='/html/info_Change_Bf.jsp' />">개인정보변경</a>
      </ul>
    </nav>
  </section>
  <!-- 진행 중인 주문 -->
  <div id="bodypage">
  <section class="order_status">
    <h5>| 진행 중인 주문</h5>
    <div class="status_box">
      <table class="order_ing">
        <thead>
          <tr>
            <td>결제완료</td><td>&nbsp;&nbsp;</td>
            <td>배송준비중</td><td>&nbsp;&nbsp;</td>
            <td>배송중</td><td>&nbsp;&nbsp;</td>
            <td>배송완료</td>
          </tr>
        </thead>
        <tbody>
          <tr>
          	<!-- 0으로 되어있는 부분에 변수명 넣어야함. 어떤 변수명일지 모르겠음 ..  -->
            <td class="o_num">0</td>
            <td>></td>
            <td class="o_num">0</td>
            <td>></td>
            <td class="o_num">0</td>
            <td>></td>
            <td class="o_num">0</td>
          </tr>
        </tbody>
      </table>
    </div>
  </section>
  
  <!-- 장바구니 부분 -->
  <section class="cart">
    <h5>| 장바구니</h5>
    <!-- 장바구니에 대한 간단한 정보를 보여주는 부분 -->
    <div class="cart_infomation">
      <ul class="cart_info">
        <li>장바구니 상품은 최대 1년 보관되며, 담은 시점과 현재의 판매 가격이 달라질 수 있습니다.</li>
        <li>가격, 옵션 등 정보가 변경될 경우 주문이 불가할 수 있습니다.</li>
      </ul>
    </div>
    <!-- 장바구니 테이블 -->
    <table class="cart_list">
      <form method="post" action="<c:url value='/html/orderForm'/> ">
        <thead>
          <tr>
            <td><input type="checkbox" id="allCheck" name="allCheck"> </td>
            <td colspan ="2">상품정보</td>
            <td>수량</td>
            <td>주문액</td>
            <td>배송비</td>
            <td>주문관리</td>
          </tr>
        </thead>
        <tbody>
        <!-- c:forEach 삽입 완료 -->
        <c:forEach var="prd" items="${cartList }"> 
          <tr class = "cart_list_item">
          	<!-- 사용자 속성 삽입 완료-->
            <td><input type="checkbox" class="chkDelete" data-cartNo="${prd.cartNo }"> </td>
            <td><img src="<c:url value='/img/${prd.prdImg }' />" alt ="상품 사진"></td>
            <!-- 해당 브랜드에 대한 페이지 있으면 주소 삽입 없으면 현행 유지 -->
            <td><a href="#"> ${prd.prdCompany }</a>
              <p> ${prd.prdName } </p>
              <span class="price"><fmt:formatNumber value="${prd.prdPrice }" pattern="#,###" /> 원 </span>
            </td>
            <td class="etc" >
              <div class="amount">
                <button style="cursor:pointer" onClick="qtyChange(-1)">━</button>
                <input type="text" id="cartQty" name="cartQty" size="1" value="1" maxlength="2" readonly>
                <button style="cursor:pointer" onClick="qtyChange(1)">╊</button>
              </div>
            </td>
            <td class="etc"> 
              <span id = "amount" class="amount">
                <c:set var="amount" value="${prd.prdPrice * prd.cartQty }" />
			    <c:set var="sum" value="${sum + amount}" />
			    <fmt:formatNumber value="${amount }" pattern="#,###" /> 원
              </span> 
            </td>
            <td class="etc">
              무료
            </td>
            <td class="etc">
              <button class="cart_list_option" id="deleteCartBtn" style="cursor:pointer">삭제하기</button>
            </td>
          </tr>
         </c:forEach>
        </tbody>
        <tfoot>
          <tr>
            <td colspan="7">
              <button class="cart_list_option" id="deleteCartBtn" style="cursor:pointer">선택 삭제</button>
            </td>
          </tr>
        </tfoot>
      </form>
    </table>
  </section>
  <br>
  <!-- 결제 예정금액 구역 구현하기 -->
  <section class="payment">
    <h5>| 결제 예정금액</h5>
    <!-- 결제 예정금액 안에 문자에 대해서 CSS를 주기 위해 문자 앞에 class를 줌  -->
    <!-- '상품 금액'과 '배송비', 그리고 +, = 를 하나의 클래스로 정하였음 -->
    <div class="pay_box">
      <span class="pay_box_text1">스토어 주문합계 &nbsp; : &nbsp;</span>
      <span class="pay_box_text2">상품 금액 &nbsp;</span>
      <span class="pay_box_text3"><fmt:formatNumber value="${sum }" pattern="#,###" /> 원 &nbsp;</span>
      <span class="pay_box_text2">+ &nbsp;</span>
      <span class="pay_box_text2">배송비 &nbsp;</span>
      <span class="pay_box_text4">0원 &nbsp;</span>
      <span class="pay_box_text2">= &nbsp;</span>
      <span class="pay_box_text5"><fmt:formatNumber value="${sum }" pattern="#,###" /> 원</span>
    </div>
    <div class="pay_btx">
      <button onClick="location.href='<c:url value="/index.jsp" />'"class="con_shopping" style="cursor:pointer">쇼핑 계속하기</button> 
      <button type="submit" class="stop_shopping" style="cursor:pointer">바로구매</button>
    </div>
  </section>
</div>
  <!-- Footer : 라이선스 -->
  <c:import url="/WEB-INF/views/layout/footer.jsp" />


</body>
</html>