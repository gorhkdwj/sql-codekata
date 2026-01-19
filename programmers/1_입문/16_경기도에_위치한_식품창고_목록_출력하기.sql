-- 경기도에 위치한 식품창고 목록 출력하기
-- 프로그래머스 입문 (⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/131114
-- 작성자: 김재천
-- 작성일: 2026. 01. 20. 08:39:00

SELECT
    warehouse_id,
    warehouse_name,
    address,
    case 
        when freezer_yn is null then 'N' else freezer_yn end as 'freezer_yn'
from
    food_warehouse
where address like '경기%'
order by
    warehouse_id asc