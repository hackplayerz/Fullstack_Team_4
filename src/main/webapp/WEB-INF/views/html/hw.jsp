<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>hw</title>
<link rel="stylesheet" type="text/css" href="<c:url value='/css/sign/hw.css' />">
    <script src="<c:url value='/js/jquery-3.6.1.min.js' />"></script>
    <script src="<c:url value='/js/sign/hw.js' />"></script>
    
    <script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
    <script src="<c:url value='/js/sign/searchZip.js' />"></script>	

    <c:import url="/WEB-INF/views/layout/toplink.jsp"/>
    
	<header id="header">
    <div id="headerBox">
        <div id="logoBox">
            
            <a href="<c:url value='/'/>"><img src="<c:url value='/img/logo.png' />"/><h1>비전공 애견샵</h1></a>
        </div>
        <div id ="headerMenuBox">
            <!-- 로그인 하기 전에 보여줄 메뉴 항목 -->
						<c:if test="${empty sessionScope.sid }">
                            <a href="<c:url value='/member/loginForm'/>" class="signIn">로그인</a>
                            <a href="<c:url value='/member/hwForm'/>" class="signUn">회원가입</a>
						</c:if>		
						
						<!-- 로그인 성공 후 보여줄 메뉴 항목 -->
						<c:if test="${not empty sessionScope.sid }">
							<p>${sessionScope.sid}님 환영합니다!</p>
                            <a href="<c:url value='/member/logout'/>" class="logOut">로그아웃</a>
                            <a href="<c:url value='/html/Insert_myPage'/>" class="myPage">마이페이지</a>
						</c:if>	
        </div>
    </div>
</header>
</head>
<body>
    
	<div class="member">
	<form id="hwform" name="hwform" method="post"  action="<c:url value='/member/insert'/>">
        <h2>회원가입</h2>
        <!-- 1. 필드 -->
        <div class="field">
            <b>ID</b>
                <input type="text" id="mbId" name="mbId">
        </div>
        <div class="field">
            <b>비밀번호</b>
            <input class="userpw" type="password" id="mbPw" name="mbPw">
        </div>
        <div class="field">
            <b>비밀번호 재확인</b>
            <input class="userpw-confirm" type="password" id="pwConfirm">
        </div>
        <div class="field">
            <b>이름</b>
            <input type="text" id="mbName" name="mbName">
        </div>

        <!-- 2. 필드(생년월일) -->
        <div class="field-birth">
            <b>생년월일</b>
            <div>
                <input type="number" placeholder="년(4자)" id="mbBirthY" name="mbBirthY">                
                <select id="mbBirthM" name="mbBirthM">
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
                <input type="number" placeholder="일" id="mbBirthD" name="mbBirthD">
            </div>
        </div>

        <!-- 3. 필드(성별) -->
        <div class="field gender">
            <b>성별</b>
            <select id="mbGen" name="mbGen">
            	<option value="">선택</option>
            	<option value="남자">남자</option>
            	<option value="여자">여자</option>
            </select>
        </div>

        <!-- 4. 이메일_전화번호 -->
        <div class="field">
            <b>본인 확인 이메일</b>
            <input type="email" placeholder="선택입력" id="mbEmail" name="mbEmail">
        </div>
        
        <div class="field tel-number">
            <b>휴대전화</b>
            <div>
                <input type="text" id="memHp1" name="memHp1" size="3"> 
		                    - <input type="text" id="memHp2" name="memHp2" size="4">
		                    - <input type="text" id="memHp3" name="memHp3" size="4">

            </div>
        </div>
        
        <!-- 5. 주소 -->
        <div class="field">
            <b>주소</b>
            <span class="placehold-text">
            <input type="text" id="mbZipcode" name="mbZipcode" placeholder="우편번호 입력" size="5" readonly><br>
            <input type="button" id="searchZipBtn" name="searchZipBtn" value="우편번호 찾기"><br>
		    <input type="text" id="mbAddress1" name="mbAddress1" placeholder="주소 입력" size="70" readonly> <br>
		    <input type="text" id="mbAddress2" name="mbAddress2" placeholder="상세 주소 입력" size="70">
		    </span>
            
        </div>

        <!-- 6. 가입하기 버튼 -->
        <br>
        	<input type="submit" id="submit" value="완료"><br>
		    <input type="reset" id="reset" value="취소">
		

        
    </form>
      
        <!-- 7. 푸터 -->
        
    </div>
    <c:import url="/WEB-INF/views/layout/footer.jsp" />
</body>
</html>