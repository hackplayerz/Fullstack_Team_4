$(document).ready(function () {
    SubCategoryBold();
    InitCategoryCount();
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