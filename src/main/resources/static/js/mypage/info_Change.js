/**
 *  개인정보 변경 페이지
 */
 
 $(document).ready(function(){
	let hwid = localStorage.getItem('hwid');
	let hwPw = localStorage.getItem('hwPw');
	let hwName = localStorage.getItem('hwName');
	let hwYear = localStorage.getItem('hwYear');
	let hwM = localStorage.getItem('hwM');
	let hwDay = localStorage.getItem('hwDay');
	let hwtj = localStorage.getItem('hwtj');
	let hwEmail = localStorage.getItem('hwEmail');
	let hwtel = localStorage.getItem('hwtel');
	let hwAddress = localStorage.getItem('hwAddress');
	
	/*아이디 값을 가져오고 싶은데 방법을 모르겠음*/
	let my_id='id12345';
	console.log(my_id);
	console.log($("#id_def").val(my_id));
	$("#id_def").val(my_id);
	
	/* 비밀번호 확인 버튼 클릭 시 이벤트 발생 : 안됨 ..  */
	$('#check_Pwd').on('click',function(){
	  var reg = /^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{6,12}$/;
	  var pwd1 = $('#pwd1').val();
	  var pwd2 = $('#pwd2').val();
	  /*버튼 클릭 시 조건 맞는지 검산하는 if문 필요*/
	  if(reg.test(pwd1) == false){
		alert(pwd1);
		alert('비밀번호 양식을 확인해주세요');
		return -1;
	  }
	  /*비밀번호 일치 여부 확인하는 조건문*/
	  else {
		if(pwd1 == pwd2){
		  $('#pwd_Equal').css('display','inline-block');
		  $('#pwd_Nequal').css('display','none');
		}
		else{
		  $('#pwd_Nequal').css('display','inline-block');
		  $('#pwd_Equal').css('display','none');
		}
	   }
	});
	
	  
	/*생년월일도 id랑 비슷하게 value를 넘겨줘야하는 방식인 것 같음 ..*/
	
	  
	  /*변경 버튼 클릭 시, input 박스에 값이 있는 것들의 값을 변경한다.*/
	  /*$('#change').on('click',function(){
		if($('#my_name').val() != "")
		  hwName = $('#my_name').val();
		if($('#pwd2').val() != "")
		  hwPw = $('#pwd2').val();
		if($('#my_Pnum').val() != "")
		  hwtel = $('#my_Pnum').val();
		if($('#my_Addr').val() != "" && $('#my_Addr_detail').val() != "")
		  hwAddress = $('#my_Addr').val() + $('#my_Addr_detail').val();
		alert('작성하신 정보가 변경되었습니다.');
	  });*/
	
	
	
  });