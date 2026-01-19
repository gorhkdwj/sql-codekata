-- 중복 제거하기
-- 프로그래머스 입문 (⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/59408
-- 작성자: 김재천
-- 작성일: 2026. 01. 20. 08:31:15

select 
    count(distinct name)
from
    animal_ins
where  
    name is not null