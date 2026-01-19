-- 진료과별 총 예약 횟수 출력하기
-- 프로그래머스 기초 (⭐⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/132202
-- 작성자: 김재천
-- 작성일: 2026. 01. 20. 08:42:59

-- 코드를 입력하세요
-- 2022 5월에 예약한 환자 수 as 5월예약건수
-- 진료과 코드 별로 조회 as 진료과 코드
-- 
SELECT 
    mcdp_cd as "진료과코드",
    count(apnt_no) as "5월예약건수"
from
    appointment
where
    month(apnt_ymd) = 5 and
    year(apnt_ymd) = 2022
group by
    1
order by
    2,
    1