-- Active: 1664860580172@@127.0.0.1@3306@animal_shop_db

CREATE DATABASE animal_shop_db DEFAULT CHARACTER SET utf8mb4;
USE animal_shop_db;

CREATE TABLE category(
    ctgId VARCHAR(2) NOT NULL PRIMARY KEY, -- 카테고리 ID
    ctgName VARCHAR(30) -- 메인카테고리 이름
);
ALTER TABLE category ADD subName VARCHAR(100); -- 서브카테고리, 모든 서브카테고리를 가지고 있어 ,로 split하여 사용

CREATE TABLE member(
    mbId VARCHAR(30) NOT NULL PRIMARY KEY, -- 사용자 ID
    mbPw VARCHAR(50), -- 사용자 비밀번호
    mbName VARCHAR(30), -- 사용자 이름
    mbBirth VARCHAR(12), -- 사용자 생년월일
    mbGen VARCHAR(2), --  사용자 성별
    mbEmail VARCHAR(30), -- 사용자 이메일
    mbDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP, -- 사용자 생성일
    mbHp VARCHAR(13), -- 사용자 핸드폰 번호
    mbZipcode VARCHAR(6), -- 사용자 주소 집코드
    mbAddress1 VARCHAR(100), -- 사용자 주소1
    mbAddress2 VARCHAR(100) -- 사용자 주소2
);

CREATE TABLE product (
		prdNo VARCHAR(10) NOT NULL PRIMARY KEY, -- 상품 번호
		prdName VARCHAR(100), -- 상품명
        prdPrice INT, -- 상품 가격
        prdCompany VARCHAR(50), -- 제조회사
        prdStock INT, -- 재고
        prdDescript VARCHAR(500), -- 상품 상세 설명
        prdImg VARCHAR(50), -- 상품 이미지
        visit INT, -- 상품 방문횟수
        orderCount INT, -- 상품 구매 횟수
        ctgId VARCHAR(2) NOT NULL, -- 카테고리 ID
        CONSTRAINT FK_product_category FOREIGN KEY (ctgId) REFERENCES category (ctgId)
);
ALTER TABLE product ADD subCategory VARCHAR(10); -- 상품 세부 카테고리


CREATE TABLE cart (
	cartNo INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    mbId VARCHAR(30),
    prdNo VARCHAR(10),
    cartQty INT,
    CONSTRAINT FK_cart_member FOREIGN KEY (mbId) REFERENCES member (mbId),
	CONSTRAINT FK_cart_product FOREIGN KEY (prdNo) REFERENCES product (prdNo)
);

CREATE TABLE order_info (
	ordNo VARCHAR(20) NOT NULL PRIMARY KEY,
    ordDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    mbId VARCHAR(10),
    ordReceiver VARCHAR(30),
    ordRcvZipcode VARCHAR(5),
    ordRcvAddress1 VARCHAR(50),
    ordRcvAddress2 VARCHAR(50),
    ordRcvPhone VARCHAR(13),
    ordRcvMsg VARCHAR(30),
    ordPay VARCHAR(30),
    CONSTRAINT FK_order_member FOREIGN KEY (mbId) REFERENCES member (mbId)
);

CREATE TABLE order_product (
	ordNo VARCHAR(20) NOT NULL PRIMARY KEY,
    prdNo VARCHAR(10),
    ordQty INT,
    CONSTRAINT FK_order_prd_info FOREIGN KEY (ordNo) REFERENCES order_info (ordNo),
    CONSTRAINT FK_order_product FOREIGN KEY (prdNo) REFERENCES product (prdNo)
);

