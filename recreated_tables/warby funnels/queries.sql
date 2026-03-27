--- SELECT * FROM funnels;

SELECT question,
  COUNT(DISTINCT user_id)
FROM funnels
GROUP BY 1;