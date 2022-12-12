$(document).ready(function(){
$('.submenu').on('mouseenter', function(){
    $('.submenuItem li').css('height', '40px');
    $('.submenuItem li').css('transition-duration', '1s');
    $('.submenuItem li').css('z-index', '10');
});

$('.submenu').on('mouseleave', function(){
    $('.submenuItem li').css('height', '0px');
    $('.submenuItem li').css('transition-duration', '1s');
    $('.submenuItem li').css('z-index', '10');
});
$('.submenuli').on('mouseenter', function(){
    $(this).css('background-color', 'rgb(255, 217, 0)');
    $(this).css('transition-duration', '0.5s');
    
});
$('.submenuli').on('mouseleave', function(){
    $(this).css('background-color', '#faa159');
    $(this).css('transition-duration', '0.5s');
    
});

$('.submenuItem li').on('mouseenter', function(){
    if($(this).attr("class")!="submenuItemNull"){
        $(this).css('background-color', 'rgb(255, 217, 0)');
        $(this).css('transition-duration', '0.5s');
        $(this).css('cursor', 'pointer');
    }
        
    
});
$('.submenuItem li').on('mouseleave', function(){
    if($(this).attr("class")!="submenuItemNull"){
        $(this).css('background-color', '#faa159');
        $(this).css('transition-duration', '0.5s');
    }
    
    
});
$('.submenuClick').on('click', function(){
    console.log($(this))
    if($(document).find("title").text() ==="메인"){
            location.href = '../webapp/html/product.html';
    }
    else{
        location.href = '../html/product.html';
    }
    console.log($(this).text());
    console.log($(this).attr("id"))
    console.log($('#'+$(this).attr("id")))
});

$('.submenuItem li').on('click', function(){
    console.log($(this))
    if($(document).find("title").text() ==="메인"){
            location.href = '../webapp/html/product.html';
    }
    else{
        location.href = '../html/product.html';
    }
});

})

