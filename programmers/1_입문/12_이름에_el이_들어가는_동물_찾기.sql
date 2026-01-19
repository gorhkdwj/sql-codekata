-- 이름에 el이 들어가는 동물 찾기
-- 프로그래머스 입문 (⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/59047
-- 작성자: 김재천
-- 작성일: 2026. 01. 20. 08:33:51

select
    animal_id,
    name
from
    animal_ins
where
    animal_type='Dog'
    and name like '%el%'
order by
    name