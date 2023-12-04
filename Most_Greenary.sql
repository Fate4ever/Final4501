
SELECT z.zipcode, COUNT(t.tree_id) AS tree_count
FROM geodf_tree_data t
JOIN geodf_zipcode_data z ON ST_Contains(z.geometry, t.geometry)
GROUP BY z.zipcode
ORDER BY tree_count DESC
LIMIT 10;
