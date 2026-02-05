-- Discount Level Analysis
-- Evaluates impact of discount percentage on sales and profit

SELECT
    discount_percent,
    COUNT(*)                 AS orders,
    SUM(sales)               AS total_sales,
    SUM(profit)              AS total_profit,
    ROUND(AVG(sales), 2)     AS avg_sales_per_order,
    ROUND(SUM(profit) / NULLIF(SUM(sales), 0), 4) AS profit_margin
FROM staging.stg_orders
GROUP BY discount_percent
ORDER BY discount_percent;
