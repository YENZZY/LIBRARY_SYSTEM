-- 회원정보 테이블
CREATE TABLE `USER` (
   `userId` VARCHAR(30) NOT NULL COMMENT '5~12자 영문,숫자만',
   `userNum` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
   `password` VARCHAR(50) NOT NULL COMMENT '8~15자, 암호화',
   `email` VARCHAR(50) NOT NULL COMMENT 'ex ) abc123@naver.com',
   `admin` VARCHAR(30) NOT NULL DEFAULT '회원' COMMENT '회원 / 관리자',
   `joinDate` DATE NOT NULL DEFAULT (CURRENT_DATE) COMMENT '등록일'
);

ALTER TABLE `USER` ADD INDEX (`userId`);

-- 도서정보 테이블
CREATE TABLE `BOOK` (
   `bookNum` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
   `bookTitle` VARCHAR(50) NOT NULL,
   `author` VARCHAR(30) NULL,
   `genre` VARCHAR(30) NULL,
   `publisher` VARCHAR(30) NULL,
   `publishedYear` INT NULL,
   `status` VARCHAR(30) NOT NULL DEFAULT '대출 가능' COMMENT '대출 가능 / 대출중'
);

-- 대출정보 테이블 
CREATE TABLE `BORROW` (
   `borrowNum` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
   `userId` VARCHAR(30) NOT NULL COMMENT '5~12자 영문,숫자만',
   `bookNum` INT NOT NULL,
   `borrowDate` DATE NOT NULL DEFAULT (CURRENT_DATE) COMMENT '대출일',
   `returnDate` DATE NOT NULL DEFAULT (DATE_ADD(CURRENT_DATE, INTERVAL 7 DAY)) COMMENT '반납일 (대출일로부터 7일 후)',
   FOREIGN KEY (`userId`) REFERENCES `USER` (`userId`),
   FOREIGN KEY (`bookNum`) REFERENCES `BOOK` (`bookNum`),
   INDEX (`userId`)
);

ALTER TABLE `BORROW` ADD COLUMN `borrowCount` INT NOT NULL DEFAULT 1;

commit;

