-- 여러 기준으로 정렬하기
-- 프로그래머스 입문 (⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/59404
-- 작성자: 김재천
-- 작성일: 2026. 01. 20. 08:32:19

select
    animal_id,
    name,
    datetime
from
    animal_ins
order by
    name,
    datetime desc;