-- Step 1: Drop existing primary key constraint if necessary
ALTER TABLE bookings DROP PRIMARY KEY;

-- Step 2: Add a new composite primary key that includes the partition key (start_date)
ALTER TABLE bookings
ADD PRIMARY KEY (id, start_date);

-- Step 3: Partition the table by RANGE on the YEAR of start_date
ALTER TABLE bookings
PARTITION BY RANGE (YEAR(start_date)) (
    PARTITION p2019 VALUES LESS THAN (2020),
    PARTITION p2020 VALUES LESS THAN (2021),
    PARTITION p2021 VALUES LESS THAN (2022),
    PARTITION p2022 VALUES LESS THAN (2023),
    PARTITION p2023 VALUES LESS THAN (2024),
    PARTITION p2024 VALUES LESS THAN (2025),
    PARTITION pmax VALUES LESS THAN MAXVALUE
);
