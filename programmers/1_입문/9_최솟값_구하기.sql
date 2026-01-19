-- 최솟값 구하기
-- 프로그래머스 입문 (⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/59038
-- 작성자: 김재천
-- 작성일: 2026. 01. 20. 08:31:55

select
    datetime
from
    animal_ins
order by datetime
limit 1