-- 카테고리 별 상품 개수 구하기
-- 프로그래머스 기초 (⭐⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/131529
-- 작성자: 김재천
-- 작성일: 2026. 01. 20. 08:42:34

-- product_code 의 앞 두자리 substr 후 group by -> cnt
-- 
SELECT 
    substr(product_code,1,2) as category,
    count(*) as products
from
    product
group by 
    1
order by
    1