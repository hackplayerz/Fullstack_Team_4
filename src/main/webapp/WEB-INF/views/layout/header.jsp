<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<header id="header">
    <div id="headerBox">
        <div id="logoBox">
            
            <a href="index.html"><img src="<c:url value='/img/logo.png' />"/><h1>비전공 애견샵</h1></a>
        </div>
        <div id ="headerMenuBox">
            <div id="hMenuItem" class="signIn"><a href="#" class="signInA">로그인</a></div>
            <div id="hMenuItem" class="signUp"><a href="#" class="signUnA">회원가입</a></div>
            <div id="hMenuItem" class="myPage"><a href="#" class="myPageA">마이페이지</a></div>
        </div>
    </div>
</header>
<nav id="nav">
    <ul class="submenu">
        <li class="submenuli">
            <div id="menu1" class="submenuClick">
                강아지 사료
            </div>
          <ul id = "submenu1" class="submenuItem">
            <li id="menu1">퍼피사료</li>
            <li id="menu1">어덜트사료</li>
            <li id="menu1">시니어사료</li>
        </ul>
        </li>
        <li class="submenuli">
            <div class="submenuClick">
                간식/저키
            </div>
          <ul id = "submenu2" class="submenuItem">
            <li id="menu2">간식</li>
            <li id="menu2">저키</li>
            <li class="submenuItemNull"><br></li>
        </ul>
        </li>
        <li class="submenuli">
            <div class="submenuClick">
                미용/목욕용품
            </div>
            <ul id = "submenu3" class="submenuItem">
                <li id="menu3">샴푸</li>
                <li id="menu3">린스</li>
                <li id="menu3">클리퍼</li>
            </ul>
          </li>
        <li class="submenuli">
            <div class="submenuClick">
                위생/배변용품
            </div>
          <ul id = "submenu4" class="submenuItem">
            <li id="menu4">미용가위</li>
            <li id="menu4">배변패드</li>
            <li class="submenuItemNull"><br></li>
        </ul>
        </li>
        <li class="submenuli">
            <div class="submenuClick">
                장난감/훈련용품
            </div>
          <ul id = "submenu5" class="submenuItem">
            <li id="menu5">짖음제어</li>
            <li id="menu5">봉제,치칠,고무</a></li>
            <li id="menu5">행동제어</a></li>
        </ul>
        </li>
        <li class="submenuli">
            <div class="submenuClick">
                식기/물병
            </div>
          <ul id = "submenu6" class="submenuItem">
            <li><a href="../html/product.html" id="menu6">자동급식기</a></li>
            <li><a href="../html/product.html" id="menu6">사료보관통</a></li>
            <li><a href="../html/product.html" id="menu6">젖병</a></li>
        </ul>
        </li>
        <li class="submenuli">
            <div class="submenuClick">
                의류/악세사리
            </div>
            <ul id = "submenu7" class="submenuItem">
                <li><a href="../html/product.html" id="menu7">의류</a></li>
                <li><a href="../html/product.html" id="menu7">신발/양말</a></li>
                <li><a href="../html/product.html" id="menu7">머리핀/고무줄</a></li>
            </ul>
          </li>
          <li class="submenuli">
            <div class="submenuClick">
                샘플
            </div>
            <ul id = "submenu8" class="submenuItem">
                <li><a href="../html/product.html" id="menu8">프로모션 샘플</a></li>
                <li><a href="../html/product.html" id="menu8">이벤트</a></li>
                <li class="submenuItemNull"><a ><br></a></li>
            </ul>
          </li>
          
      </ul>
</nav>