-- 취소되지 않은 진료 예약 조회하기
-- 프로그래머스 중급 (⭐⭐⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/132204
-- 작성자: 김재천
-- 작성일: 2026. 03. 17. 09:43:55

-- 코드를 입력하세요
-- appointment 테이블이 중심
-- -> patient: pt_no
-- -> doctor : mddr_id = dr_id

-- dr_id
-- DR20100102
-- DR20200012

# SELECT
#     dr_id
# from
#     doctor

-- mddr_id
-- DR20090029
-- DR20090001

-- 2022-04-13
-- apnt_cncl_yn = N
-- MCDP_CD = CS
-- apnt_no, pt_name, mcdp_cd, dr_name, apnt_cncl_ymd

-- a.apnt_no, p.pt_name, p.pt_no, a.mcdp_cd, d.dr_name, a.apnt_ymd

select
    a.apnt_no,
    p.pt_name,
    p.pt_no,
    a.mcdp_cd,
    d.dr_name,
    a.apnt_ymd
from appointment as a
join patient as p
on a.pt_no = p.pt_no
join doctor as d
on a.mddr_id = d.dr_id
where
    (apnt_cncl_yn = 'N') 
    and (a.apnt_ymd >= '2022-04-13' and a.apnt_ymd < '2022-04-14')
    and (a.mcdp_cd = 'CS')
order by a.apnt_ymd asc;