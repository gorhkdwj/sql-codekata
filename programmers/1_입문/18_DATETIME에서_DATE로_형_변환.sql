-- DATETIME에서 DATE로 형 변환
-- 프로그래머스 입문 (⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/59414
-- 작성자: 김재천
-- 작성일: 2026. 01. 20. 08:39:15

SELECT
    animal_id,
    name,
    substring(datetime,1,10) as '날짜'
from
    animal_ins
order by 
    animal_id