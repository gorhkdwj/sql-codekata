-- 즐겨찾기가 가장 많은 식당 정보 출력하기
-- 프로그래머스 중급 (⭐⭐⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/131123
-- 작성자: 김재천
-- 작성일: 2026. 02. 19. 21:50:49

-- 음식종류별
-- 즐겨찾기 수가 가장 많은 식당
-- 음식종류 기준 desc
with ranked as (    
    SELECT
        food_type,
        rest_id,
        rest_name,
        favorites,
        ROW_NUMBER() over (partition by food_type order by favorites desc) as rnk
    from
        rest_info
)
select 
    food_type,
    rest_id,
    rest_name,
    favorites
from
    ranked
where
    rnk = 1
order by
    food_type desc;