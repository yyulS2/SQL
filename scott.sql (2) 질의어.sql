SELECT EMPNO, ENAME FROM EMP;
----------------------------------------------------------------
SELECT*FROM EMP;
----------------------------------------------------------------
SELECT DISTINCT JOB FROM EMP;
----------------------------------------------------------------
SELECT DNAME AS 부서명, LOC AS "부서위치" FROM DEPT;
----------------------------------------------------------------
SELECT ENAME, SAL,SAL*12 FROM EMP;
----------------------------------------------------------------
SELECT ENAME, SAL, SAL*12, COMM, SAL*12+COMM FROM EMP;
----------------------------------------------------------------
SELECT EMPNO || '-' || ENAME AS 명단 FROM EMP;
----------------------------------------------------------------
SELECT EMPNO, ENAME, SAL FROM EMP
WHERE SAL>= 2000;
----------------------------------------------------------------
SELECT EMPNO, ENAME, JOB, DEPTNO FROM EMP
WHERE DEPTNO = 10 AND JOB = 'CLERK';
----------------------------------------------------------------
SELECT EMPNO, ENAME, JOB, HIREDATE FROM EMP
WHERE HIREDATE >= '1982/01/01' OR JOB = 'MANAGER';
----------------------------------------------------------------
SELECT EMPNO, ENAME, HIREDATE FROM EMP
WHERE HIREDATE BETWEEN '1981/05/05'AND '1981/12/31';
----------------------------------------------------------------
SELECT EMPNO, ENAME, SAL FROM EMP
WHERE SAL NOT BETWEEN 1500 AND 4000;
----------------------------------------------------------------
SELECT EMPNO, ENAME, JOB FROM EMP
WHERE JOB IN ('MANAGER','SALESMAN', 'SALESOMAN');
----------------------------------------------------------------
SELECT EMPNO, ENAME, JOB FROM EMP
WHERE EMPNO NOT IN(7369,7521,7698);
----------------------------------------------------------------
SELECT EMPNO, ENAME, HIREDATE, SAL FROM EMP
WHERE ENAME LIKE 'J%';

SELECT EMPNO, ENAME, HIREDATE, SAL FROM EMP
WHERE ENAME LIKE '%N';

SELECT EMPNO, ENAME, HIREDATE, SAL FROM EMP
WHERE ENAME LIKE '_A%';

SELECT EMPNO, ENAME, HIREDATE, SAL FROM EMP
WHERE ENAME LIKE '%N%';

SELECT EMPNO, ENAME, HIREDATE, SAL FROM EMP
WHERE ENAME NOT LIKE '%N%';
----------------------------------------------------------------
SELECT * FROM EMP
WHERE ENAME = 'FORD';

SELECT * FROM EMP
WHERE HIREDATE >= '1982/01/01' ;
----------------------------------------------------------------
SELECT * FROM EMP
WHERE COMM IS NULL;

SELECT * FROM EMP
WHERE COMM IS NOT NULL;
----------------------------------------------------------------
CREATE TABLE SONBOARD
AS
SELECT*FROM BOARD_COPY;
----------------------------------------------------------------
CREATE TABLE BOARD
AS
SELECT*FROM SONBOARD
WHERE 2=1;

SELECT*FROM BOARD ;
----------------------------------------------------------------
SELECT * FROM EMP
ORDER BY SAL ASC;

SELECT * FROM EMP
ORDER BY HIREDATE DESC;

SELECT * FROM EMP
ORDER BY SAL DESC, ENAME;
----------------------------------------------------------------
----------------------------------------------------------------
----------------------------------------------------------------



