-- 조건에 맞는 사용자와 총 거래금액 조회하기
-- https://school.programmers.co.kr/learn/courses/30/lessons/164668
SELECT U.USER_ID, U.NICKNAME, SUM(UGB.PRICE) AS TOTAL_SALES
FROM USED_GOODS_USER AS U
JOIN USED_GOODS_BOARD AS UGB
ON U.USER_ID = UGB.WRITER_ID
WHERE UGB.STATUS = 'DONE'
GROUP BY U.USER_ID
HAVING SUM(UGB.PRICE) >= 700000
ORDER BY TOTAL_SALES;