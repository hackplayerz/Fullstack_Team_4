/**
 *  개인정보 변경 페이지
 */
 
 $(document).ready(function(){
	/*아이디 값을 가져오고 싶은데 방법을 모르겠음*/
	let my_id='id12345';
	console.log(my_id);
	console.log($("#id_def").val(my_id));
	$("#id_def").val(my_id);
	
	/* 비밀번호 확인 버튼 클릭 시 2개의 비밀번호 확인하는 이벤트 : 이제 비밀번호를 넘겨줘야함 */
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
	  
	//주소 찾기 버튼 클릭 시 발생하는 이벤트?  
 	$('#searchAddr').on('click', function(){
		new daum.Postcode({
			//팝업 창에서 검색 결과 클릭했을 경우
			oncomplete:function(data){
				var address1 ="";
				
				//도로명 주소인 경우
				if(data.userSelectedType == 'R'){
					address1 = data.roadAddress + "(" + data.bname + data.buildingName + ")";
				}else	{	//지번 주소인 경우
					address1 = data.jibunAddress;
				}
				
				//입력란에 검색한 우편번호, 주소1 출력
				document.getElementById('mbZipcode').value = data.zonecode;
				document.getElementById('mbAddress1').value = address1;
				
				//상세 주소 입력란에 입력한 값은 삭제하고 포커스 주기
				var address2 = document.getElementById('memAddress2');
				address2.value = "";
				address2.focus();
			}
		
		}).open();
	});	// 온클릭 종료	
	
	
  });