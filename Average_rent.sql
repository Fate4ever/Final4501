
(SELECT z.RegionName AS zip_code, 
        TO_CHAR(AVG(z."2023-01-31"), 'FM9,999,999.00') AS average_rent,
        (SELECT COUNT(*) FROM geodf_tree_data t WHERE t.zipcode::text = z.RegionName::text) AS tree_count,
        (SELECT COUNT(*) FROM geodf_311_data c WHERE c.incident_zip::text = z.RegionName::text) AS complaint_count
 FROM df_zillow_data z
 GROUP BY z.RegionName
 ORDER BY AVG(z."2023-01-31") ASC
 LIMIT 5)

UNION

(SELECT z.RegionName AS zip_code, 
        TO_CHAR(AVG(z."2023-01-31"), 'FM9,999,999.00') AS average_rent,
        (SELECT COUNT(*) FROM geodf_tree_data t WHERE t.zipcode::text = z.RegionName::text) AS tree_count,
        (SELECT COUNT(*) FROM geodf_311_data c WHERE c.incident_zip::text = z.RegionName::text) AS complaint_count
 FROM df_zillow_data z
 GROUP BY z.RegionName
 ORDER BY AVG(z."2023-01-31") DESC
 LIMIT 5);
 