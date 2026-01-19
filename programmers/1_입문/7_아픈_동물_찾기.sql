-- 아픈 동물 찾기
-- 프로그래머스 입문 (⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/59036
-- 작성자: 김재천
-- 작성일: 2026. 01. 20. 08:31:41

select
    animal_id,
    name
from
    animal_ins
where
    intake_condition='Sick'