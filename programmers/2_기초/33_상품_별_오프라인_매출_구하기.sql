-- 상품 별 오프라인 매출 구하기
-- 프로그래머스 기초 (⭐⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/131533
-- 작성자: 김재천
-- 작성일: 2026. 01. 20. 08:43:39

-- product, offline_sale inner join on product_id
-- group by product_id
-- order by amount*price desc, code asc
SELECT
    p.product_code,
    sum(p.price*o.sales_amount) as sales
from
    product as p 
    inner join offline_sale as o
    on p.product_id = o.product_id
group by
    p.product_code
order by
    sales desc,
    p.product_code asc ;