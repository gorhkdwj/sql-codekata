-- 성분으로 구분한 아이스크림 총 주문량
-- 프로그래머스 기초 (⭐⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/133026
-- 작성자: 김재천
-- 작성일: 2026. 01. 20. 08:44:22

-- 주문량 : first_half
-- pk: flavor
SELECT
    i.ingredient_type,
    sum(f.total_order) as TOTAL_ORDER
from
    first_half as f
    inner join icecream_info as i
    on f.flavor = i.flavor
group by
    i.ingredient_type
order by
    sum(f.total_order)