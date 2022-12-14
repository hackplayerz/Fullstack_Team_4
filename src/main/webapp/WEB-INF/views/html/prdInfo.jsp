<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<title>상품상세페이지</title>
		<!-- toplink -->
		<c:import url="/WEB-INF/views/layout/toplink.jsp"/>
		<link rel="stylesheet" type="text/css" href="<c:url value='/css/prdInfo/prdInfo.css'/>">
		<script src="<c:url value='/js/prdInfo/prdInfo.js'/>"></script>
	</head>
	<body>
		<!-- header -->
		<c:import url="/WEB-INF/views/layout/header.jsp" />
		<div id="bigFrame">
			<div id="highFrame">
				<div id="imageFrame">
					<img id="prdImage" src="<c:url value='/img/prdInfo/${prd.prdImg }' />" >
				</div>
				<div id="prdInfoFrame">
					<p id="prdName">${prd.prdName }</p>
					<br>
					<form id="prdInfo" method="post" action="<c:url value='/html/Insert_myPage' />">
						<!-- 상품 판매 정보 -->
						<dl>
							<dt>판매가</dt>
							<dd id="prdPrice"><fmt:formatNumber value = "${prd.prdPrice }" pattern="#,###" />원</dd>
						</dl>
						<dl>
							<dt>제조사</dt>
							<dd>${prd.prdCompany }</dd>
						</dl>
						<dl>
							<dt>원산지</dt>
							<dd>국산</dd>
						</dl>
						<dl>
							<dt>주문수량</dt>
							<dd><input type="number" min="1" value="1" id="prdAmount"></dd>
						</dl>
						<!-- 상품 판매 정보 끝 -->
						<div id="buttonFrame">
							<!-- 장바구니 샘플 구매 버튼 -->
								<button id="shoppingCart">장바구니 담기</button>
								<button type="button" id="sample">샘플받기</button>
								<button id="buy">구매 하기</button>
							<!-- 장바구니 샘플 구매 버튼 끝 -->
						</div>
					</form>	
				</div>
			</div>			
				<div id="prdInfoImageFrame">
					<!-- 상품 상세 사진 -->
					<img src="<c:url value='/img/prdInfo/tempImage01.jpg' />">
					<!-- 상품 상세 사진 끝 -->
				</div>	
			<div id="reviewTableFrame">
				<table border='1' id="reviewTable">
					<tr>
						<th class="NoLine">No.</th>
						<th class="NameLine">Name</th>
						<th class="ValueLine">Value</th>
					</tr>
					<tr>
						<td class="NoLine">1</td>
						<td class="NameLine">리뷰 제목</td>
						<td class="ValueLine">작성자?</td>
					</tr>
				</table>
				<button type="button" id="reviewButton">리뷰작성</button>
			</div>
		</div>
		<!-- footer -->
		<c:import url="/WEB-INF/views/layout/footer.jsp" />
	</body>
</html>