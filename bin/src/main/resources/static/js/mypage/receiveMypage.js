/*
***	receive.js
*/

/**************** myPage ********************/


temp = location.href.split("?");
data=temp[1];
prdAmount=data[0];
console.log(prdAmount);

$(document).ready(function(){
	$('.q_num').val(prdAmount);
});