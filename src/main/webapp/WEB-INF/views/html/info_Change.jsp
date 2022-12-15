<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>개인정보변경 화면</title>
  <link rel="stylesheet" type="text/css" href="<c:url value='/css/mypage/info_Change.css' />">
  
  <link rel="stylesheet" type="text/css" href="<c:url value='/css/index/headerMenu.css' />">
  <link rel="stylesheet" type="text/css" href="<c:url value='/css/index/menu.css' />">
  
  <script src="<c:url value='/js/jquery-3.6.1.min.js' />"></script>
  <script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
  <script src="<c:url value='/js/mypage/info_Change.js' />"></script>
  
  <!-- Header 메인창 
  <c:import url="/WEB-INF/views/layout/toplink.jsp"/> -->
</head>
<body>
  <!-- Header 카테고리 메뉴 -->
  <c:import url="/WEB-INF/views/layout/header.jsp" />

  <!-- 사이드 메뉴 영역 -->
  <section class="side_menu">
    <nav>
      <h4>&nbsp;마이 페이지</h4>
      <ul>
        <li><a href="<c:url value='/html/Insert_myPage' />">마이페이지</a>
        <li><a href="<c:url value='/html/info_Change_Bf' />">개인정보변경</a>
      </ul>
    </nav>
  </section>

  <!-- 정보 출력 영역 -->
  <section class="my_Info">
    <h5>| ${vo.mbName}님의 기본 정보</h5>
    <div class="status_box">
    <form id="change_info" name="change_info" method="post">
      <table class="info_table">
          <tr>
            <th class="my_sub">이름</th>
            <td><input type="text" class="my_name" id="my_name" placeholder="${vo.mbName }"></td>
          </tr>
          <tr>
            <th class="my_sub">아이디</th>
            <td><input type="text" class="id_def" id="id_def" name="id_def" value="${vo.mbId }" disabled></td>
          </tr>
          <tr>
            <th class="my_sub">비밀번호</th>
            <td>
              <div class="pwd1_contents">
                <input type="password" id="pwd1" class="pwd1">
                <span class="pwd_txt">숫자, 소문자, 대문자, 특수문자를 조합하여 4~12자로 입력해주십시오.</span>
              </div>
            </td>
          </tr>
          <tr>
            <th class="my_sub">비밀번호 확인</th>
            <td>
              <div class="pwd2_contents">
                <input type="password" id="pwd2" class="pwd2">
                <button class="check_Pwd" id="check_Pwd" style="cursor:pointer">비밀번호 확인</button>
                 <span id="pwd_Equal" class="pwd_Equal">비밀번호가 일치 합니다.</span> 
                 <span id="pwd_Nequal" class="pwd_Nequal">비밀번호가 일치하지 않습니다.</span> 
              </div>
            </td>
          </tr>
          <tr>
            <th>생년월일</th>
            <td>
              <div>
                <!-- css때문에 class 속성을 아이디랑 같은 이름을 사용함 -->
                <input type="text" class="id_def" value="${vo.mbBirth}" readonly>
              </div>
          </tr>
          <tr>
            <th class="my_sub">연락처</th>
            <td>
              <input type="text" class="my_Pnum" id="my_Pnum" placeholder='${vo.mbHp}'>
              <button class="inner_Btn" id="hp_Chk" name="hp_Chk" style="cursor:pointer">휴대폰 인증</button>
            </td>
          </tr>
          <tr>
            <th rowspan="3" class="my_sub"> 주소</th>
            <td>
              <input type="text" class="my_Addr" id="mbZipcode" name="mbZipcode" placeholder='${vo.mbZipcode}' readonly>
              <input type="button" class="inner_Btn"  id="searchAddr" name="searchAddr" value="우편번호 찾기" style="cursor:pointer">
            </td>
          </tr>
          <tr>
            <td><input type="text" class="my_Addr_Detail" id="address1" name="address1" placeholder='${vo.mbAddress1}' readonly></td>
          </tr>
          <tr>
            <td><input type="text" class="my_Addr_Detail" id="address2" name="address2" placeholder='${vo.mbAddress2}'></td>
          </tr>
      </table>
      </form>
    </div>
  </section>
  
  <!-- 버튼 영역 -->
  <br><br>
  <section class="info_btn">
    <button class="change" id="info_Cng" style="cursor:pointer">변경</button> 
    <button class="cancel" id="info_Cancel" style="cursor:pointer">취소</button>
  </section>
  
  <!-- Footer : 라이선스 -->
  <c:import url="/WEB-INF/views/layout/footer.jsp" />
</body>
</html>