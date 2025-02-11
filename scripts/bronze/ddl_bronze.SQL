-- Start creating bronze layer tables

IF OBJECT_ID ('bronze.french_nuclear_reactors_list', 'U') IS NOT NULL
    DROP TABLE bronze.french_nuclear_reactors_list;

CREATE TABLE bronze.french_nuclear_reactors_list(
    plant VARCHAR(255),
    reactor VARCHAR(255),
    lat FLOAT,
    lon FLOAT,
    model VARCHAR(100),
    rated_power INT,
    grid_connection DATE,
    cooling VARCHAR(50),
    cooling_source VARCHAR(50),
    PRIMARY KEY (plant, reactor) -- Composite primary key
);


IF OBJECT_ID ('bronze.french_nuclear_reactors_availability', 'U') IS NOT NULL
    DROP TABLE bronze.french_nuclear_reactors_availability;

CREATE TABLE bronze.french_nuclear_reactors_availability(
    date_time DATETIME NOT NULL,
    belleville_1 INT,
    belleville_2 INT,
    blayais_1 INT,
    blayais_2 INT,
    blayais_3 INT,
    blayais_4 INT,
    bugey_2 INT,
    bugey_3 INT,
    bugey_4 INT,
    bugey_5 INT,
    cattenom_1 INT,
    cattenom_2 INT,
    cattenom_3 INT,
    cattenom_4 INT,
    chinon_1 INT,
    chinon_2 INT,
    chinon_3 INT,
    chinon_4 INT,
    chooz_1 INT,
    chooz_2 INT,
    civaux_1 INT,
    civaux_2 INT,
    cruas_1 INT,
    cruas_2 INT,
    cruas_3 INT,
    cruas_4 INT,
    dampierre_1 INT,
    dampierre_2 INT,
    dampierre_3 INT,
    dampierre_4 INT,
    fessenheim_1 INT,
    fessenheim_2 INT,
    flamanville_1 INT,
    flamanville_2 INT,
    golfech_1 INT,
    golfech_2 INT,
    gravelines_1 INT,
    gravelines_2 INT,
    gravelines_3 INT,
    gravelines_4 INT,
    gravelines_5 INT,
    gravelines_6 INT,
    nogent_1 INT,
    nogent_2 INT,
    paluel_1 INT,
    paluel_2 INT,
    paluel_3 INT,
    paluel_4 INT,
    penly_1 INT,
    penly_2 INT,
    st_alban_1 INT,
    st_alban_2 INT,
    st_laurent_1 INT,
    st_laurent_2 INT,
    tricastin_1 INT,
    tricastin_2 INT,
    tricastin_3 INT,
    tricastin_4 INT,
    PRIMARY KEY (date_time)  -- Ensuring each timestamp is unique
);


IF OBJECT_ID ('bronze.french_nuclear_reactors_availability_full', 'U') IS NOT NULL
    DROP TABLE bronze.french_nuclear_reactors_availability_full;

