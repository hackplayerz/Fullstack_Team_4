<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입폼</title>

<link rel="stylesheet" type="text/css" href="<c:url value='/css/sign/hw.css' />">
<link rel="stylesheet" type="text/css" href="<c:url value='/css/index/headerMenu.css' />">
    <script src="<c:url value='/js/jquery-3.6.1.min.js' />"></script>
    <script src="<c:url value='/js/sign/hw.js' />"></script>
    <script src="<c:url value='/js/index/index.js' />"></script>
    <script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
    <script src="<c:url value='/js/searchZip.js' />"></script>	
</head>
<body>
    <header id="header">
        <div id="headerBox">
            <div id="logoBox">
                <a href="<c:url value='/index.html' />"><h1>비전공 애견샵</h1></a>
            </div>
            <div id ="headerMenuBox">
                <div id="hMenuItem" class="signIn"><a href="<c:url value='/login.html' />" class="signInA">로그인</a></div>
                <div id="hMenuItem" class="signUp"><a href="<c:url value='/hw.html' />" class="signUnA">회원가입</a></div>
                <div id="hMenuItem" class="myPage"><a href="<c:url value='/myPage.html' />" class="myPageA">마이페이지</a></div>
            </div>
        </div>
    </header>
	<div class="member">
        <!-- 1. 필드 -->
        <div class="field">
            <b>ID</b>
            <span class="placehold-text">
                <input type="text" id="idInput">
            </span>
        </div>
        <div class="field">
            <b>비밀번호</b>
            <input class="userpw" type="password" id="pwInput">
        </div>
        <div class="field">
            <b>비밀번호 재확인</b>
            <input class="userpw-confirm" type="password" id="pwConfirm">
        </div>
        <div class="field">
            <b>이름</b>
            <input type="text" id="nameInput">
        </div>

        <!-- 2. 필드(생년월일) -->
        <div class="field birth">
            <b>생년월일</b>
            <div>
                <input type="number" placeholder="년(4자)" id="yearInput">                
                <select id="optM">
                    <option value="">월</option>
                    <option value="1">1월</option>
                    <option value="2">2월</option>
                    <option value="3">3월</option>
                    <option value="4">4월</option>
                    <option value="5">5월</option>
                    <option value="6">6월</option>
                    <option value="7">7월</option>
                    <option value="8">8월</option>
                    <option value="9">9월</option>
                    <option value="10">10월</option>
                    <option value="11">11월</option>
                    <option value="12">12월</option>
                </select>
                <input type="number" placeholder="일" id="dayInput">
            </div>
        </div>

        <!-- 3. 필드(성별) -->
        <div class="field gender">
            <b>성별</b>
            <select id="tjInput">
            	<option value="">선택</option>
            	<option value="남자">남자</option>
            	<option value="여자">여자</option>
            </select>
        </div>

        <!-- 4. 이메일_전화번호 -->
        <div class="field">
            <b>본인 확인 이메일</b>
            <input type="email" placeholder="선택입력" id="emailInput">
        </div>
        
        <div class="field tel-number">
            <b>휴대전화</b>
            <div>
                <input type="tel" id="telInput">
            </div>
        </div>
        
        <!-- 5. 주소 -->
        <div class="field">
            <b>주소</b>
            <span class="placehold-text">
            <input type="text" id="addressInput" name="addressInput" size="5" readonly>
            <input type="button" id="searchZipBtn" name="searchZipBtn" value="우편번호 찾기"><br>
		    <input type="text" id="address1" name="address1" placeholder="주소 입력" size="70" readonly> <br>
		    <input type="text" id="address2" name="address2" placeholder="상세 주소 입력" size="70">
		    </span>
            
        </div>

        <!-- 6. 가입하기 버튼 -->
        <button type="button" id="signUpBt">가입하기</button>
        
        <!-- 7. 푸터 -->
        
    </div>
    <footer id="footer">
        <hr/>
        <div><img src="<c:url value='/img/index/free-icon-profile-3135707.png' />"></div>
        <div id="compamy">
            <div>COMPAMY : 비전공같은 전공 / CALL CENTER : 영업부 031-0000-0000</div>
            <div>ADRESS : 서울 어딘가</div>
            <div>개인정보책임자 : 누군가 / 사업자 등록번호 100-23-00000 / 통신판매업 신고번호 : 2022-경기성남-0000호[사업자정보확인]</div>
            <div>Copyright by 비전공같은 전공. All rights reserved</div>
        </div>
        
    </footer>
</body>
</html>