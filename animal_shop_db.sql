-- Active: 1664860580172@@127.0.0.1@3306@animal_shop_db

CREATE DATABASE animal_shop_db DEFAULT CHARACTER SET utf8mb4;
USE animal_shop_db;

CREATE TABLE category(
    ctgId VARCHAR(2) NOT NULL PRIMARY KEY,
    ctgName VARCHAR(30)
);

CREATE TABLE member(
    mbId VARCHAR(30) NOT NULL PRIMARY KEY,
    mbPw VARCHAR(50),
    mbName VARCHAR(30),
    mbBirth VARCHAR(12),
    mbGen VARCHAR(2),
    mbEmail VARCHAR(30),
    mbDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    mbHp VARCHAR(13),
    mbZipcode VARCHAR(6),
    mbAddress1 VARCHAR(100),
    mbAddress2 VARCHAR(100)
);

CREATE TABLE product (
		prdNo VARCHAR(10) NOT NULL PRIMARY KEY,
		prdName VARCHAR(100),
        prdPrice INT,
        prdCompany VARCHAR(50),
        prdStock INT,
        prdDescript VARCHAR(500),
        prdImg VARCHAR(50),
        visit INT,
        orderCount INT,
        ctgId VARCHAR(2) NOT NULL,
        CONSTRAINT FK_product_category FOREIGN KEY (ctgId) REFERENCES category (ctgId)
);


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
ALTER TABLE category ADD subName VARCHAR(100);

INSERT INTO category VALUES("0","강아지사료","퍼피사료,어덜트사료,시니어사료");
INSERT INTO category VALUES("1","간식/저키","간식,저키");
INSERT INTO category VALUES("2","미용/목욕용품","샴푸,린스,클리퍼");
INSERT INTO category VALUES("3","위생/배변용품","미용가위,배변패드");
INSERT INTO category VALUES("4","장난감/훈련용품","짖음제어,봉제/치칠/고무,행동제어");
INSERT INTO category VALUES("5","식기/물병","자동급식기,사료보관통,젖병");
INSERT INTO category VALUES("6","의류/악세사리","의류,신발/양말,머리핀/고무줄");
INSERT INTO category VALUES("7","샘플","프로모션 샘플,이벤트");

INSERT INTO product VALUES("001","개밥",10000,"개밥조아",120,"맛있는개밥","001.jpg",0,0,"0");