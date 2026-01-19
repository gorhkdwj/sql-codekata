-- 평균 일일 대여 요금 구하기
-- 프로그래머스 입문 (⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/151136
-- 작성자: 김재천
-- 작성일: 2026. 01. 20. 08:41:16

SELECT 
    round(avg(daily_fee),0) as AVERAGE_FEE
from 
    car_rental_company_car
where
    car_type = 'SUV'