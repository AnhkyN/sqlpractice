### 4.8.26 Notes

EXAMPLE 1:
Finding June's rows
SELECT * FROM page_visits
WHERE user_id = 10069
AND utm_source = "buzzfeed";

EXAMPLE 2:
Just user_id
SELECT * 
FROM page_visits
WHERE user_id = 10069;

EXAMPLE 3:
June's sister!
SELECT * 
FROM page_visits
WHERE user_id = 10329;

EXAMPLE 4:
First & Last Touch
SELECT user_id,
   MIN(timestamp) AS 'first_touch_at'
FROM page_visits
GROUP BY user_id;

SELECT user_id,
   MAX(timestamp) AS 'last_touch_at'
FROM page_visits
GROUP BY user_id;

EXAMPLE 5:
Last touch for June only
SELECT user_id,
   MAX(timestamp) AS 'last_touch_at'
FROM page_visits
WHERE user_id = 10069
GROUP BY user_id;