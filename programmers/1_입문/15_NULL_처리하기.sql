-- NULL 처리하기
-- 프로그래머스 입문 (⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/59410
-- 작성자: 김재천
-- 작성일: 2026. 01. 20. 08:37:39

SELECT animal_type, IFNULL(name, 'No name') name, sex_upon_intake
FROM animal_ins
ORDER BY animal_id