-- 12세 이하인 여자 환자 목록 출력하기
-- 프로그래머스 입문 (⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/132201
-- 작성자: 김재천
-- 작성일: 2026. 01. 20. 08:40:18

-- (조건)
-- 12세 이하, 여자
-- tlno is null -> 'NONE'
-- order by age desc, pt_name
-- (조회 컬럼)
-- pt_name, pt_no, gend_cd, age, tlno

SELECT 
    pt_name,
    pt_no,
    gend_cd,
    age,
    ifnull(tlno, 'NONE')
from
    patient
where age <= 12 and gend_cd = 'w'
order by age desc, pt_name ;