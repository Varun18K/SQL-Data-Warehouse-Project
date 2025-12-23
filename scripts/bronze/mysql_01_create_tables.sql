
-- Bronze Layer: Table DDLs

USE bronze_db;

-- CRM tables
CREATE TABLE IF NOT EXISTS crm_cust_info (
    cst_id VARCHAR(50),
    cst_key VARCHAR(50),
    cst_firstname VARCHAR(100),
    cst_lastname VARCHAR(100),
    cst_marital_status VARCHAR(50),
    cst_gndr VARCHAR(10),
    cst_create_date VARCHAR(50)
);

CREATE TABLE IF NOT EXISTS crm_prd_info (
    prd_id VARCHAR(50),
    prd_key VARCHAR(50),
    prd_nm VARCHAR(100),
    prd_cost VARCHAR(50),
    prd_line VARCHAR(50),
    prd_start_dt VARCHAR(50),
    prd_end_dt VARCHAR(50)
);

CREATE TABLE IF NOT EXISTS crm_sales_details (
    sls_ord_num VARCHAR(50),
    sls_prd_key VARCHAR(50),
    sls_cust_id VARCHAR(50),
    sls_order_dt VARCHAR(50),
    sls_ship_dt VARCHAR(50),
    sls_due_dt VARCHAR(50),
    sls_sales VARCHAR(50),
    sls_quantity VARCHAR(50),
    sls_price VARCHAR(50)
);

-- ERP tables (parsed where possible)
CREATE TABLE IF NOT EXISTS erp_loc_a101 (
    CID VARCHAR(50),
    CNTRY VARCHAR(50)
);

CREATE TABLE IF NOT EXISTS erp_px_cat_g1v2 (
    ID VARCHAR(50),
    CAT VARCHAR(50),
    SUBCAT VARCHAR(50),
    MAINTENANCE VARCHAR(50)
);

-- ERP RAW landing table (for messy file)
CREATE TABLE IF NOT EXISTS erp_cust_az12_raw (
    raw_record TEXT
);
