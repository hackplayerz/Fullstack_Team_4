/**
 *  개인정보 변경 페이지
 */
 
 $(document).ready(function(){
 	let resPwd ="";	//비밀 번호를 저장하는 변수 
	/* 비밀번호 확인 버튼 클릭 시 2개의 비밀번호 확인하는 이벤트 */
	$('#check_Pwd').on('click',function(){
		event.preventDefault();

	    var reg = /^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{4,12}$/;
	    var pwd1 = $('#pwd1').val();
        var pwd2 = $('#pwd2').val();
	    /*버튼 클릭 시 조건 맞는지 검산하는 if문 필요*/    
	    if(reg.test(pwd1) == false){
		  alert('비밀번호 양식을 확인해주세요');
		  //return -1;
	    }
	    /*비밀번호 일치 여부 확인하는 조건문*/
	    else {
		  if(pwd1 == pwd2){
		    $('#pwd_Equal').css('display','inline-block');
		    $('#pwd_Nequal').css('display','none');
		    resPwd = pwd2;
		  }
		  else{
		    $('#pwd_Nequal').css('display','inline-block');
		    $('#pwd_Equal').css('display','none');
		  }
	     }
	}); //check_Pwd 종료
	  
	//주소 찾기 버튼 클릭 시 발생하는 이벤트
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
				
				//입력란에 검색한 우편번호(mbZipcode), 주소1(address1) 출력
				document.getElementById('mbZipcode').value = data.zonecode;
				document.getElementById('address1').value = address1;
				
				//상세 주소(address2) 입력란에 입력한 값은 삭제하고 포커스 주기
				var address2 = document.getElementById('address2');
				address2.value = "";
				address2.focus();
			}
		}).open();
	});	// 주소 찾기 종료
	
	//취소 버튼 클릭 시 발생하는 이벤트(인포체인지Bf로 이동) : 컨펌창 안 나옴 .. 
	$('#info_Cancel').on('click', function(){
	  var answer = confirm("개인정보를 변경하지 않으시겠습니까 ?");
	  /*if(answer){
	    location.href="/html/info_Change_Bf";
	  }*/
	});	// 종료
	
	
	//변경 버튼 클릭 시 발생하는 이벤트(데이터 변경 및 인포체인지로 이동) : 컨펌창 안 나옴 
	$('#info_Cng').on('click', function(){
	  var answer = confirm("개인정보를 변경하시겠습니까?");
	  /*if(answer){
	  	alert("개인정보가 변경되었습니다.");
	  	if($('#my_name').val()!=null)
	  	  vo의 네임 = $('#my_name').val(); // 다른 것도 이런식 ? 
	    location.href="/html/info_Change_Bf";
	  }//if 끝
	*/
	  
	});	// 종료
	
	
  });
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  