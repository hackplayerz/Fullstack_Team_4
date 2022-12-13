<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<link rel="stylesheet" type="text/css" href="<c:url value='/css/sign/Login.css' />">

<script src="../js/jquery-3.6.1.min.js"></script>
<script src="../js/index/index.js"></script>
<c:import url="/WEB-INF/views/layout/toplink.jsp"/>
</head>
<body>
	<c:import url="/WEB-INF/views/layout/header.jsp" />
		<h2>로그인</h2>
		<div class="container">
			<form action="#">
				<p class=""><input type="text" name="id" placeholder="아이디"></p>
				<p class=""><input type="password" name="password" placeholder="비밀번호"></p>
			</form>
		</div>
		<ul id="help">
              <li><a href="#">아이디찾기</a></li>
              <li>/</li>
              <li><a href="#">비밀번호찾기</a></li>
              <li>/</li>
              <li><a href="<c:url value='hw.html' />">회원가입</a></li>
        </ul>
        <button type="submit">로그인</button>
        <c:import url="/WEB-INF/views/layout/footer.jsp" />
</body>
</html>