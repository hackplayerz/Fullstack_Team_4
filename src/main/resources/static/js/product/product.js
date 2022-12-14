$(document).ready(function () {
    SubCategoryBold();
    InitCategoryCount();
    test1();
});

function item(name, img, price, category) {
    this.name = name;
    this.img = img;
    this.price = price;
    this.category = category;
}

function SendData(img, name, price) {
    localStorage.setItem("name", name);
    localStorage.setItem("img", img);
    localStorage.setItem("price", price);
}

function InitCategoryCount() {
    var count = $("#product").children().length;
    // 상품들의 개수 설정
    $("#elementCount").text("총 " + count + "개");
}

function SubCategoryBold() {
    // SubMenu Bold 구성
    $(".menu").on("click", function () {
        $(".menu").each(function (index) {
            $(".menu").css("font-weight", "normal");
        });

        $(this).css("font-weight", "bold");
    });
}

function test1() {
    $(document).on('click','.subName', function(){
        //폼이 submit 되지 않도록 기본 기능 중단
            event.preventDefault();
            $('.menuAll a').css("color","black");
            $('.subName').css("color","black");
            $(this).css("color","red");
            var subCategory = $(this).text();
            console.log(subCategory);
            // 서버에 전송하고 결과 받아서 처리
            $.ajax({
                type:"post",
                url:"/product/OnSubCategoryChange",
                data: {"subCategory":subCategory},
                dataType:'json',
                success:function(result){

                    
                    //mainBody 크기 조절
                    var height = 700;
                    if(result.length > 5){
                        height = 700 + Math.floor((3 - 1)/5) * 420; //갯수에 따라 크기 변경
                    }
                    $('#mainBody').css("height",height);
                    //총 갯수 생성
                    $('#elementCount').empty();
                    $('#elementCount').append( '총 '+result.length+'개');
                    
                    // 여기부터 상품컨텐츠 생성란
                    $('#product').empty(); //이전 내용 제거
                    for(var i=0; i < result.length; i++) {
                     // div product 안에 생성
                    $('#product').append( // append로 생성
                        '<div class="productSource">'+
                            '<a href="/html/prdInfo/' + result[i].prdNo + '">' +
                                '<img src="'+'/img/product/'+ result[i].prdImg + '.png"' + 'class="image"></a>'+
                            '<p class="name">'+
                                result[i].prdName +
                            '</p>'+
                            '<p class="price">'+
                                result[i].prdPrice +
                            '</p>'+
                        '</div>'); // 여기까지 생성
                    };
                },
                error:function(){
                    alert("실패");
                },
                complete:function(){
                    //alert("작업 완료");
                }
            }); // ajax 종료 	
            
        });
}