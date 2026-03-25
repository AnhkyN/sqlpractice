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
