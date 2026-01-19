-- 재구매가 일어난 상품과 회원 리스트 구하기
-- 프로그래머스 기초 (⭐⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/131536
-- 작성자: 김재천
-- 작성일: 2026. 01. 20. 08:45:08

-- 동일 회원, 동일 상품 재구매를 어떻게 찾을까
-- 하나의 USER_ID에서 하나의 product_id가 2개 이상, 다른 online_sale_id
-- product_id 별 count>2인 경우 user_id count 1 =>
SELECT
    user_id,
    product_id
from
    online_sale
group by
    user_id, product_id
having
    count(*)>1
order by
    user_id,
    product_id desc