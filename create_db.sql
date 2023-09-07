DROP TABLE IF EXISTS customers;
CREATe TABLE IF NOT EXISTS customers (
  customer_id INT PRIMARY KEY,
  FirstName VARCHAR(50) NOT NULL,
  LastName VARCHAR(50) NOT NULL,
  email VARCHAR(50) NOT NULL
);

DROP TABLE IF EXISTS reserved;
CREATE TABLE IF NOT EXISTS reserved (
  customer_id INT PRIMARY KEY,
  reserved_date DATE NOT NULL,
  reserved_time TIME NOT NULL,
  table_id INT NOT NULL,
  with_food BOOL NOT NULL,
  FOREIGN KEY (table_id) REFERENCES table_status (table_id),
  FOREIGN KEY (customer_id) REFERENCES customers (customer_id)
);

DROP TABLE IF EXISTS table_status;
CREATE TABLE IF NOT EXISTS table_status (
  table_id INT PRIMARY KEY,
  lastupdate_datetime DATETIME NOT NULL,
  occ_status INT NOT NULL,
  customer_id INT NOT NULL,
  order_status VARCHAR(10),
  FOREIGN KEY (customer_id) REFERENCES customers (customer_id)
);

DROP TABLE IF EXISTS food_order;
CREATE TABLE IF NOT EXISTS food_order (
  order_id INT PRIMARY KEY,
  datetime DATETIME NOT NULL,
  food_name VARCHAR(50) NOT NULL,
  price DECIMAL(7, 2) NOT NULL,
  sent_to_table INT NOT NULL,
  food_status VARCHAR(10) NOT NULL,
  FOREIGN KEY (sent_to_table) REFERENCES table_status (table_id)
);