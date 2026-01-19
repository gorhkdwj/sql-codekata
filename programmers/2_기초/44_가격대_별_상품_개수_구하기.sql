-- 가격대 별 상품 개수 구하기
-- 프로그래머스 기초 (⭐⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/131530
-- 작성자: 김재천
-- 작성일: 2026. 01. 20. 08:44:30

-- 가격대별로 count 1 ?
-- sql은 정수나눗셈 시 몫만 출력한다.
-- price / 10000 * 10000
SELECT
    price_group,
    count(*)
from
    (
    select
        product_id,
        product_code,
        (price div 10000)*10000 as price_group
    from
        product
    ) a
group by
    a.price_group
order by
    a.price_group