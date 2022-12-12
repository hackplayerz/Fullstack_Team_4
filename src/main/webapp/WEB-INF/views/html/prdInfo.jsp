<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<title>상품상세페이지</title>
		<link rel="stylesheet" type="text/css" href="<c:url value='/css/prdInfo/prdInfo.css'/>">
		<script src="<c:url value='/js/prdInfo/prdInfo.js'/>"></script>
		<!-- toplink -->
		<c:import url="/WEB-INF/views/layout/toplink.jsp"/>
	</head>
	<body>
		<!-- header -->
		<c:import url="/WEB-INF/views/layout/header.jsp" />
		<div id="bigFrame">
			<div id="highFrame">
				<div id="imageFrame">
					<img src="<c:url value='/img/prdlnfo/dogFood01.jpg' />" id="prdImage">
				</div>
				<div id="prdInfoFrame">
					<input type="text" id="prdName" disabled>
					<br>
					<form id="prdInfo">
						<!-- 상품 판매 정보 -->
						<dl>
							<dt>판매가</dt>
							<dd><input type="text" id="prdPrice" disabled></dd>
						</dl>
						<dl>
							<dt>제조사</dt>
							<dd>제조사 명</dd>
						</dl>
						<dl>
							<dt>원산지</dt>
							<dd>한국</dd>
						</dl>
						<dl>
							<dt>주문수량</dt>
							<dd><input type="number" min="1" value="1" id="prdAmount"></dd>
						</dl>
						<!-- 상품 판매 정보 끝 -->
						<div id="buttonFrame">
							<!-- 장바구니 샘플 구매 버튼 -->
							<button type="button" id="shoppingCart" onclick="location.href='myPage.html'">
								<span>장바구니</span>
								<span>담기</span>
							</button>
							<button type="submit" id="sample">샘플받기</button>
							<button type="submit" id="buy">구매</button>
							<!-- 장바구니 샘플 구매 버튼 끝 -->
						</div>
					</form>	
				</div>
			</div>			
				<div id="prdInfoImageFrame">
					<!-- 상품 상세 사진 -->
					<img src="<c:url value='/img/prdlnfo/tempImage01.jpg' />">
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