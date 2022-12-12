$(document).ready(function(){
    var loginBl = false;
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
    if(hwid != null){
        loginBl=true;
        $('.signInA').text(hwid);
        $('.signUnA').text("로그아웃");
    }
    
	$('.myPageA').on('click',function(){
        if($(document).find("title").text() ==="메인"){
            if(loginBl)
                location.href = '../webapp/html/myPage.html';
            else{
                alert("로그인을 먼저하세요.");
            }
        }
        else{
            if(loginBl)
                location.href = '../html/myPage.html';
            else{
                alert("로그인을 먼저하세요.");
            }
        }

    })
    $('.signInA').on('click',function(){
        
        if($(document).find("title").text() ==="메인"){
            if( $('.signInA').text()==="로그인"){
                location.href = '../webapp/html/login.html';
            }else{
                alert($('.signInA').text());
            }
        }
        else{
            if( $('.signInA').text()==="로그인"){
                location.href = '../html/login.html';
            }else{
                alert($('.signInA').text());
            }
        }
       
    })
    $('.signUnA').on('click',function(){
        if($(document).find("title").text() ==="메인"){
            if( $('.signUnA').text()==="회원가입"){
                location.href = '../webapp/html/hw.html';
            }
            if( $('.signUnA').text()==="로그아웃"){
                localStorage.removeItem('hwid');
                localStorage.removeItem('hwPw');
                localStorage.removeItem('hwName');
                localStorage.removeItem('hwYear');
                localStorage.removeItem('hwM');
                localStorage.removeItem('hwDay');
                localStorage.removeItem('hwtj');
                localStorage.removeItem('hwEmail');
                localStorage.removeItem('hwtel');
                localStorage.removeItem('hwAddress');
    
                location.href = 'index.html';
            }
        }
        else{
            if( $('.signUnA').text()==="회원가입"){
                location.href = '../html/hw.html';
            }
            if( $('.signUnA').text()==="로그아웃"){
                localStorage.removeItem('hwid');
                localStorage.removeItem('hwPw');
                localStorage.removeItem('hwName');
                localStorage.removeItem('hwYear');
                localStorage.removeItem('hwM');
                localStorage.removeItem('hwDay');
                localStorage.removeItem('hwtj');
                localStorage.removeItem('hwEmail');
                localStorage.removeItem('hwtel');
                localStorage.removeItem('hwAddress');
    
                location.href = '../index.html';
            }
        }
        
        
    })
});