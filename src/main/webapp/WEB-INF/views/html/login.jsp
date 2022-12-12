<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<link rel="stylesheet" type="text/css" href="<c:url value='../css/sign/Login.css' />">

<link rel="stylesheet" type="text/css" href="<c:url value='../css/index/headerMenu.css' />">
<script src="../js/jquery-3.6.1.min.js"></script>
<script src="../js/index/index.js"></script>
</head>
<body>
	<header id="header">
        <div id="headerBox">
            <div id="logoBox">
                <a href="<c:url value='../index.html' />"><h1>비전공 애견샵</h1></a>
            </div>
            <div id ="headerMenuBox">
                <div id="hMenuItem" class="signIn"><a href="#" class="signInA">로그인</a></div>
                <div id="hMenuItem" class="signUp"><a href="#" class="signUnA">회원가입</a></div>
                <div id="hMenuItem" class="myPage"><a href="#" class="myPageA">마이페이지</a></div>
            </div>
        </div>
    </header>
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
        <footer id="footer">
            <hr/>
            <div><img src="<c:url value='../img/index/free-icon-profile-3135707.png' />"></div>
            <div id="compamy">
                <div>COMPAMY : 비전공같은 전공 / CALL CENTER : 영업부 031-0000-0000</div>
                <div>ADRESS : 서울 어딘가</div>
                <div>개인정보책임자 : 누군가 / 사업자 등록번호 100-23-00000 / 통신판매업 신고번호 : 2022-경기성남-0000호[사업자정보확인]</div>
                <div>Copyright by 비전공같은 전공. All rights reserved</div>
            </div>
            
        </footer>
</body>
</html>