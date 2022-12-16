<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<script type="text/javascript">
    $(document).ready(function(){
    $('.submenuClick').on('click', function(){
        var sub = $(this).attr('value');
        location.href = '/html/product/${"'+sub+'"}';
        
    });
    
    $('.submenuItem li').on('click', function(){
        
        var sub = $(this).attr('value');
        
        var subLi = $(this).text();
        location.href = '/html/liProduct/${"'+sub+'"}/${"'+subLi+'"}';

    });
})
</script>
<header id="topHeader">
    <div id="headerBox">
        <div id="logoBox">
            
            <a href="<c:url value='/'/>"><img src="<c:url value='/img/logo.png' />"/><h1>비전공 애견샵</h1></a>
        </div>
        <div id ="headerMenuBox">
            <!-- 로그인 하기 전에 보여줄 메뉴 항목 -->
						<c:if test="${empty sessionScope.sid }">
                            <a href="<c:url value='/member/loginForm'/>" id="headerMenuA" class="signIn">로그인</a>
                            <a href="<c:url value='/member/hwForm'/>" id="headerMenuA" class="signUn">회원가입</a>
						</c:if>		
						
						<!-- 로그인 성공 후 보여줄 메뉴 항목 -->
						<c:if test="${not empty sessionScope.sid }">
							<a id="headerUserId">${sessionScope.sid}님 환영합니다.</a>
                            <a href="<c:url value='/member/logout'/>" id="headerMenuA" class="logOut">로그아웃</a>
                            <a href="<c:url value='/product/cartList'/>" id="headerMenuA" class="myPage">마이페이지</a>
						</c:if>	
        </div>
    </div>
</header>

<nav id="topNav">
    <div id="container">
        <ul id="navMenu">
            <li class="submenuli"><a  class="submenuClick" href="#" value="0">강아지 사료</a>
                <ul id = "submenu1" class="submenuItem">
                    <li value="0"><a href="#">퍼피사료</a></li>
                    <li value="0"><a href="#">어덜트사료</a></li>
                    <li value="0"><a href="#">시니어사료</a></li>
                </ul>
            </li>
            <li class="submenuli"><a  class="submenuClick" href="#" value="1">간식/져키</a>
              <ul id = "submenu2" class="submenuItem">
                <li value="1"><a href="#">간식</a></li>
                <li value="1"><a href="#">저키</a></li>
            </ul>
            </li>
            <li class="submenuli"><a  class="submenuClick" href="#" value="2">미용/목욕용품</a>
                <ul id = "submenu3" class="submenuItem">
                    <li value="2"><a href="#">샴푸</a></li>
                    <li value="2"><a href="#">린스</a></li>
                    <li value="2"><a href="#">클리퍼</a></li>
                </ul>
            </li>
            <li class="submenuli"><a  class="submenuClick" href="#" value="3">위생/배변용품</a>
                <ul id = "submenu4" class="submenuItem">
                    <li value="3"><a href="#">미용가위</a></li>
                    <li value="3"><a href="#">배변패드</a></li>
                </ul>
            </li>
            <li class="submenuli"><a  class="submenuClick" href="#" value="4">장난감/훈련용품</a>
                <ul id = "submenu5" class="submenuItem">
                    <li value="4"><a href="#">짖음제어</a></li>
                    <li value="4"><a href="#">봉제,치칠,고무</a></li>
                    <li value="4"><a href="#">행동제어</a></li>
                </ul>
            </li>
            <li class="submenuli"><a  class="submenuClick" href="#" value="5">식기/물병</a>
                <ul id = "submenu6" class="submenuItem">
                    <li value="5"><a href="#">자동급식기</a></li>
                    <li value="5"><a href="#">사료보관통</a></li>
                    <li value="5"><a href="#">젖병</a></li>
                </ul>
            </li>
            <li class="submenuli"><a  class="submenuClick" href="#" value="6">의류/악세사리</a>
                <ul id = "submenu7" class="submenuItem">
                    <li value="6"><a href="#">의류</a></li>
                    <li value="6"><a href="#">신발/양말</a></li>
                    <li value="6"><a href="#">머리핀/고무줄</a></li>
                </ul>
            </li>
            <li class="submenuli"><a  class="submenuClick" href="#" value="7">샘플</a>
                <ul id = "submenu8" class="submenuItem">
                    <li value="7"><a href="#">프로모션 샘플</a></li>
                    <li value="7"><a href="#">이벤트</a></li>
                </ul>
            </li>
        </ul>
    </div>
</nav>