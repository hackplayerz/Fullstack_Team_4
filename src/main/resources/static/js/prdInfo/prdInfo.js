/*
*** prdInfo.js
*/



$(document).ready(function() {
	
	var getPrdAmount=0;
    $('#shoppingCart').on('click',function(){
		getPrdAmount = $('#prdAmount').val();
		
		location.href="myPage.html?" + getPrdAmount;
    });
  
    $('#buy').mouseover(function(){
		$('#buy').css('background-color', 'white');
		$('#buy').css('color', 'red');
	});
	$('#buy').mouseout(function(){
		$('#buy').css('background-color', '#5E5E5E');
		$('#buy').css('color', 'white');
	});
	
	
	getPrdInfo();
});

function getPrdInfo() {
	$(document).ready(function(){
		
		var getPrdName = localStorage.getItem("name").replace(/ /g,"");
		var getPrdPrice = localStorage.getItem("price").replace(/ /g,"");
		console.log(getPrdName);
		console.log(getPrdPrice);
		
		$("#prdName").val(getPrdName);
		$("#prdPrice").val(getPrdPrice);
});
}