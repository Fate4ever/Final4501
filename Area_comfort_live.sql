
SELECT incident_zip,
COUNT(*) AS complaint_count
FROM geodf_311_data
WHERE created_date BETWEEN '2022-10-01' AND '2023-09-30'
GROUP BY incident_zip
ORDER BY complaint_count DESC;
