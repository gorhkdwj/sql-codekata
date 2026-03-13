-- 없어진 기록 찾기
-- 프로그래머스 중급 (⭐⭐⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/59042
-- 작성자: 김재천
-- 작성일: 2026. 03. 13. 11:18:02

-- 코드를 입력하세요
-- out에는 있는데 in에는 없는것
-- out left join in
-- out에는 있는데 in에는 null인 값들 조회
SELECT 
    o.animal_id,
    o.name
from animal_outs as o
left join animal_ins as i
on o.animal_id = i.animal_id
where i.animal_id is null