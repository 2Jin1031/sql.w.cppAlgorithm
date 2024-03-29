SELECT YEAR(s.SALES_DATE) AS YEAR, MONTH(s.SALES_DATE) AS MONTH, i.GENDER, COUNT(DISTINCT i.USER_ID) AS USERS
FROM USER_INFO i, ONLINE_SALE s
WHERE i.USER_ID = s.USER_ID
    AND GENDER IS NOT NULL
GROUP BY YEAR, MONTH, GENDER
ORDER BY YEAR, MONTH, GENDER;
