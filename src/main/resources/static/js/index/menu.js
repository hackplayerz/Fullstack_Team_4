/**
 * menu.js
 */
 $(document).ready(function(){
	
	// [전체보기 ▼] 버튼 클릭 시 모든 서브 메뉴 항목 보이게
	$('#menuItem').on('mouseenter', function(){
			$('#subMenuBox').css('visibility', 'visible');
	});
	$('#subMenuBox').on('mouseleave', function(){
		$('#subMenuBox').css('visibility', 'hidden');
	});

	let mainMenubl = false;
	$('#menuItem').click(function(index){
		
		console.log(index.target.id);
		console.log(index.target.innerHTML);
		const menuSize = parseInt($('#'+index.target.id).attr('value'));
		console.log(menuSize);
		var test = $('#sub'+index.target.id).children('li').children('a').toArray();
		for(let i =0; i < test.length; i++){
			test[i] = test[i].innerHTML;
		}
		localStorage.setItem('menuName',index.target.innerHTML);
		localStorage.setItem('menuSize',menuSize);
		localStorage.setItem('submenu',test);
		localStorage.setItem('mainMenubl',mainMenubl);
		
	})

	$(".submenu li a").click(function(index){
		console.log(index.target.innerHTML);
		console.log(index.target.id);
		console.log($('#'+index.target.id).text());
		var subArray = $('#sub'+index.target.id).children('li').children('a').toArray();
		for(let i =0; i < subArray.length; i++){
			subArray[i] = subArray[i].innerHTML;
		}
		console.log(subArray);
		var mainmenuName = $('#'+index.target.id).text();
		mainMenubl = true;
		localStorage.setItem('menuName',mainmenuName);
		localStorage.setItem('menuSize',subArray.length);
		localStorage.setItem('submenu',subArray);
		localStorage.setItem('mainMenubl',mainMenubl);
		localStorage.setItem('subName',index.target.innerHTML);
	})

})