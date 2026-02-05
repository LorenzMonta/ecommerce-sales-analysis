-- KPI Overview
-- High-level business performance metrics

SELECT
    COUNT(DISTINCT order_id)                      AS total_orders,
    SUM(sales)                                    AS total_sales,
    SUM(profit)                                   AS total_profit,
    ROUND(AVG(sales), 2)                          AS avg_order_value,
    ROUND(SUM(profit) / NULLIF(SUM(sales), 0), 4) AS profit_margin
FROM staging.stg_orders;