CREATE TABLE bronze.french_nuclear_reactors_availability_full (
       date_time DATETIME NOT NULL,
    belleville_1_power_available INT,
    belleville_1_derating INT,
    belleville_1_unavailability_type VARCHAR(255),
    belleville_1_unavailability_cause VARCHAR(255),
    belleville_1_additional_info TEXT,
    belleville_2_power_available INT,
    belleville_2_derating INT,
    belleville_2_unavailability_type VARCHAR(255),
    belleville_2_unavailability_cause VARCHAR(255),
    belleville_2_additional_info TEXT,
    blayais_1_power_available INT,
    blayais_1_derating INT,
    blayais_1_unavailability_type VARCHAR(255),
    blayais_1_unavailability_cause VARCHAR(255),
    blayais_1_additional_info TEXT,
    blayais_2_power_available INT,
    blayais_2_derating INT,
    blayais_2_unavailability_type VARCHAR(255),
    blayais_2_unavailability_cause VARCHAR(255),
    blayais_2_additional_info TEXT,
    blayais_3_power_available INT,
    blayais_3_derating INT,
    blayais_3_unavailability_type VARCHAR(255),
    blayais_3_unavailability_cause VARCHAR(255),
    blayais_3_additional_info TEXT,
    blayais_4_power_available INT,
    blayais_4_derating INT,
    blayais_4_unavailability_type VARCHAR(255),
    blayais_4_unavailability_cause VARCHAR(255),
    blayais_4_additional_info TEXT,
    bugey_2_power_available INT,
    bugey_2_derating INT,
    bugey_2_unavailability_type VARCHAR(255),
    bugey_2_unavailability_cause VARCHAR(255),
    bugey_2_additional_info TEXT,
    bugey_3_power_available INT,
    bugey_3_derating INT,
    bugey_3_unavailability_type VARCHAR(255),
    bugey_3_unavailability_cause VARCHAR(255),
    bugey_3_additional_info TEXT,
    bugey_4_power_available INT,
    bugey_4_derating INT,
    bugey_4_unavailability_type VARCHAR(255),
    bugey_4_unavailability_cause VARCHAR(255),
    bugey_4_additional_info TEXT,
    bugey_5_power_available INT,
    bugey_5_derating INT,
    bugey_5_unavailability_type VARCHAR(255),
    bugey_5_unavailability_cause VARCHAR(255),
    bugey_5_additional_info TEXT,
    cattenom_1_power_available INT,
    cattenom_1_derating INT,
    cattenom_1_unavailability_type VARCHAR(255),
    cattenom_1_unavailability_cause VARCHAR(255),
    cattenom_1_additional_info TEXT,
    cattenom_2_power_available INT,
    cattenom_2_derating INT,
    cattenom_2_unavailability_type VARCHAR(255),
    cattenom_2_unavailability_cause VARCHAR(255),
    cattenom_2_additional_info TEXT,
    cattenom_3_power_available INT,
    cattenom_3_derating INT,
    cattenom_3_unavailability_type VARCHAR(255),
    cattenom_3_unavailability_cause VARCHAR(255),
    cattenom_3_additional_info TEXT,
    cattenom_4_power_available INT,
    cattenom_4_derating INT,
    cattenom_4_unavailability_type VARCHAR(255),
    cattenom_4_unavailability_cause VARCHAR(255),
    cattenom_4_additional_info TEXT,
    chinon_1_power_available INT,
    chinon_1_derating INT,
    chinon_1_unavailability_type VARCHAR(255),
    chinon_1_unavailability_cause VARCHAR(255),
    chinon_1_additional_info TEXT,
    chinon_2_power_available INT,
    chinon_2_derating INT,
    chinon_2_unavailability_type VARCHAR(255),
    chinon_2_unavailability_cause VARCHAR(255),
    chinon_2_additional_info TEXT,
    chinon_3_power_available INT,
    chinon_3_derating INT,
    chinon_3_unavailability_type VARCHAR(255),
    chinon_3_unavailability_cause VARCHAR(255),
    chinon_3_additional_info TEXT,
    chinon_4_power_available INT,
    chinon_4_derating INT,
    chinon_4_unavailability_type VARCHAR(255),
    chinon_4_unavailability_cause VARCHAR(255),
    chinon_4_additional_info TEXT,
    golfech_1_power_available INT,
    golfech_1_derating INT,
    golfech_1_unavailability_type VARCHAR(255),
    golfech_1_unavailability_cause VARCHAR(255),
    golfech_1_additional_info TEXT,
    golfech_2_power_available INT,
    golfech_2_derating INT,
    golfech_2_unavailability_type VARCHAR(255),
    golfech_2_unavailability_cause VARCHAR(255),
    golfech_2_additional_info TEXT,
    gravelines_1_power_available INT,
    gravelines_1_derating INT,
    gravelines_1_unavailability_type VARCHAR(255),
    gravelines_1_unavailability_cause VARCHAR(255),
    gravelines_1_additional_info TEXT,
    gravelines_2_power_available INT,
    gravelines_2_derating INT,
    gravelines_2_unavailability_type VARCHAR(255),
    gravelines_2_unavailability_cause VARCHAR(255),
    gravelines_2_additional_info TEXT,
    gravelines_3_power_available INT,
    gravelines_3_derating INT,
    gravelines_3_unavailability_type VARCHAR(255),
    gravelines_3_unavailability_cause VARCHAR(255),
    gravelines_3_additional_info TEXT,
    gravelines_4_power_available INT,
    gravelines_4_derating INT,
    gravelines_4_unavailability_type VARCHAR(255),
    gravelines_4_unavailability_cause VARCHAR(255),
    gravelines_4_additional_info TEXT,
    gravelines_5_power_available INT,
    gravelines_5_derating INT,
    gravelines_5_unavailability_type VARCHAR(255),
    gravelines_5_unavailability_cause VARCHAR(255),
    gravelines_5_additional_info TEXT,
    gravelines_6_power_available INT,
    gravelines_6_derating INT,
    gravelines_6_unavailability_type VARCHAR(255),
    gravelines_6_unavailability_cause VARCHAR(255),
    gravelines_6_additional_info TEXT,
    nogent_1_power_available INT,
    nogent_1_derating INT,
    nogent_1_unavailability_type VARCHAR(255),
    nogent_1_unavailability_cause VARCHAR(255),
    nogent_1_additional_info TEXT,
    nogent_2_power_available INT,
    nogent_2_derating INT,
    nogent_2_unavailability_type VARCHAR(255),
    nogent_2_unavailability_cause VARCHAR(255),
    nogent_2_additional_info TEXT,
    paluel_1_power_available INT,
    paluel_1_derating INT,
    paluel_1_unavailability_type VARCHAR(255),
    paluel_1_unavailability_cause VARCHAR(255),
    paluel_1_additional_info TEXT,
    paluel_2_power_available INT,
    paluel_2_derating INT,
    paluel_2_unavailability_type VARCHAR(255),
    paluel_2_unavailability_cause VARCHAR(255),
    paluel_2_additional_info TEXT,
    tricastin_1_power_available INT,
    tricastin_1_derating INT,
    tricastin_1_unavailability_type VARCHAR(255),
    tricastin_1_unavailability_cause VARCHAR(255),
    tricastin_1_additional_info TEXT,
    tricastin_2_power_available INT,
    tricastin_2_derating INT,
    tricastin_2_unavailability_type VARCHAR(255),
    tricastin_2_unavailability_cause VARCHAR(255),
    tricastin_2_additional_info TEXT,
    tricastin_3_power_available INT,
    tricastin_3_derating INT,
    tricastin_3_unavailability_type VARCHAR(255),
    tricastin_3_unavailability_cause VARCHAR(255),
    tricastin_3_additional_info TEXT,
    tricastin_4_power_available INT,
    tricastin_4_derating INT,
    tricastin_4_unavailability_type VARCHAR(255),
    tricastin_4_unavailability_cause VARCHAR(255),
    tricastin_4_additional_info TEXT
);



