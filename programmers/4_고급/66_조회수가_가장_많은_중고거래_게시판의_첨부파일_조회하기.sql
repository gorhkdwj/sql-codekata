-- 조회수가 가장 많은 중고거래 게시판의 첨부파일 조회하기
-- 프로그래머스 고급 (⭐⭐⭐⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/164671
-- 작성자: 김재천
-- 작성일: 2026. 02. 19. 23:52:17

-- 조회수가 가장 높은 게시물
-- 첨부파일 경로 조회
-- /home/grep/src/게시글ID/file_id,file_name,file_ext
-- rank desc
# with ranked as(
#     SELECT
#         f.file_id,
#         f.file_ext,
#         f.file_name,
#         f.board_id,
#         b.views
#     from
#         used_goods_file as f
#     left join
#         used_goods_board as b
#     on b.board_id = f.board_id
#     having
#         max(views)
# )
# select
#     concat('/home/grep/src/', board_id,'/',file_id,file_name,file_ext) as file_path
# from
#     ranked as r
# where views = r.views

SELECT
    CONCAT('/home/grep/src/',
           B.BOARD_ID, '/',
           F.FILE_ID, F.FILE_NAME, F.FILE_EXT) AS FILE_PATH
FROM USED_GOODS_BOARD B
JOIN USED_GOODS_FILE F ON B.BOARD_ID = F.BOARD_ID
WHERE B.VIEWS = (SELECT MAX(VIEWS) FROM USED_GOODS_BOARD)
ORDER BY F.FILE_ID DESC;

-- 1) 서브쿼리로 MAX(VIEWS) 값을 구함
-- 2) WHERE로 해당 게시물만 필터
-- 3) JOIN으로 그 게시물의 파일 전부 가져옴
-- → 파일이 2개면 2행 모두 출력됨