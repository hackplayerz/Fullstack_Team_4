<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>개인정보 수정 전 비밀번호 입력하는 화면</title>
  <link rel="stylesheet" type="text/css" href="<c:url value='/css/mypage/info_Change_Bf.css' />">
  
  <link rel="stylesheet" type="text/css" href="<c:url value='/css/index/headerMenu.css' />">
  <link rel="stylesheet" type="text/css" href="<c:url value='/css/index/menu.css' />">
  
  <script src="<c:url value='/js/jquery-3.6.1.min.js' />"></script>
  <script src="<c:url value='/js/mypage/info_Change_Bf.js' />"></script>
  <script src="<c:url value='/js/index/menu.js' />"></script>
  <!-- Header 메인창 -->
  <c:import url="/WEB-INF/views/layout/toplink.jsp"/>
  
</head>
<body>
  <!-- 헤더 -->
  
  <div class="infoBigBody">
    <c:import url="/WEB-INF/views/layout/header.jsp" />
  <!-- 사이드 메뉴 영역 -->
  <section class="side_menu">
    <nav class="side">
      <h4>&nbsp;&nbsp;마이 페이지</h4>
      <ul>
        <li><a href="<c:url value='/product/cartList' />">마이페이지</a>
        <li><a href="<c:url value='/html/info_Change_Bf' />">개인정보변경</a>
      </ul>
    </nav>
  </section>
  <!-- 비밀번호 확인 하는 영역 -->
  <section class="Enter">
  <form method="post" id="pwd_chk" name="pwd_chk" >
    <h4>비밀번호를 입력해주세요</h4>
    <input type="password" class="E_pwd" id="E_pwd" placeholder='비밀번호를 입력하세요' autofocus/>
    <input type="hidden" class="E_id" id="E_id"  value="${MbId }"/>
    <br><br>
    <input type="submit" class="Check_pwd" id="Check_pwd" style="cursor:pointer" value="확인" />
   </form>
  </section>
</div>
  <!-- Footer : 라이선스 : 아직 완성 아니라 화면이 겹쳐짐 -->
  <c:import url="/WEB-INF/views/layout/footer.jsp" />
  
</body>

</html>