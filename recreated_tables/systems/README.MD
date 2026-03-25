### 3.24.26 Free Notes

Example 1: Count the number of ai systems created by each org
SELECT 
    o.org_name,
    COUNT(s.system) AS system_count
FROM 
    orgs o
LEFT JOIN 
    systems s ON o.org_id = s.org_id
GROUP BY 
    o.org_name
ORDER BY 
    system_count DESC;


Example 2: Now how about only image generation ai?
SELECT 
    o.org_name,
    COUNT(s.system) AS system_count
FROM 
    orgs o
LEFT JOIN 
    systems s ON o.org_id = s.org_id
LEFT JOIN 
    problems p ON s.problem_id = p.problem_id
WHERE 
    p.domain = "Image generation"
GROUP BY 
    o.org_name
ORDER BY 
    system_count DESC;


Example 3: Add column for org tpe
SELECT 
    o.org_name,
    o.org_type,
    COUNT(s.system) AS system_count
FROM 
    orgs o
LEFT JOIN 
    systems s ON o.org_id = s.org_id
LEFT JOIN 
    problems p ON s.problem_id = p.problem_id
WHERE 
    p.domain = "Image generation"
GROUP BY 
    o.org_name
ORDER BY 
    system_count DESC;


Example 4:
Number of ai systems each yyear + max number of parameters
SELECT 
    strftime('%Y', s.publication_date) AS publication_year,
    COUNT(s.system) AS system_count,
    MAX(s.parameters) AS max_parameters
FROM 
    systems s
GROUP BY 
    publication_year
ORDER BY 
    publication_year;



Example 5:
Top 5 ai problems orgs focus on
SELECT 
    p.task,
    COUNT(DISTINCT s.org_id) AS organization_count
FROM 
    problems p
LEFT JOIN 
    systems s ON p.problem_id = s.problem_id
GROUP BY 
    p.task
ORDER BY 
    organization_count DESC
LIMIT 5;
