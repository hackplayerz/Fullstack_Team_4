/**
 *  slideShow.js
 */
 
 $(document).ready(function(){
	// 이동한 이미지의 index 값 저장 (현재 위치)
	var movedIndex = 0;
	var imgIndex = 3;
	// 실제로 슬라이드 패널을 움직이는 함수
	function moveSlide(index){
			movedIndex = index;
		// 슬라이드 이동
		var moveLeft = -(index * 1200); // 왼쪽으로 이동 거리
		$('#slidePanel').animate({'left': moveLeft}, 'slow');
	}
	function moveCount(){
		if(movedIndex != imgIndex)  // 마지막이 아니면
			movedIndex = movedIndex + 1; // 인덱스 값 + 1
		else if(movedIndex ==imgIndex){
			movedIndex = 0;
		}
		if(movedIndex == 0){
			$('.controlButton'+ imgIndex).attr('src', 'img/index/button1.png');
			$('.controlButton'+ 0).attr('src', 'img/index/button2.png');
		}else if(movedIndex !=0){
			$('.controlButton'+(movedIndex)).attr('src', 'img/index/button2.png');
			$('.controlButton'+(movedIndex-1)).attr('src', 'img/index/button1.png');
		}
		moveSlide(movedIndex)
	}
	setInterval(function(){moveCount()}, 5000);

	// prev 버튼 클릭하면 앞으로 이동
	$('#prevButton').on('click', function(){
		if(movedIndex !=0){ // 첫 번째가 아니면
			movedIndex = movedIndex - 1; // 인덱스 값 - 1
		}
		else if(movedIndex == 0){
			movedIndex = 3;
		}
		if(movedIndex == 3){
			$('.controlButton'+ 0).attr('src', 'img/index/button1.png');
			$('.controlButton'+(imgIndex)).attr('src', 'img/index/button2.png');
		}else if(movedIndex !=3){
			$('.controlButton'+(movedIndex)).attr('src', 'img/index/button2.png');
			$('.controlButton'+(movedIndex+1)).attr('src', 'img/index/button1.png');
		}
		moveSlide(movedIndex);  // 실제로 슬라이드 패널을 움직이는 함수 호출하면 계산된 인덱스값 전달
	});	
	
	// next 버튼 클릭하면 뒤로 이동
	$('#nextButton').on('click', function(){
		if(movedIndex != imgIndex)  // 마지막이 아니면
			movedIndex = movedIndex + 1; // 인덱스 값 + 1
		else if(movedIndex ==imgIndex){
			movedIndex = 0;
		}
		if(movedIndex == 0){
			$('.controlButton'+ imgIndex).attr('src', 'img/index/button1.png');
			$('.controlButton'+ 0).attr('src', 'img/index/button2.png');
		}else if(movedIndex !=0){
			$('.controlButton'+(movedIndex)).attr('src', 'img/index/button2.png');
			$('.controlButton'+(movedIndex-1)).attr('src', 'img/index/button1.png');
		}
		moveSlide(movedIndex); // 실제로 슬라이드 패널을 움직이는 함수 호출하면 계산된 인덱스값 전달
	});
	
	// 초기 슬라이더 위치 랜덤하게 지정
	//var randomNum = Math.floor(Math.random() * 5); // 0 ~ 4 : 5개
	//moveSlide(randomNum); 
	
	// 컨트롤 버튼 
	// 각 컨트롤 버튼에 마우스 올렸을 때 이미지 변경. moveSlide() 함수 호출하면 index 전달
	$('.controlButton').each(function(index){		
		$(this).hover(
			function() {    // 마우스 올렸을 때 이미지 변경
				$(this).attr('src', 'img/button2.png');
			},
			function() {
				$(this).attr('src', 'img/button1.png');
			}
		);
		
		// 클릭했을 때 현재 인덱스 값을 moveSlide() 함수에게 전달
		$(this).on('click', function() {
			moveSlide(index);
		})
	});
 });