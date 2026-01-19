-- 강원도에 위치한 생산공장 목록 출력하기
-- 프로그래머스 입문 (⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/131112
-- 작성자: 김재천
-- 작성일: 2026. 01. 20. 08:39:08

SELECT
    factory_id,
    factory_name,
    address
from 
    food_factory
where
    address like '강원%'
order by
    factory_id