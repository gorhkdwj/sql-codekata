-- 식품분류별 가장 비싼 식품의 정보 조회하기
-- 프로그래머스 중급 (⭐⭐⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/131116
-- 작성자: 김재천
-- 작성일: 2026. 02. 19. 22:10:15

-- 식품분류별
-- 가격이 제일 비싼 식품의
-- 분류, 가격, 이름
-- 과자, 국, 김치, 식용유 종류만 조회
-- 식품 가격 기준 내림차순
WITH ranked as (
    select
        product_id,
        product_name,
        product_cd,
        category,
        price,
        row_number() over (partition by category order by price desc) as rnk
    from
        food_product
    where
        category in ('과자', '국', '김치', '식용유')
)
SELECT
    category,
    price as max_price,
    product_name
from
    ranked
where
    rnk = 1
order by
    max_price desc
    