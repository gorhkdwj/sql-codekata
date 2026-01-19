-- 조건에 맞는 도서와 저자 리스트 출력하기
-- 프로그래머스 기초 (⭐⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/144854
-- 작성자: 김재천
-- 작성일: 2026. 01. 20. 08:44:12

-- 코드를 입력하세요
SELECT
    b.book_id,
    a.author_name,
    date_format(b.published_date, '%Y-%m-%d') as published_date
from
    book as b
    left join author as a
    on b.author_id = a.author_id
where
    b.category like '경제'
order by date(b.published_date)