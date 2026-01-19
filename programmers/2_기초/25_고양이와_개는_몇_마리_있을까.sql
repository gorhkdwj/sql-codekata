-- 고양이와 개는 몇 마리 있을까
-- 프로그래머스 기초 (⭐⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/59040
-- 작성자: 김재천
-- 작성일: 2026. 01. 20. 08:43:22

SELECT
    animal_type,
    count(animal_id) as 'count'
FROM
    animal_ins
where 
    animal_type in ('cat', 'dog')
group by
    animal_type
order by
    animal_type