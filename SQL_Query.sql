-- Sales Trend Analysis Using Aggregations
-- Dataset: online_sales (from provided CSV structure)
SELECT
    YEAR(`Date`) AS order_year,
    MONTH(`Date`) AS order_month,
    SUM(`Total Revenue`) AS total_revenue,
    COUNT(DISTINCT `Transaction ID`) AS total_orders
FROM
    `task6`.`Online Sales Data`
GROUP BY
    order_year, order_month
ORDER BY
    order_year, order_month;

