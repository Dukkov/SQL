-- 자동차 대여 기록에서 대여중/대여가능 여부 구분하기
-- https://school.programmers.co.kr/learn/courses/30/lessons/157340
SELECT CRH.CAR_ID,
  CASE WHEN COUNT(CASE WHEN '2022-10-16' BETWEEN CRH.START_DATE AND CRH.END_DATE THEN 1 END) > 0 
  THEN '대여중' 
  ELSE '대여 가능' 
  END AS AVAILABILITY
FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY AS CRH
GROUP BY CRH.CAR_ID
ORDER BY CRH.CAR_ID DESC;