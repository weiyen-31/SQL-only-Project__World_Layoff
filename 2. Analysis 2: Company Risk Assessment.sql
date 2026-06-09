WITH grouped AS (
    	SELECT industry,
        		  stage,
        		  SUM(total_laid_off) AS sum_total_laid_off,
        		  SUM(funds_raised_millions) AS sum_fund_raised,
        		  AVG(percentage_laid_off) AS avg_pct_laid_off
     	FROM layoffs_staging2
    	GROUP BY industry, stage
)
SELECT *,
      	  (avg_pct_laid_off * 0.6 
+ (sum_total_laid_off / NULLIF(sum_fund_raised,0)) * 0.4) AS   risk_score,
       	RANK() OVER(ORDER BY 
            (avg_pct_laid_off * 0.6 
            + (sum_total_laid_off / NULLIF(sum_fund_raised,0)) * 0.4) DESC
       	) AS rnk
FROM grouped
ORDER BY risk_score DESC;
