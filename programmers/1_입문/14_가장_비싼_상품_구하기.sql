-- 가장 비싼 상품 구하기
-- 프로그래머스 입문 (⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/131697
-- 작성자: 김재천
-- 작성일: 2026. 01. 20. 08:34:09

select 
    max(price) as 'max_price'
from
    product