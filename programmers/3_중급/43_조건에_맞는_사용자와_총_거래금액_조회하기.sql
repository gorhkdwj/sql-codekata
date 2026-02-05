-- 조건에 맞는 사용자와 총 거래금액 조회하기
-- 프로그래머스 중급 (⭐⭐⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/164668
-- 작성자: 김재천
-- 작성일: 2026. 02. 05. 09:44:36

-- 코드를 입력하세요
SELECT
    u.user_id,
    u.nickname,
    sum(b.price) as TOTAL_SALES
from
    used_goods_board as b
left join used_goods_user as u
on b.writer_id = u.user_id
where
    status = 'DONE'
group by
    u.user_id
having
    sum(b.price) >= 700000
order by
    sum(b.price) asc;