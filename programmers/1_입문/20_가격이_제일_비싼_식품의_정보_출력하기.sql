-- 가격이 제일 비싼 식품의 정보 출력하기
-- 프로그래머스 입문 (⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/131115
-- 작성자: 김재천
-- 작성일: 2026. 01. 20. 08:39:39

select
    *
from food_product
where price = (
SELECT
    max(price)
from
    food_product
)