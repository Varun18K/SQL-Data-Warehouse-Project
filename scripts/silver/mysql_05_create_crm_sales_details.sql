-- Silver Layer: CRM Sales 
USE silver_db;

CREATE TABLE IF NOT EXISTS crm_sales_details (
    order_number VARCHAR(50),
    prd_key VARCHAR(50),
    cst_id INT,
    order_date DATE,
    ship_date DATE,
    due_date DATE,
    sales_amount DECIMAL(14,2),
    quantity INT,
    price DECIMAL(14,2)
);
