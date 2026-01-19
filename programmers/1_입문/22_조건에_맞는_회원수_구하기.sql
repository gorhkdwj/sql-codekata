-- 조건에 맞는 회원수 구하기
-- 프로그래머스 입문 (⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/131535
-- 작성자: 김재천
-- 작성일: 2026. 01. 20. 08:40:09

select 
    count(*) as users
from
    user_info
where
    year(joined)=2021
    and age between 20 and 29