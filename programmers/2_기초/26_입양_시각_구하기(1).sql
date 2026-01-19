-- 입양 시각 구하기(1)
-- 프로그래머스 기초 (⭐⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/59412
-- 작성자: 김재천
-- 작성일: 2026. 01. 20. 08:42:51

-- 시간대별로: group by hour
-- 09:00~19:59
select
    hour(datetime) as HOUR,
    count(animal_id) as COUNT
from
    animal_outs
where
    hour(datetime) between 9 and 19
group by
    1
order by
    1