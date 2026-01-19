-- 오랜 기간 보호한 동물(2)
-- 프로그래머스 기초 (⭐⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/59411
-- 작성자: 김재천
-- 작성일: 2026. 01. 20. 08:43:50

-- MySQL 코드카타

-- o.datetime - i.datetime 상위 2마리
# 1번 풀이 : order by 후 limit 2
# SELECT
#     i.animal_id,
#     i.name
# from
#     animal_ins as i
#     inner join animal_outs as o
#     on i.animal_id = o.animal_id
# order by
#     o.datetime - i.datetime desc
# limit 2;

# 2번 풀이 rank 사용
select
    a.animal_id,
    a.name
from
    (
    select
        i.animal_id,
        i.name,
        rank() over (order by (o.datetime-i.datetime) desc) as ranking
    from
        animal_ins as i
        inner join animal_outs as o
        on i.animal_id=o.animal_id
    ) as a
where ranking <= 2