<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>마이페이지 - 주문현황</title>
  <link rel="stylesheet" type="text/css" href="<c:url value='../css/mypage/myPage.css' />">
  <link rel="stylesheet" type="text/css" href="<c:url value='../css/index/headerMenu.css' />">
  <link rel="stylesheet" type="text/css" href="<c:url value='../css/index/menu.css' />">
  <script src="<c:url value='../js/jquery-3.6.1.min.js' />"></script>
  <script src="<c:url value='../js/index/menu.js' />"></script>
  <script src="<c:url value='../js/index/index.js' />"></script>
  <script src="<c:url value='../js/mypage/receiveMypage.js' />"></script>
  
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
        <li><a href="<c:url value='myPage.jsp' />">마이페이지</a>
        <li><a href="<c:url value='info_Change_Bf.jsp' />">개인정보변경</a>
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
      <form>
        <thead>
          <tr>
            <td><input type="checkbox"> </td>
            <td colspan ="2">상품정보</td>
            <td>수량</td>
            <td>주문액</td>
            <td>배송비</td>
            <td>주문관리</td>
          </tr>
        </thead>
        <tbody>
          <tr class = "cart_list_item">
            <td><input type="checkbox"> </td>
            <!-- 이 구역안에 전부 a태그를 주어야 함. HOW ?  -->
            <td><img src="<c:url value='../img/mypage/pet_pack.PNG' />" alt ="강아지 이동 가방"></td>
            <!-- 해당 브랜드에 대한 페이지 있으면 주소 삽입 없으면 현행 유지 -->
            <td><a href="#"> 브랜드명 넣기(있을경우)</a>
              <p> 강아지 이동 가방 </p>
              <span class="price"> 20,000원 </span>
            </td>
            <td class="etc" >
              <div class="amount">
                <button class="change" style="cursor:pointer">━</button>
                <input type="text" class="q_num" size="1" maxlength="2">
                <button class="change" style="cursor:pointer">╊</button>
              </div>
            </td>
            <td class="etc"> 주문액 = 수량 * price
            </td>
            <td class="etc">
              무료
            </td>
            <td class="etc">
              <button class="cart_list_option" style="cursor:pointer">삭제하기</button>
            </td>
          </tr>
        </tbody>
        <tfoot>
          <tr>
            <td colspan="7">
              <button class="cart_list_option" style="cursor:pointer">선택 삭제</button>
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
      <span class="pay_box_text3">000,000원 &nbsp;</span>
      <span class="pay_box_text2">+ &nbsp;</span>
      <span class="pay_box_text2">배송비 &nbsp;</span>
      <span class="pay_box_text4">0원 &nbsp;</span>
      <span class="pay_box_text2">= &nbsp;</span>
      <span class="pay_box_text5">000,000원</span>
    </div>
    <div class="pay_btx">
      <button type="button" onClick="location.href='<c:url value="../index.jsp" />'"class="con_shopping" style="cursor:pointer">쇼핑 계속하기</button> 
      <button class="stop_shopping" style="cursor:pointer">바로구매</button>
    </div>
  </section>
</div>
  <!-- Footer : 라이선스 -->
  <c:import url="/WEB-INF/views/layout/footer.jsp" />


</body>
</html>