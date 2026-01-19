-- 인기있는 아이스크림
-- 프로그래머스 입문 (⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/133024
-- 작성자: 김재천
-- 작성일: 2026. 01. 20. 08:40:29

-- 조건
-- order by total_order desc, shipment_id
-- 출력 컬럼
-- flavor
SELECT 
    flavor
from
    first_half
order by
    total_order desc,
    shipment_id