INSERT INTO category VALUES("0","강아지사료","퍼피사료,어덜트사료,시니어사료");
INSERT INTO category VALUES("1","간식/저키","간식,저키");
INSERT INTO category VALUES("2","미용/목욕용품","샴푸,린스,클리퍼");
INSERT INTO category VALUES("3","위생/배변용품","미용가위,배변패드");
INSERT INTO category VALUES("4","장난감/훈련용품","짖음제어,봉제/치칠/고무,행동제어");
INSERT INTO category VALUES("5","식기/물병","자동급식기,사료보관통,젖병");
INSERT INTO category VALUES("6","의류/악세사리","의류,신발/양말,머리핀/고무줄");
INSERT INTO category VALUES("7","샘플","프로모션 샘플,이벤트");

INSERT INTO product VALUES("001","개밥",10000,"개밥조아",120,"맛있는개밥","001.jpg",0,0,"0","퍼피사료");
INSERT INTO product VALUES("002","퍼피개밥",20000,"개밥조아",120,"맛있는개밥","002.jpg",0,0,"0","퍼피사료");
INSERT INTO product VALUES("003","어덜트 개밥",30000,"개밥조아",1200,"늙은이 개밥","003.jpg",0,0,"0","어덜트사료");
INSERT INTO product VALUES("004","시니어 개밥",40000,"개밥조아",20,"맛없는 개밥","004.jpg",0,0,"0","시니어사료");

-- 상품 추가
-- 4번카테고리
INSERT INTO product VALUES("401","오리 입마개 강아지 애견 짖음 물음 방지 훈련 주둥이 소형견 실리콘 안전",1000,"오토트림",2323," ","401.jpg",0,0,"4","짖음제어");
INSERT INTO product VALUES("402","엘리자베스 카라 7종 넥카라 칼라 반려동물 목 보호대",2900,"오토트림",2322," ","402.jpg",0,0,"4","짖음제어");
INSERT INTO product VALUES("403","진코어 펫 반려동물 쥬쥬베 발바닥 하트 봉제 실타래 장난감 랜덤발송",2900,"오토트림",8992," ","403.jpg",0,0,"4","봉제/치칠/고무");
INSERT INTO product VALUES("404","강아지장난감 분리불안 삑삑이 애착 봉제인형 3종,5종,7종 랜덤세트",5500,"DOGNY",8288282," ","404.jpg",0,0,"4","봉제/치칠/고무");
INSERT INTO product VALUES("405","애완견 행동 제어 목줄 대형 입마개 야외 훈련 용품",20560,"아빠의가게",2828282," ","405.jpg",0,0,"4","행동제어");
INSERT INTO product VALUES("406","반려견 훈련 행동교정 짖음방지 충격기 880 원격 제어 전기 개 칼라 애완",35500,"아빠의가게",282922," ","406.jpg",0,0,"4","행동제어");
-- 5번 카테고리
INSERT INTO product VALUES("501","트래들 고양이 자동급식기 강아지 사료 자동급식기 애견 자율배식 1구 2구",74500,"에스디엠",281723892," ","501.jpg",0,0,"5","자동급식기");
INSERT INTO product VALUES("502","도담펫 강아지 고양이 자율배식 자동 급식기 급수기 밥그릇",6300,"도담펫",827372189," ","502.jpg",0,0,"5","자동급식기");
INSERT INTO product VALUES("503","이지앤프리 아이보리 강아지 고양이 사료보관통 2kg",6140,"이지엔프리",393902," ","503.jpg",0,0,"5","사료보관통");
INSERT INTO product VALUES("504","강아지 고양이 공기 습기 차단 사료 보관 진공용기 쌀 잡곡 통 프라임 계량 컵",8820,"니드어스",23872328," ","504.jpg",0,0,"5","사료보관통");
INSERT INTO product VALUES("505","비앤비 젖병세정제 거품형 액상형 리필 x3개 용기 신생아 아기 유아 젖병세제",9200,"베이비벅스",287932932," ","505.jpg",0,0,"5","젖병");
INSERT INTO product VALUES("506","진코어 펫 반려동물 헬로도기 젖병세트",5340,"진코어몰",829382032," ","506.jpg",0,0,"5","젖병");