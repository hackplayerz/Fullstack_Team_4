<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <title>주문서 작성 페이지</title>
    <link rel="stylesheet" type="text/css" href="<c:url value='/css/index/headerMenu.css' />">
  	<link rel="stylesheet" type="text/css" href="<c:url value='/css/index/menu.css' />">
 	<script src="<c:url value='/js/jquery-3.6.1.min.js' />"></script>
 	<script src="<c:url value='/js/index/menu.js' />"></script>
 	<script src="<c:url value='/js/index/index.js' />"></script>
    <!-- Header 메인창 -->
    <c:import url="/WEB-INF/views/layout/toplink.jsp"/>
    
    <style>
		h3 { margin-top:20px;}
		table { width:900px; margin-top:20px; border-collapse: collapse;}
		table caption { font-size: 20px; font-weight: 600; margin-bottom: 10px;}	
		table tr { height:30px; }
		table th, td { border:solid gray 1px; padding:10px;}
		table th { background-color: darkgray; color: #fff; width: 100px; }	
		table td { text-align: center; width: 300px; }	
		input, select { text-align:left; height: 20px; margin: 2px 0;}
		.order_list td { text-align: center; }
	</style>
    
  </head>
  <body>
    <div id="wrap">
      <!-- Header 카테고리 메뉴 -->
  	  <c:import url="/WEB-INF/views/layout/header.jsp" />	
      <section>
        <br>
        <form method="post" action="<c:url value='/product/orderComplete'/> ">
	      <!-- 1. 주문자 정보 -->
	      <h3>주문자 정보</h3>
	      <table border="1" width="800">
	        <tr>
	          <th>주문자</th>
	          <td width="200">${memVo.memName }
	            <input type="hidden" name="memId" value="${memVo.memId }">
	          </td>
	          <th>연락처</th>
	          <td>${hp1 } - ${hp2 } - ${hp3 }</td>
	        </tr>
	      </table>
	      <!-- 2. 수령인 정보 -->
	  	  <h3>수령인 정보</h3>
	      <table border="1" width="800">
	        <tr>
	          <th>수령인</th>
	          <td width="200"><input type="text" name="ordReceiver" value="${memVo.memName }"></td>
	          <th>연락처</th>
	          <td>
	            <input type="text" name="hp1" value="${hp1}" size="3"> - 
	            <input type="text" name="hp2" value="${hp2}" size="4"> - 
	            <input type="text" name="hp3" value="${hp3}" size="4">
	          </td>
	        </tr>
	        <tr>
	          <th>배송지 주소</th>
	          <td colspan="3">
	            <input type="text" id="ordRcvZipcode" name="ordRcvZipcode" size="5" 
	            	   value="${memVo.memZipcode }" readonly>
		        <input type="button" id="searchZipBtn" name="searchZipBtn" value="우편번호 찾기"><br>
		        <input type="text" id="ordRcvAddress1" name="ordRcvAddress1" placeholder="주소 입력" size="70" 
		               value="${memVo.memAddress1 }" readonly> <br>
		        <input type="text" id="ordRcvAddress2" name="ordRcvAddress2" placeholder="상세 주소 입력" size="70" 
		        	   value="${memVo.memAddress2 }">
	          </td>
	        </tr>
	        <tr>
	          <th>배송 메시지</th>
	          <td colspan="3">
	            <select name="ordRcvMsg">
	              <option value="배송 전 전화주세요.">배송 전 전화주세요.</option>
	              <option value="부재중인경우 전화주세요">부재중인경우 전화주세요.</option>
	              <option value="부재중인 경우 문앞에 놓고 가세요">부재중인 경우 문앞에 놓고 가세요.</option>
	            </select>
	          </td>
	        </tr>
	      </table>
	      <!-- 3. 주문 상품 목록 -->
	      <h3>주문 상품 목록</h3>
	      <table border="1" width="800">
	      	<tr>
				<th>상품번호</th>
				<th>사진</th>
				<th>상품명</th>
				<th>가격</th>
				<th>주문수량</th>
				<th>구매예정액</th>
			</tr>
			<c:forEach var="prd" items="${cartList }">		
			    <tr>
	               <td>${prd.prdNo }</td>
	               <td><img src="<c:url value='/images/${prd.prdImg}' />" width="50" height="30"></td>
	               <td>${prd.prdName }</td>
	               <td align="right"><fmt:formatNumber value="${prd.prdPrice }" pattern="#,###" /> 원</td>
	               <td>
	                 <input type="text" name="cartQty" value="${prd.cartQty }" size="1" readonly>
	                 <!-- 주문에 필요한 정보를 hidden(사용자에겐 안보임)으로 넘겨주자 ! -->
	                 <input type="hidden" name="cartNo" value="${prd.cartNo }" size="1">
	                 <input type="hidden" name="prdNo" value="${prd.prdNo }" size="1">
	               </td>
	               <td align="right">
	               	<span class="amount">
	               	  <c:set var="amount" value="${prd.prdPrice * prd.cartQty }" />
	               	  <c:set var="sum" value="${sum + amount}" />
	               	  <fmt:formatNumber value="${amount }" pattern="#,###" /> 
	               	</span>	원
	               </td>	               
	            </tr>
	         </c:forEach>
	         <tr>
	           <td colspan="5">총 구매 예정액</td>
	           <td align ="right"><fmt:formatNumber value="${sum }" pattern="#,###" /> 원</td>
	         </tr>
	      </table>><br>
	      <!-- 4. 결제 정보(결제 방법 선택) -->
          <h3>결제 정보</h3>
	      <table border="1" width="800">
	        <tr>
	          <th>결제 방법</th>
	          <td>
	            <input type="radio" name="ordPay" value="card">신용카드
	            <input type="radio" name="ordPay" value="bank">계좌이체
	          </td>
	        </tr>
	      </table><br>
	      <input type="submit" value="주문완료">
        </form><br>
      </section>
      <!--  bottom -->         
      <c:import url="/WEB-INF/views/layout/bottom.jsp" />
  </body>
</html>