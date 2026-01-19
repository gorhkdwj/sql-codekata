-- 카테고리 별 도서 판매량 집계하기
-- 프로그래머스 기초 (⭐⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/144855
-- 작성자: 김재천
-- 작성일: 2026. 01. 20. 08:43:33

-- 2022년 1월
-- 카테고리 별 group by
-- book_sales 테이블에서 date, sales 컬럼과 book 테이블의 category타입을 같이 봐야 함 -> inner join(null값 없음!)
-- order by category

SELECT
    b.category as category,
    sum(sales) as total_sales
from
    book as b 
    inner join book_sales as s
    on b.book_id = s.book_id
where
    year(s.sales_date) = 2022 and 
    month(s.sales_date) = 1
group by
    1
order by
    1