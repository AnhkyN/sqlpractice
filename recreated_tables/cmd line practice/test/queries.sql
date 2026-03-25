--SELECT * FROM survey_responses;

/*SELECT question_text, COUNT(DISTINCT(user_id))
FROM survey_responses
GROUP BY question_text;


SELECT * FROM onboarding_modals;


SELECT modal_text, COUNT(DISTINCT(user_id))
FROM onboarding_modals
GROUP BY 1;

SELECT modal_text,
  COUNT(DISTINCT CASE
    WHEN ab_group = 'control' THEN user_id
    END) AS 'control_clicks'
FROM onboarding_modals
GROUP BY 1
ORDER BY 1;


SELECT modal_text,
  COUNT(DISTINCT CASE
    WHEN ab_group = 'control' THEN user_id
    END) AS 'control_clicks',
  COUNT(DISTINCT CASE
    WHEN ab_group = 'variant' THEN user_id
    END) AS 'variant_clicks'
FROM onboarding_modals
GROUP BY 1
ORDER BY 1;

SELECT *
FROM browse
LIMIT 5;

SELECT *
FROM checkout
LIMIT 5;

SELECT *
FROM purchase
LIMIT 5;

SELECT * 
FROM browse b
LEFT JOIN checkout c ON b.user_id = c.user_id
LEFT JOIN purchase p ON c.user_id = p.user_id
LIMIT 50;

SELECT DISTINCT b.browse_date,
   b.user_id,
   c.user_id IS NOT NULL AS 'is_checkout',
   p.user_id IS NOT NULL AS 'is_purchase'
FROM browse AS 'b'
LEFT JOIN checkout 'c'
  ON c.user_id = b.user_id
LEFT JOIN purchase 'p'
  ON p.user_id = c.user_id
LIMIT 50;*/

WITH funnels AS (
  SELECT DISTINCT b.browse_date,
     b.user_id,
     c.user_id IS NOT NULL AS 'is_checkout',
     p.user_id IS NOT NULL AS 'is_purchase'
  FROM browse AS 'b'
  LEFT JOIN checkout AS 'c'
    ON c.user_id = b.user_id
  LEFT JOIN purchase AS 'p'
    ON p.user_id = c.user_id)

SELECT COUNT(*) AS num_browse, 
  SUM(is_checkout) AS num_checkout,
  SUM(is_purchase) AS is_purchase,
   1.0 * SUM(is_checkout) / COUNT(user_id) AS 'browse_to_checkout',
   1.0 * SUM(is_purchase) / SUM(is_checkout) AS 'checkout_to_purchase'
FROM funnels;