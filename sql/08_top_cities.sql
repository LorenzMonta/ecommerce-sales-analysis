-- Top Cities by Sales
-- Identifies major contributors without geographic concentration risk

SELECT
    city,
    SUM(sales)  AS total_sales,
    SUM(profit) AS total_profit,
    ROUND(SUM(profit) / NULLIF(SUM(sales), 0), 4) AS profit_margin
FROM staging.stg_orders
GROUP BY city
ORDER BY total_sales DESC
LIMIT 10;
