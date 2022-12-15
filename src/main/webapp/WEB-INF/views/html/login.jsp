<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<link rel="stylesheet" type="text/css" href="<c:url value='/css/sign/Login.css' />">
<script src="<c:url value='/js/jquery-3.6.1.min.js'/>"></script>
<script src="<c:url value='/js/sign/login.js'/>"></script>
<c:import url="/WEB-INF/views/layout/toplink.jsp"/>
</head>
<body>
	<c:import url="/WEB-INF/views/layout/header.jsp" />
		<h2>로그인</h2>
		<div class="container">
			<form id="Login" name="Login">
				<input type="text" id="id" name="id" placeholder="아이디"><br>
				<input type="password" id="pw" name="pw" placeholder="비밀번호"><br>
                <input type="submit" id="login" value="로그인">

			</form>
		</div>
		<ul id="help">
              
              <li><a href="#">아이디/비밀번호찾기</a></li>
              <li><a href="<c:url value='/member/hwForm' />">회원가입</a></li>
        </ul>
        <c:import url="/WEB-INF/views/layout/footer.jsp" />
</body>
</html>