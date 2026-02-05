-- Monthly Sales & Profit Trends
-- Used for trend and seasonality analysis

SELECT
    order_month,
    SUM(sales)  AS monthly_sales,
    SUM(profit) AS monthly_profit
FROM staging.stg_orders
GROUP BY order_month
ORDER BY order_month;
