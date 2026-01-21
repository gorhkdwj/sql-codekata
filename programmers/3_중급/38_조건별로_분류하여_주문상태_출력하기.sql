-- 조건별로 분류하여 주문상태 출력하기
-- 프로그래머스 중급 (⭐⭐⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/131113
-- 작성자: 김재천
-- 작성일: 2026. 01. 21. 10:06:00

-- 2022 05 01 기준 출고완료, 이후는 출고 대기. 출고일자 null=출고 미정
-- case when 사용해볼까?
-- 주문 id, 제품 id, 출고일자, 출고여부
SELECT
    order_id,
    product_id,
    date_format(out_date, '%Y-%m-%d') as out_date,
    case when out_date is null then "출고미정"
         when out_date > '2022-05-01' then "출고대기"
         when out_date <= '2022-05-01' then "출고완료"
         end as "출고여부"
from
    food_order
order by 
    order_id asc