-- 조건에 맞는 도서 리스트 출력하기
-- 프로그래머스 입문 (⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/144853
-- 작성자: 김재천
-- 작성일: 2026. 01. 20. 08:40:48

SELECT 
    book_id, 
    substring(published_date,1,10) as published_date
from
    book
where 
    category='인문'
    and year(published_date) = 2021
order by published_date