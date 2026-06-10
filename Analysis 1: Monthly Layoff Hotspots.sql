WITH monthly_combo AS (
    	SELECT DATE_FORMAT(date, '%Y-%m') AS month,
        	    country,
        		industry,
        		SUM(total_laid_off) AS total_laid_off
   	FROM layoffs_staging2
    	GROUP BY month, country, industry
 	)
SELECT *
FROM (
    	SELECT *,
           		DENSE_RANK() OVER (PARTITION BY month ORDER BY  
                total_laid_off DESC) AS rnk
    	FROM monthly_combo
 	) t
WHERE rnk <=3;

