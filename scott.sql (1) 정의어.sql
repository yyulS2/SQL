CREATE TABLE SALESMAN(
ID CHAR(6), 
NAME VARCHAR2(12),
AGE NUMBER(3),
ADDRESS VARCHAR2(60)
);

COMMIT;

DESC SALESMAN;

SELECT * FROM SALESMAN;
--------------------------
CREATE TABLE BOARD (
NUM NUMBER(4),
TITLE VARCHAR2(30),
AUTHOR VARCHAR2(12),
CONTENT VARCHAR2(600),
WRITEDAY DATE DEFAULT SYSDATE
);
DESC BOARD;

SELECT * FROM BOARD;
--------------------------
ALTER TABLE SALESMAN
ADD(SAL NUMBER(7,2));
DESC SALESMAN;
--------------------------
ALTER TABLE SALESMAN
MODIFY(SAL NUMBER(10,2));
DESC SALESMAN;
--------------------------
ALTER TABLE SALESMAN
DROP (SAL);
DESC SALESMAN;
--------------------------
DROP TABLE SALESMAN;
SELECT * FROM TAB;
--------------------------
SHOW RECYCLEBIN;
--------------------------
FLASHBACK TABLE SALESMAN TO BEFORE DROP;
SELECT * FROM TAB;
--------------------------
DROP TABLE SALESMAN;
PURGE RECYCLEBIN;
SELECT * FROM TAB;
--------------------------
RENAME BOARD TO BOARD_COPY;
--00955. 00000 -  "name is already used by an existing object"
--SELECT OBJECT_NAME, OBJECT_TYPE
--FROM USER_OBJECTS
--WHERE OBJECT_NAME LIKE '%테이블명%';
--'%테이블명%' : 확인할 테이블명 
-- 이미 있는 테이블 삭제 DROP 사용 : DROP TABLE 테이블명 ;
--SELECT * FROM BOARD_COPY;
--SELECT * FROM BOARD;
--------------------------
TRUNCATE TABLE BOARD_COPY;
--SELECT * FROM BOARD_COPY;
--SELECT * FROM BOARD;
--------------------------
CREATE TABLE CUSTOMER(
NUM NUMBER(4) PRIMARY KEY,
NAME VARCHAR2(12) NOT NULL,
ADDRESS VARCHAR2(60) UNIQUE,
AGE NUMBER(3) CHECK(AGE >= 30)
);

DESC CUSTOMER;
SELECT * FROM CUSTOMER;
--------------------------











