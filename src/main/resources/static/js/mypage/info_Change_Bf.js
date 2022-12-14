/**
 * 비밀번호 입력 시 새로운 페이지로 이동하기 위한 페이지
 */
 
$(document).ready(function(){  
  //Check_pwd이 클릭되었을 경우
  $('#Check_pwd').on('submit',function(){
	//폼이 submit 되지 않도록 기본 기능 중단
    event.preventDefault();	//submit이 아니라 onclick이라 해당 문장 주석 처리
    // 서버에 전송하고 결과 받아서 처리
    
 	$.ajax({
 		type:"post",
 		url:"/member/info_Chainge_Login",
 		data: {"id":$('#E_id').val(),
 		       "pw":$('#E_pwd').val()},
 		dataType:'text',
 		success:function(result){
 			if(result == "success"){
 				alert("비밀번호가 일치합니다.\n 개인정보를 변경합니다..");
 				location.href="/html/info_Change";
 			}else{
 				alert("비밀번호가 일치하지 않습니다. \n 다시 입력하시기 바랍니다.");
 			}
 		},
 		error:function(){
 			alert("실패");
 		}	// complete 생략
 	}); // ajax 종료 	
  });	//onclick 종료
});
