-- 조건에 부합하는 중고거래 댓글 조회하기
-- 프로그래머스 기초 (⭐⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/164673
-- 작성자: 김재천
-- 작성일: 2026. 01. 20. 08:45:30

-- 2022년 10월 작성
-- 게시글 제목, 게시글 id, 댓글 id, 댓글 작성자 id, 댓글 내용, 댓글 작성일
-- 댓글 작성일 오름차순, 게시글 제목 오름차순
SELECT
    b.title,
    b.board_id,
    r.reply_id,
    r.writer_id,
    r.contents,
    date_format(r.created_date, '%Y-%m-%d') as created_date
from
    used_goods_board as b
    inner join used_goods_reply as r
    on b.board_id = r.board_id
where
    b.created_date like '2022-10%'
order by
    r.created_date,
    b.title