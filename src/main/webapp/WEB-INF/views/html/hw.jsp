<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<<<<<<< HEAD
<title>회원가입폼</title>
<title>hw</title>

<link rel="stylesheet" type="text/css" href="<c:url value='/css/sign/hw.css' />">
<link rel="stylesheet" type="text/css" href="<c:url value='/css/index/headerMenu.css' />">
    <script src="<c:url value='/js/jquery-3.6.1.min.js' />"></script>
    <script src="<c:url value='/js/sign/hw.js' />"></script>
    <script src="<c:url value='/js/index/index.js' />"></script>
    
    <script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
    <script src="<c:url value='/js/searchZip.js' />"></script>	

    <c:import url="/WEB-INF/views/layout/toplink.jsp"/>

</head>
<body>
    <c:import url="/WEB-INF/views/layout/header.jsp" />
	<div class="member">
	<form id="hwform" name="hwform" method="post"  action="<c:url value='/member/insert'/>">
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
        <div class="field birth">
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
            <input type="text" id="mbZipcode" name="mbZipcode" size="5" readonly>
            <input type="button" id="searchZipBtn" name="searchZipBtn" value="우편번호 찾기"><br>
		    <input type="text" id="mbAddress1" name="mbAddress1" placeholder="주소 입력" size="70" readonly> <br>
		    <input type="text" id="mbAddress2" name="mbAddress2" placeholder="상세 주소 입력" size="70">
		    </span>
            
        </div>

        <!-- 6. 가입하기 버튼 -->
        <br><input type="submit" value="완료">
		    <input type="reset" value="취소">

        
    </form>
      
        <!-- 7. 푸터 -->
        
    </div>
    <c:import url="/WEB-INF/views/layout/footer.jsp" />
</body>
</html>