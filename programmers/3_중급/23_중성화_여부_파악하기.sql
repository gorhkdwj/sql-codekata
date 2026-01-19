-- 중성화 여부 파악하기
-- 프로그래머스 중급 (⭐⭐⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/59409
-- 작성자: 김재천
-- 작성일: 2026. 01. 20. 08:45:37

-- 코드를 입력하세요
# SELECT
#     animal_id,
#     name,
#     case when sex_upon_intake like 'neutered%'
#               or sex_upon_intake like 'spayed%'
#               then 'O'
#     else 'X'
#     end as "중성화"
# from
#     animal_ins
# order by
#     animal_id asc

SELECT ANIMAL_ID,
       NAME,
       CASE
           WHEN SEX_UPON_INTAKE REGEXP 'Neutered|Spayed' THEN 'O'
           ELSE 'X'
       END AS 중성화
FROM ANIMAL_INS
ORDER BY ANIMAL_ID;