EXEC bronze.load_bronze

--- TABLE 01 INSERT DATA IN TO DATABASE BULK

CREATE OR ALTER PROCEDURE bronze.load_bronze AS
BEGIN
 DECLARE @start_time DATETIME, @end_time DATETIME, @batch_start_time DATETIME, @batch_end_time DATETIME;
 BEGIN TRY 
 SET @batch_start_time = GETDATE();
PRINT '===================================================================';
PRINT 'Loading Bronze Layer';
PRINT '===================================================================';

PRINT '-------------------------------------------------------------------';
PRINT 'Loading french_nuclear_reactors_availability Table';
PRINT '-------------------------------------------------------------------';

SET @start_time = GETDATE();
PRINT '>> Truncating Table: bronze.french_nuclear_reactors_availability';
TRUNCATE TABLE bronze.french_nuclear_reactors_availability;
PRINT '>> Inserting Data Into Table:french_nuclear_reactors_availability';

BULK INSERT bronze.french_nuclear_reactors_availability
FROM 'C:\French_Nuclear\txt\french_nuclear_reactors_availability.csv'
WITH (
     FIRSTROW = 2,
	 FIELDTERMINATOR = ',',
	 TABLOCK
);
 SET @end_time = GETDATE();
 PRINT '>> Load Duration: ' + CAST(DATEDIFF(second, @start_time, @end_time) AS NVARCHAR) + 'seconds';

--- TABLE 02 INSERT DATA IN TO DATABASE BULK

PRINT '===================================================================';
PRINT 'Loading Bronze Layer';
PRINT '===================================================================';

PRINT '-------------------------------------------------------------------';
PRINT 'Loading french_nuclear_reactors_availability_full Table';
PRINT '-------------------------------------------------------------------';

SET @start_time = GETDATE();
PRINT '>> Truncating Table: french_nuclear_reactors_availability_full';
TRUNCATE TABLE bronze.french_nuclear_reactors_availability_full;
PRINT '>> Inserting Data Into Table:french_nuclear_reactors_availability_full';

BULK INSERT bronze.french_nuclear_reactors_availability_full
FROM 'C:\French_Nuclear\txt\french_nuclear_reactors_availability_full.csv'
WITH (
     FIRSTROW = 2,
	 FIELDTERMINATOR = ',',
	 TABLOCK
);
SET @end_time = GETDATE();
 PRINT '>> Load Duration: ' + CAST(DATEDIFF(second, @start_time, @end_time) AS NVARCHAR) + 'seconds';


--- TABLE 03 INSERT DATA IN TO DATABASE BULK

PRINT '===================================================================';
PRINT 'Loading Bronze Layer';
PRINT '===================================================================';

PRINT '-------------------------------------------------------------------';
PRINT 'Loading french_nuclear_reactors_list Table';
PRINT '-------------------------------------------------------------------';

SET @start_time = GETDATE();
PRINT '>> Truncating Table: french_nuclear_reactors_list';
TRUNCATE TABLE bronze.french_nuclear_reactors_list;
PRINT '>> Inserting Data Into Table:french_nuclear_reactors_list';


BULK INSERT bronze.french_nuclear_reactors_list
FROM 'C:\French_Nuclear\txt\french_nuclear_reactors_list.csv'
WITH (
     FIRSTROW = 2,
	 FIELDTERMINATOR = ',',
	 TABLOCK
);
SET @end_time = GETDATE();
 PRINT '>> Load Duration: ' + CAST(DATEDIFF(second, @start_time, @end_time) AS NVARCHAR) + 'seconds';
 PRINT '>> ------------------------';

 SET @batch_end_time = GETDATE();
 PRINT '==========================================================';
 PRINT 'Loading Bronze Layer is Completed';
 PRINT '   - Total Load Duration: ' + CAST(DATEDIFF(SECOND, @batch_start_time, @batch_end_time) AS NVARCHAR) + 'seconds';
 PRINT '==========================================================';
   END TRY
   BEGIN CATCH 
       PRINT '======================================================';
	   PRINT 'ERROR OCCURED DURING LOADING BRONZE LAYER';
	   PRINT 'Error Message' + ERROR_MESSAGE();
	   PRINT 'Error Message' + CAST (ERROR_NUMBER() AS NVARCHAR);
	   PRINT 'Error Message' + CAST (ERROR_STATE() AS NVARCHAR);
	   PRINT '======================================================';

   END CATCH
END
