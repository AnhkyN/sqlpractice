--- SELECT * FROM funnels;

/*SELECT question,
  COUNT(DISTINCT user_id)
FROM funnels
GROUP BY 1;*/

SELECT DISTINCT u.user_id, 
  o.user_id IS NOT NULL AS 'is_home_try_on',
  o.number_of_pairs,
  p.user_id IS NOT NULL AS 'is_purchase'
FROM user_preferences u
LEFT JOIN orders o ON u.user_id = o.user_id
LEFT JOIN purchases p ON p.user_id = o.user_id
LIMIT 10;