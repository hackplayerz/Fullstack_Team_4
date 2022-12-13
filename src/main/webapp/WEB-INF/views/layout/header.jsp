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
        location.href = '/html/product/${"'+sub+'"}';
        
        
    });
})
</script>
<header id="header">
    <div id="headerBox">
        <div id="logoBox">
            
            <a href="index.html"><img src="<c:url value='/img/logo.png' />"/><h1>비전공 애견샵</h1></a>
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
                            <a href="<c:url value='/member/logOut'/>" class="logOut">로그아웃</a>
                            <a href="<c:url value='//mypage'/>" class="myPage">마이페이지</a>
						</c:if>	
        </div>
    </div>
</header>
<nav id="nav">
    <ul class="submenu">
        <li class="submenuli">
            <div class="submenuClick" value="0">
                강아지 사료
            </div>
          <ul id = "submenu1" class="submenuItem">
            <li value="0">퍼피사료</li>
            <li value="0">어덜트사료</li>
            <li value="0">시니어사료</li>
        </ul>
        </li>
        <li class="submenuli">
            <div class="submenuClick" value="1">
                간식/저키
            </div>
          <ul id = "submenu2" class="submenuItem">
            <li value="1">간식</li>
            <li value="1">저키</li>
            <li class="submenuItemNull"><br></li>
        </ul>
        </li>
        <li class="submenuli">
            <div class="submenuClick" value="2">
                미용/목욕용품
            </div>
            <ul id = "submenu3" class="submenuItem">
                <li value="2">샴푸</li>
                <li value="2">린스</li>
                <li value="2">클리퍼</li>
            </ul>
          </li>
        <li class="submenuli">
            <div class="submenuClick" value="3">
                위생/배변용품
            </div>
          <ul id = "submenu4" class="submenuItem">
            <li value="3">미용가위</li>
            <li value="3">배변패드</li>
            <li class="submenuItemNull"><br></li>
        </ul>
        </li>
        <li class="submenuli">
            <div class="submenuClick" value="4">
                장난감/훈련용품
            </div>
          <ul id = "submenu5" class="submenuItem">
            <li value="4">짖음제어</li>
            <li value="4">봉제,치칠,고무</a></li>
            <li value="4">행동제어</a></li>
        </ul>
        </li>
        <li class="submenuli">
            <div class="submenuClick" value="5">
                식기/물병
            </div>
          <ul id = "submenu6" class="submenuItem">
            <li value="5">자동급식기</li>
            <li value="5">사료보관통</li>
            <li value="5">젖병</li>
        </ul>
        </li>
        <li class="submenuli">
            <div class="submenuClick" value="6">
                의류/악세사리
            </div>
            <ul id = "submenu7" class="submenuItem">
                <li value="6">의류</li>
                <li value="6">신발/양말</li>
                <li value="6">머리핀/고무줄</li>
            </ul>
          </li>
          <li class="submenuli">
            <div class="submenuClick" value="7">
                샘플
            </div>
            <ul id = "submenu8" class="submenuItem">
                <li value="7">프로모션 샘플</li>
                <li value="7">이벤트</li>
                <li class="submenuItemNull"><a ><br></a></li>
            </ul>
          </li>
          
      </ul>
</nav>