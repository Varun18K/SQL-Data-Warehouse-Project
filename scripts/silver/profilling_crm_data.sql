-- profiling Bronze data

-- SELECT COUNT(*) FROM bronze_db.crm_cust_info;

-- SELECT COUNT(*) FROM bronze_db.crm_cust_info WHERE cst_id IS NULL;

-- SELECT COUNT(*) - COUNT(DISTINCT cst_id) AS duplicate_cst_id
-- FROM bronze_db.crm_cust_info;

-- SELECT COUNT(*) 
-- FROM bronze_db.crm_cust_info 
-- WHERE cst_key IS NULL;

-- SELECT COUNT(*)
-- FROM bronze_db.crm_cust_info
-- WHERE cst_firstname IS NULL OR cst_lastname IS NULL;

-- SELECT COUNT(*)
-- FROM bronze_db.crm_cust_info
-- WHERE cst_gndr IS NULL;

-- SELECT COUNT(*)
-- FROM bronze_db.crm_cust_info
-- WHERE cst_gndr NOT IN ('M','F');

-- SELECT COUNT(*)
-- FROM bronze_db.crm_cust_info
-- WHERE cst_marital_status IS NULL;

-- SELECT COUNT(*)
-- FROM bronze_db.crm_cust_info
-- WHERE cst_create_date IS NULL;

-- SELECT COUNT(*)
-- FROM bronze_db.crm_cust_info
-- WHERE STR_TO_DATE(cst_create_date, '%Y-%m-%d') IS NULL
--   AND cst_create_date IS NOT NULL;




