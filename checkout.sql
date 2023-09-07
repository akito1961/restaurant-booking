SELECT
  sent_to_table AS table_id,
  COUNT(*) AS total_order,
  SUM(price) AS total_price
FROM food_order
GROUP BY sent_to_table;