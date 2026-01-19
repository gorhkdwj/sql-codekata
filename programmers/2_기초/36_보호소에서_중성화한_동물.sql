-- 보호소에서 중성화한 동물
-- 프로그래머스 기초 (⭐⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/59045
-- 작성자: 김재천
-- 작성일: 2026. 01. 20. 08:43:58

-- sex_upon_intake = intact
-- spayed, neutered=중성화 완료된 상태 / intact => 아직 중성화 안된 상태
SELECT
    i.animal_id,
    i.animal_type,
    i.name
from
    animal_ins as i
    inner join animal_outs as o
    on i.animal_id = o.animal_id
where
    i.sex_upon_intake like '%intact%'
    and (o.sex_upon_outcome like "%spayed%"
    or o.sex_upon_outcome like "%neutered%")
order by
    i.animal_id