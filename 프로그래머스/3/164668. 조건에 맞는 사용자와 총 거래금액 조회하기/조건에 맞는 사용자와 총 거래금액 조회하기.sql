SELECT USER_ID, NICKNAME, SUM(PRICE) AS TOTAL_SALES
FROM USED_GOODS_BOARD A
LEFT JOIN USED_GOODS_USER B ON A.WRITER_ID = B.USER_ID
WHERE STATUS = 'DONE'
GROUP BY USER_ID
HAVING SUM(PRICE)>=700000
ORDER BY SUM(PRICE) ASC