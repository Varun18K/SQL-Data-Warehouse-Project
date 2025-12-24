
-- Silver Layer: CRM Products 
USE silver_db;

CREATE TABLE IF NOT EXISTS crm_prd_info (
    prd_id INT,
    prd_key VARCHAR(50),
    product_name VARCHAR(150),
    cost DECIMAL(12,2),
    product_line VARCHAR(50),
    start_date DATE,
    end_date DATE
);
