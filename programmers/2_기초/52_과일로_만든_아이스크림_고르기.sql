-- 과일로 만든 아이스크림 고르기
-- 프로그래머스 기초 (⭐⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/133025
-- 작성자: 김재천
-- 작성일: 2026. 01. 20. 08:45:16

SELECT i.flavor
FROM icecream_info i
JOIN first_half f ON i.flavor = f.flavor -- 등호(=) 사용!
WHERE i.ingredient_type = 'fruit_based'
  AND f.total_order > 3000 -- HAVING 대신 WHERE에서 바로 필터링
ORDER BY f.total_order DESC;