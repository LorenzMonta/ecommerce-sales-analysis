-- Sub-Category Performance Analysis
-- Identifies profitability differences within categories

SELECT
    category,
    sub_category,
    SUM(sales)  AS total_sales,
    SUM(profit) AS total_profit,
    ROUND(SUM(profit) / NULLIF(SUM(sales), 0), 4) AS profit_margin
FROM staging.stg_orders
GROUP BY category, sub_category
ORDER BY total_sales DESC;
