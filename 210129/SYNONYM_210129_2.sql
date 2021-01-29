-- 권한을 받은 SYSTEM 소유의 PROJECT 테이블

SELECT * FROM SYSTEM.PROJECT;

-- 전용 동의어 생성하기

CREATE SYNONYM MY_PROJECT FOR SYSTEM.PROJECT;

-- 전용 동의어를 이용해 SYSTEM 소유의 PROJECT 테이블 접근

SELECT * FROM MY_PROJECT;

-- SYSTEM 소유자가 생성한 공용 동의어 이용해 PROJECT 테이블 접근

SELECT * FROM PUB_PROJECT;

-- 전용 동의어 삭제

DROP SYNONYM MY_PROJECT;

-- 공용 동의어 삭제

DROP PUBLIC SYNONYM PUB_PROJECT;

-- 동의어 조회

SELECT * FROM USER_SYNONYMS;

-- 공용 동의어 조회

SELECT * FROM DBA_SYNONYMS
WHERE TABLE_NAME = 'PROJECT';