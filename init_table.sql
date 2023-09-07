INSERT INTO table_status
VALUES
(1, CURRENT_TIMESTAMP, "Free", NULL, NULL),
(2, CURRENT_TIMESTAMP, "Free", NULL, NULL),
(3, CURRENT_TIMESTAMP, "Reserved", 1, "get order"),
(4, CURRENT_TIMESTAMP, "Free", NULL, NULL),
(5, CURRENT_TIMESTAMP, "Reserved", 2, "in queue");