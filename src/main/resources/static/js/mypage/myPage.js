/*
	myPage.js
	마이페이지를 처음 눌렀을 때 나오는 화면에 대한 js 파일
*/

/**************** myPage ********************/

 $(document).ready(function(){
 	// <th>태그의 체크 박스 클릭 시, 하위 체크박스들이 [전체 선택]되어야 함 
 	$('#allCheck').on('click',function(){
 		var chk = $("#allCheck").prop("checked");
		
		// 체크 되었다면(true), 모든 개별 체크박스를 true로 설정
		if(chk){
			$('.chkDelete').prop("checked", true);
		}else{
			$('.chkDelete').prop("checked", false);
		}
	});	// 전체 선택하기 끝
	
	//개별 체크박스를 해제할 경우 [전체 선택] 체크 박스 해제 되어야 함
	//개별 체크박스가 모두 체크되었을 때, [전체 선택] 체크 박스 체크되어야 함
	$('.chkDelete').on('click',function(){
		var total = $('.chkDelete').length;	// 개별 체크박스의 전체 갯수
		var checked = $('.chkDelete:checked').length;	// 체크된 체크 박스의 갯수
		
		if(total != checked)	//체크박스의 전체 수와 체크된 박스의 수와 다르면
			$("#allCheck").prop("checked", false);	// 전체 선택 해제
		else	
			$("#allCheck").prop("checked", true);	// 같은 경우 전체 선택 on
	
	}); // 개별 및 전체 선택 상호작용하기 끝
	
	// [삭제] 버튼을 클릭했을 때 장바구니에서 선택된 상품 삭제하기
	$('#deleteCartBtn').on('click',function(){
		//선택 여부 확인 : 하나라도 선택하면 true, 아무것도 선택하지 않으면 false
		var checked = $('.chkDelete').is(':checked');
		
		if(checked){//하나라도 체크된 경우
			var answer = confirm("선택된 상품을 삭제하시겠습니까?");
			
			//체크된 체크박스의 cartNo를 배열에 추가
			if(answer){
				var checkArr = new Array();
				$('.chkDelete:checked').each(function(){
					//value="${prd.cartNo}"인 경우 아래처럼 사용 가능함
					// checkArr.push($(this).val());	
					//사용자 정의 속성을 사용한 경우(data-cartNo="{prd.cartNo}", 아래 처럼 사용해야 함
					checkArr.push($(this).attr("data-cartNo"));
				});
				
				// 서버로 전송
				$.ajax({
 					type:"post",
 					url:"/product/deleteCart",
 					data: {"chbox":checkArr},
 					success:function(result){
 						if(result == 1){
 							location.href="/product/cartList";
 						}
 					},
 					error:function(){
 						alert("실패");
 					},
 				}); // ajax 종료
			
			}
		}else{	//아무것도 체크되지 않은 경우
			alert("선택된 상품이 없습니다");
		}
	});
	
	
	
 }); // js 끝