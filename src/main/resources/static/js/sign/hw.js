$(document).ready(function(){
    $('#signUpBt').on('click',function(){
        
            var hwId = $('#idInput').val();
            var hwPw = $('#pwInput').val();
            var hwName = $('#nameInput').val();
            console.log($('#optM').val());
            var hwYear = $('#yearInput').val();
            var hwM = $('#optM').val();
    
            var hwDay= $('#dayInput').val();
            var hwtj = $('#tjInput').val();
            var hwEmail = $('#emailInput').val();
            var hwtel = $('#telInput').val();
            var hwAddress = $('#addressInput').val();
    
            localStorage.setItem('hwid',hwId);
            localStorage.setItem('hwPw',hwPw);
            localStorage.setItem('hwName',hwName);
            localStorage.setItem('hwYear',hwYear);
            localStorage.setItem('hwM',hwM);
            localStorage.setItem('hwDay',hwDay);
            localStorage.setItem('hwtj',hwtj);
            localStorage.setItem('hwEmail',hwEmail);
            localStorage.setItem('hwtel',hwtel);
            localStorage.setItem('hwAddress',hwAddress);

            location.href = '../index.html';

            if(idInput == ""){
                alert("아이디를 입력하세요")
            }
            
            if(pw == "pwInput"){
                alert("비밀번호를 입력하세요")
            }
            
            if(pwInput != pwConfirm){
                alert("비밀번호가 일치하지않습니다.")
            }
            
            if(nameInput == ""){
                alert("이름을 입력하세요.")
            }
    })
})