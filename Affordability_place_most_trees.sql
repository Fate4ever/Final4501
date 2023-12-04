
SELECT t.zipcode, TO_CHAR(AVG(z."2023-08-31"), 'FM9,999,999.00') AS average_rent
FROM (
    SELECT zipcode, COUNT(*) AS tree_count
    FROM geodf_tree_data
    GROUP BY zipcode
    ORDER BY tree_count DESC
    LIMIT 10
) AS t
JOIN df_zillow_data z ON t.zipcode::text = z.RegionName::text
GROUP BY t.zipcode, t.tree_count
ORDER BY t.tree_count DESC;
