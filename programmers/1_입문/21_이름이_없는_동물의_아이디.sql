-- 이름이 없는 동물의 아이디
-- 프로그래머스 입문 (⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/59039
-- 작성자: 김재천
-- 작성일: 2026. 01. 20. 08:39:58

-- 코드를 입력하세요
SELECT
    animal_id
from
    animal_ins
where
    name is null