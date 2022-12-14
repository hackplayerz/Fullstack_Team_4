/*
*** prdInfo.js
*/



$(document).ready(function() {
	
    $('#buy').mouseover(function(){
		$('#buy').css('background-color', 'white');
		$('#buy').css('color', 'red');
	});
	$('#buy').mouseout(function(){
		$('#buy').css('background-color', '#5E5E5E');
		$('#buy').css('color', 'white');
	});
	
	
	$('#shoppingCart').mouseover(function(){
		$('#shoppingCart').css('background-color', 'white');
	});
	$('#shoppingCart').mouseout(function(){
		$('#shoppingCart').css('background-color', '#E0E0E0');
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