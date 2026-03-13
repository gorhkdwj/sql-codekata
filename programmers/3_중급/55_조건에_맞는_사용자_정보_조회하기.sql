-- 조건에 맞는 사용자 정보 조회하기
-- 프로그래머스 중급 (⭐⭐⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/164670
-- 작성자: 김재천
-- 작성일: 2026. 03. 13. 11:50:29

-- 코드를 입력하세요
-- 중고 거래 게시물 3건 이상
-- 각 아이디 별 게시물 작성 수 부여
-- u.user_id, u.nickname, u.city + u.street_address1,2, u.tlno
SELECT 
    user_id,
    nickname,
    concat(city,' ', street_address1,' ', street_address2) as "전체주소",
    concat_ws('-',
        substring(tlno, 1, 3),
        substring(tlno, 4, 4),
        substring(tlno, 8)
     ) as "전화번호"
from (
    -- 중고 거래 게시물 카운트
    select
        u.user_id,
        u.nickname,
        u.city,
        u.street_address1,
        u.street_address2,
        u.tlno,
        count(board_id) as cnt
    from used_goods_board as b
    left join used_goods_user as u
    on b.writer_id = u.user_id
    group by writer_id
) board_cnt
where cnt >= 3
order by user_id desc
