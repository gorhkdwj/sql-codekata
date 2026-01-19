-- 역순 정렬하기
-- 프로그래머스 입문 (⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/59035
-- 작성자: 김재천
-- 작성일: 2026. 01. 20. 08:30:51

select 
    name,
    datetime
from animal_ins
order by
    animal_id desc;