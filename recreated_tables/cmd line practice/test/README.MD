### notes 3.25.26 baby stuff

echo "Hello Command Line" >> hello_cli.txt
$ ls
hello_cli.txt


$ cat hello_cli.txt
Hello Command Line


Example 1:
Funnels, count distinct user_id who answered each question_text

SELECT question_text, COUNT(DISTINCT(user_id))
FROM survey_responses
GROUP BY question_text;

Example 2:
Same as one but with new table onboarding_modals

SELECT modal_text, COUNT(DISTINCT(user_id))
FROM onboarding_modals
GROUP BY 1;

Example 3:
Only count user_id when group is control

SELECT modal_text,
  COUNT(DISTINCT CASE
    WHEN ab_group = 'control' THEN user_id
    END) AS 'control_clicks'
FROM onboarding_modals
GROUP BY 1
ORDER BY 1;

Example 4:
Add a column for variant clicks
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

Example 5:
Funnel from 3 tables
SELECT * 
FROM browse b
LEFT JOIN checkout c ON b.user_id = c.user_id
LEFT JOIN purchase p ON c.user_id = p.user_id
LIMIT 50;

Example 6:
Clean 5 up

SELECT DISTINCT b.browse_date,
   b.user_id,
   c.user_id IS NOT NULL AS 'is_checkout',
   p.user_id IS NOT NULL AS 'is_purchase'
FROM browse AS 'b'
LEFT JOIN checkout 'c'
  ON c.user_id = b.user_id
LEFT JOIN purchase 'p'
  ON p.user_id = c.user_id
LIMIT 50;

Example 7:
Use 5 as funnels
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

SELECT COUNT(*)
FROM funnels;

Example 8:
Add columns
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