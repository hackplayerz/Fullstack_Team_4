/**
 * 비밀번호 입력 시 새로운 페이지로 이동하기 위한 페이지
 */
 
$(document).ready(function(){
  let hwPw = localStorage.getItem('hwPw');
  
    
  $('#Check_pwd').on('click',function(){
	
   /* 코드 합칠 경우 1234 대신 hwPw로 바꿔줘야함*/
	if($('#E_pwd').val()===hwPw){
	  alert("개인정보를 변경합니다.");
	  location.href="../html/info_Change.html";
	}
	else{
	  alert("비밀번호가 다릅니다.");
	  return -1;
	}
  });
  
  
});