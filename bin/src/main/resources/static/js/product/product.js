$(document).ready(function () {
    SubCategoryBold();
    InitCategoryCount();
    // 상품 이미지 설정
    SetProduct(prd1);
    // 메인 카테고리 타이틀 변경
    InitMenu();
    BindingOnclickEvent();
});

function item(name, img, price, category) {
    this.name = name;
    this.img = img;
    this.price = price;
    this.category = category;
}

let prd1 = new item("asd", "../img/product/헤드셋.png", "100000", "간식");

function SetProduct(item) {
    if (localStorage.getItem("mainMenubl")) {
        localStorage.removeItem("subName");
    }
    var img = document.createElement("img");
    img.src = item.img;

    var prdSource = document.querySelectorAll(".productSource");    

    prdSource[0].getElementsByClassName("image")[0].src = item.img;
    prdSource[1].getElementsByClassName("image")[0].src = item.img;
}

function SendData(img, name, price) {
    localStorage.setItem("name", name);
    localStorage.setItem("img", img);
    localStorage.setItem("price", price);
}

function BindingOnclickEvent()
{
    // 이미지 클릭 이벤트 바인딩
    $(".productSource").on('click',function()
    {
        // 이미지, 이름, 가격을 보낸다
        var img = this.getElementsByClassName("image")[0].src;
        var name = this.getElementsByClassName("name")[0].innerHTML;
        var price = this.getElementsByClassName("price")[0].innerHTML;
        SendData(img,name,price);
    })   
}

function InitMenu() {
    // 메인 카테고리 메뉴 설정
    var categoryName = document.querySelector("#categoryName h2");
    categoryName.innerHTML = localStorage.getItem("menuName");

    // 서브 카테고리 메뉴 설정
    var subElements = localStorage.getItem("submenu").split(","); // index.html에서 가져온 배열값

    var subCategory = document.querySelectorAll("#subCategory .menu"); // HTML로 넣을 것

    for (let i = 0; i < subElements.length; i++) {
        subCategory[i].innerHTML = subElements[i];
        if (i - 1 < subElements.length) {
        }
    }
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