-- 있었는데요 없었습니다
-- 프로그래머스 기초 (⭐⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/59043
-- 작성자: 김재천
-- 작성일: 2026. 01. 20. 08:43:43

-- MySQL 코드카타

-- 보호 시작일>압영일
-- animal_id, name 조회
-- i.datetime
SELECT
    i.animal_id,
    i.name
from animal_ins as i
left join animal_outs as o
on i.animal_id = o.animal_id
where i.datetime>o.datetime
order by i.datetime