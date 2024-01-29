-- 재구매가 일어난 상품과 회원 리스트 구하기
-- https://school.programmers.co.kr/learn/courses/30/lessons/131536
SELECT USER_ID, PRODUCT_ID
FROM (
  SELECT USER_ID, PRODUCT_ID, COUNT(*) AS purchase_cnt
  FROM ONLINE_SALE
  GROUP BY USER_ID, PRODUCT_ID
) AS subquery
WHERE purchase_cnt > 1
ORDER BY USER_ID ASC, PRODUCT_ID DESC;