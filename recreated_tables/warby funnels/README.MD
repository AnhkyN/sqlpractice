### 3.26.26 Free Notes

Example 1:
Funnel
SELECT question,
  COUNT(DISTINCT user_id)
FROM survey
GROUP BY 1;