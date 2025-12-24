
-- USE silver_db;
DROP TABLE IF EXISTS erp_cust_az12;
CREATE TABLE erp_cust_az12 (
    cst_id VARCHAR(50),
    birth_date DATE,
    gender VARCHAR(10)
);


DESCRIBE erp_cust_az12;