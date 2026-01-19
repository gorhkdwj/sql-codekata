-- 조건에 부합하는 중고거래 상태 조회하기
-- 프로그래머스 기초 (⭐⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/164672
-- 작성자: 김재천
-- 작성일: 2026. 01. 20. 08:45:24

-- 코드를 입력하세요
SELECT
    board_id,
    writer_id,
    title,
    price,
    case when status = 'sale' then "판매중"
         when status = 'reserved' then '예약중'
         when status = 'done' then '거래완료' 
     end as status
from
    used_goods_board
where
    created_date = '2022-10-05'
order by
    board_id desc