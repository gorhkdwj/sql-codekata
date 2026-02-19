-- 5월 식품들의 총매출 조회하기
-- 프로그래머스 중급 (⭐⭐⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/131117
-- 작성자: 김재천
-- 작성일: 2026. 02. 19. 23:00:24

-- product_date = 5월
-- product_id 별 총매출
-- 식품 id, 식품 이름, 총매출(amount*price)
-- 총매출 기준 desc, 식품 id 기준 asc
# with sales as(    
#     SELECT
#         o.product_id,
#         p.product_name,
#         o.amount * p.price as sales
#     from
#         food_order as o
#     left join
#         food_product as p
#     on o.product_id = p.product_id
#     where
#     o.produce_date between '2022-05-01' and '2022-05-31'
# )
# select
#     s.product_id,
#     s.product_name,
#     sum(s.sales) as total_sales
# from
#     sales as s
# group by
#     s.product_id
# order by
#     total_sales desc,
#     s.product_id asc

SELECT
    o.product_id,
    p.product_name,
    SUM(o.amount * p.price) AS total_sales
FROM
    food_order o
LEFT JOIN
    food_product p ON o.product_id = p.product_id
WHERE
    o.produce_date BETWEEN '2022-05-01' AND '2022-05-31'
GROUP BY
    o.product_id, p.product_name
ORDER BY
    total_sales DESC,
    o.product_id ASC;