/* 정렬해서 조회하기*/
/*order by*/

/*사원의 이름, 성, 봉급을 봉급 낮은 순서부터 조회하기*/
SELECT FIRST_NAME , LAST_NAME , SALARY 
FROM EMPLOYEES 
ORDER BY SALARY ASC; --오름차순

/*ORDER BY 정렬하겠다* SALARY 기준
 * 낮은 순서부터 조회는 낮은 값 ~ 높은 값 순서대로를 의미한다
 */
/*내림차순 정렬*/
SELECT FIRST_NAME , LAST_NAME , SALARY 
FROM EMPLOYEES 
ORDER BY SALARY DESC;  --내림차순

/* 디폴트값= 오름차순*/

/*날짜 정렬*/
/*직원의 이름, 성, 소용일을 고용일 순서로 정렬해서 조회하기*/
SELECT FIRST_NAME, LAST_NAME, HIRE_DATE
FROM EMPLOYEES 
ORDER BY HIRE_DATE ASC;

SELECT *FROM EMPLOYEES e ;

/* 문자 정렬*/
/*직원의 이름, 성을 성 기준으로 순서대로 정렬하기*/

SELECT FIRST_NAME, LAST_NAME
FROM EMPLOYEES e 
ORDER BY LAST_NAME  ASC;

/*직원이름, 봉급, 고용일 조회*/
SELECT FIRST_NAME, SALARY, HIRE_DATE
FROM EMPLOYEES e 
ORDER BY SALARY ASC, HIRE_DATE DESC;


/*회사에 존재하는 직무 조회*/
SELECT DISTINCT JOB_ID 
FROM EMPLOYEES e; 

/*조회하는 컬럼들이 모두 같은 행들만 중복제거*/
SELECT DISTINCT JOB_ID, HIRE_DATE 
FROM EMPLOYEES e ;

SELECT FIRST_NAME,LAST_NAME, SALARY 
FROM EMPLOYEES e 
ORDER BY SALARY ;

/*ALIAS: 별칭*/

/*직원의 이름, 성, 봉급, 사원 번호 조회*/
/*테이블의 컬럼명을 별칭 설정*/
SELECT FIRST_NAME 이름, LAST_NAME 성, SALARY 봉급, EMPLOYEE_ID "사원번호" 
FROM EMPLOYEES e ;

/*실습
 사원이름, 성, 봉급 내림차순 정렬 조회
 별명사용*/

SELECT EMPLOYEE_ID "사원번호", FIRST_NAME 이름, LAST_NAME 성, SALARY 봉급
FROM  EMPLOYEES e 
ORDER BY 봉급 DESC;


SELECT *FROM EMPLOYEES e ;





10 || 20;
SELECT 10 || 20 FROM DUAL;

SELECT '내 이름은 ' || '박천휘'
FROM DUAL;

SELECT FIRST_NAME  || LAST_NAME AS "풀네임"
FROM EMPLOYEES e ;
/*컬럼 연결*/

SELECT HIRE_DATE || '입사'
FROM EMPLOYEES e 

/*실습*/
SELECT FIRST_NAME || ' ' || LAST_NAME AS "사원의 이름" , EMAIL || '@koreait.com'  AS "메일주소"
FROM EMPLOYEES e ;


SELECT HIRE_DATE ,
	HIRE_DATE +10, 
	HIRE_DATE -10
FROM EMPLOYEES e ;

SELECT SYSDATE 
FROM DUAL;

SELECT HIRE_DATE,
	SYSDATE ,
	SYSDATE -HIRE_DATE 
	-- SYSDATE +HIRE_DATE : 오류
FROM EMPLOYEES e ;
/* 연산의 결과는 숫자 타입이다*/

/*날짜와 숫자의 연산에서 기본적으로 숫자는 일 수를 의미하기 때문에
 * 시간, 분 단위로 연산하고 싶다면 일(24H)로 환산해야 함*/
SELECT SYSDATE ,
	SYSDATE + 0.5,
	SYSDATE - 0.5,
	SYSDATE - 1/24, -- 1시간
	SYSDATE - 30/60/24 --30분
FROM DUAL;

/*실습*/
/*직원의 이름, 봉급, 인상 봉급, 감축 봉급을 조회하기
 * 이름은 성과 함께 띄어쓰기로 연결되어 있다
 * 인상 봉급은 기존 봉급의 10% 증가되었고,
 * 감축 봉급은 기존 봉급의 10% 감소
 * 결과는 봉급 오름차순으로 정렬하여 조회
 */

/* [실습] */
/* 직원의 이름, 봉급, 인상 봉급, 감축 봉급을 조회하기
 * 이름은 성과 함께 띄어쓰기로 연결되어 있다.
 * 인상 봉급은 기존 봉급의 10% 증가되었고,
 * 감축 봉급은 기존 봉급의 10% 감소되었다.
 * 결과는 봉급 오름차순으로 정렬하여 조회한다. */
SELECT FIRST_NAME || ' ' || LAST_NAME "직원의 이름",
   SALARY "봉급",
   SALARY * 1.1 "인상 봉급",
   SALARY * 0.9 "감축 봉급"
FROM EMPLOYEES e 
ORDER BY 봉급;
FROM EMPLOYEES e 
 
 