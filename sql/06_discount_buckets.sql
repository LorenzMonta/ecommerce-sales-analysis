-- Discount Bucket Analysis
-- Manager-friendly aggregation of discount levels

SELECT
    CASE
        WHEN discount_percent = 0 THEN '0%'
        WHEN discount_percent BETWEEN 1 AND 5 THEN '1–5%'
        WHEN discount_percent BETWEEN 6 AND 10 THEN '6–10%'
        WHEN discount_percent BETWEEN 11 AND 15 THEN '11–15%'
        ELSE '16–20%'
    END AS discount_bucket,
    COUNT(*)                 AS orders,
    SUM(sales)               AS total_sales,
    SUM(profit)              AS total_profit,
    ROUND(SUM(profit) / NULLIF(SUM(sales), 0), 4) AS profit_margin
FROM staging.stg_orders
GROUP BY discount_bucket
ORDER BY discount_bucket;
