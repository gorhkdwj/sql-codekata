-- 오랜 기간 보호한 동물(1)
-- 프로그래머스 중급 (⭐⭐⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/59044
-- 작성자: 김재천
-- 작성일: 2026. 01. 20. 09:53:58

-- out datetime 이 null인 row 확인.
-- 해당 값들이 아직 입양을 가지 못한 동물 데이터일 것.
# SELECT 
#     i.name,
#     i.datetime,
#     o.datetime
# from
#     animal_ins as i
#     left join animal_outs as o
#     on i.animal_id = o.animal_id

# -- o.datetime이 null인 데이터 중,
# -- i.datetime을 asc하여 top 3
#오래된 row_number 3마리

SELECT 
    i.name,
    i.datetime
from
    animal_ins as i
    left join animal_outs as o
    on i.animal_id = o.animal_id
where
    o.datetime is null
order by
    i.datetime
limit 3