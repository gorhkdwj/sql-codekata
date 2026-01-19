-- 흉부외과 또는 일반외과 의사 목록 출력하기
-- 프로그래머스 입문 (⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/132203
-- 작성자: 김재천
-- 작성일: 2026. 01. 20. 08:41:00

SELECT 
    dr_name,
    dr_id,
    mcdp_cd,
    substring(hire_ymd,1,10) as hire_ymd
from 
    doctor
where
    mcdp_cd in ('cs','gs')
order by
    hire_ymd desc,
    dr_name asc