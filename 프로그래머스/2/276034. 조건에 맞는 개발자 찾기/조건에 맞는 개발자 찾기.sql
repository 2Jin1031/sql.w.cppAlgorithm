SELECT DISTINCT d.ID, d.EMAIL, d.FIRST_NAME, d.LAST_NAME
FROM SKILLCODES s, DEVELOPERS d
WHERE (s.CODE & d.SKILL_CODE) > 0 AND s.NAME REGEXP 'Python|C#'
ORDER BY ID;