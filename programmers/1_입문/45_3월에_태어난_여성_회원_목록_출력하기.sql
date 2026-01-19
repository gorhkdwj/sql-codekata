-- 3월에 태어난 여성 회원 목록 출력하기
-- 프로그래머스 입문 (⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/131120
-- 작성자: 김재천
-- 작성일: 2026. 01. 20. 08:41:23

# birth = 3월
# tlno is null - out!
SELECT 
    member_id,
    member_name,
    gender,
    substr(date_of_birth, 1, 10) as DATE_OF_BIRTH
from 
    member_profile
where
    month(date_of_birth) = 03 and
    tlno is not null and
    gender = 'W'
order by 
    member_id