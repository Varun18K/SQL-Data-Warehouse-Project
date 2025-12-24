-- SELECT COUNT(*) FROM bronze_db.erp_cust_az12_raw;

-- SELECT COUNT(*)
-- FROM bronze_db.erp_cust_az12_raw
-- WHERE raw_record IS NULL OR raw_record = '';

-- SELECT COUNT(*)
-- FROM bronze_db.erp_cust_az12_raw
-- WHERE (LENGTH(raw_record) - LENGTH(REPLACE(raw_record, ',', ''))) < 2;

-- SELECT COUNT(*)
-- FROM bronze_db.erp_cust_az12_raw
-- WHERE (LENGTH(raw_record) - LENGTH(REPLACE(raw_record, ',', ''))) > 2;


