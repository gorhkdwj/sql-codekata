-- 자동차 종류 별 특정 옵션이 포함된 자동차 수 구하기
-- 프로그래머스 기초 (⭐⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/151137
-- 작성자: 김재천
-- 작성일: 2026. 01. 20. 08:43:11

-- options : 통풍시트, 열선시트, 가죽시트 중 하나 이상(or) 포함
-- 자동차 종류 별 group by
-- 몇 대 count -> cars
-- 자동차 종류 기준 asc

SELECT
    car_type,
    count(car_id) as cars
from
    car_rental_company_car
where
    options like '%통풍시트%' or 
    options like '%열선시트%' or 
    options like '%가죽시트%'
group by
    car_type
order by
    car_type