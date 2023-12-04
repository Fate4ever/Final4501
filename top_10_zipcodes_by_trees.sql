
SELECT zipcode, COUNT(*) AS tree_count
FROM geodf_tree_data
GROUP BY zipcode
ORDER BY tree_count DESC
LIMIT 10;
