-- Category Performance Analysis

SELECT
    category,
    SUM(sales)  AS total_sales,
    SUM(profit) AS total_profit,
    ROUND(SUM(profit) / NULLIF(SUM(sales), 0), 4) AS profit_margin
FROM staging.stg_orders
GROUP BY category
ORDER BY total_sales DESC;
