-- Payment Mode Performance Analysis

SELECT
    payment_mode,
    COUNT(*)                 AS orders,
    SUM(sales)               AS total_sales,
    SUM(profit)              AS total_profit,
    ROUND(AVG(sales), 2)     AS avg_sales_per_order,
    ROUND(SUM(profit) / NULLIF(SUM(sales), 0), 4) AS profit_margin
FROM staging.stg_orders
GROUP BY payment_mode
ORDER BY total_sales DESC;
