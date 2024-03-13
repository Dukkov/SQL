-- 과일로 만든 아이스크림 고르기
-- https://school.programmers.co.kr/learn/courses/30/lessons/133025
SELECT F.FLAVOR
FROM FIRST_HALF AS F
JOIN ICECREAM_INFO AS I
ON F.FLAVOR = I.FLAVOR
WHERE TOTAL_ORDER > 3000 AND INGREDIENT_TYPE = "fruit_based"
ORDER BY TOTAL_ORDER DESC;