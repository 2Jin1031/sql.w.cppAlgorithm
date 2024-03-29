SELECT b.TITLE, b.BOARD_ID,	r.REPLY_ID,	r.WRITER_ID, r.CONTENTS, DATE_FORMAT(r.CREATED_DATE, '%Y-%m-%d') AS CREATED_DATE
FROM USED_GOODS_BOARD b, USED_GOODS_REPLY r
WHERE b.CREATED_DATE LIKE '2022-10-%' AND b.BOARD_ID = r.BOARD_ID
ORDER BY r.CREATED_DATE, b.TITLE;