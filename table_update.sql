UPDATE table_status
SET
  lastupdate_datetime = CURRENT_TIMESTAMP,
  occ_status = "Free",
  customer_id = NULL,
  order_status = NULL
WHERE
  table_id = 1;