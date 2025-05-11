/*
	Cleaning Steps
	1. Check for duplicates and remove any
	2. Standardize data and fix errors
	3. Find null values
	4. Remove any columns and rows that are not necessary
*/
	-- STEP 1
SELECT *
FROM seoul_bike_data_staging;

SELECT *
FROM ( SELECT *,
		ROW_NUMBER() OVER (PARTITION BY date, rented_bike_count, hour) AS row_num
		FROM seoul_bike_data_staging
) AS duplicates
WHERE 
	row_num > 1;


SELECT *
FROM ( SELECT *,
		ROW_NUMBER() OVER (PARTITION BY date, rented_bike_count, hour, temperature, humidity, wind_speed, visibility, dew_point_temperature, solar_radiation, 
						  	rainfall, snowfall, season, holiday, functioning_day) AS row_num
		FROM seoul_bike_data_staging
) AS duplicates
WHERE 
	row_num > 1;
	
	-- STEP 2
-- SELECT TO_DATE(date, 'DD/MM/YYYY')
-- FROM seoul_bike_data_staging;

-- UPDATE seoul_bike_data_staging
-- SET date = TO_DATE(date, 'DD/MM/YYYY');

-- ALTER TABLE seoul_bike_data_staging ALTER COLUMN date TYPE DATE
-- USING to_date(date, 'YYYY-MM-DD');

	-- STEP 3
SELECT *
FROM seoul_bike_data_staging;

SELECT date
FROM seoul_bike_data_staging
WHERE date IS NULL;

SELECT rented_bike_count
FROM seoul_bike_data_staging
WHERE rented_bike_count IS NULL;

SELECT hour
FROM seoul_bike_data_staging
WHERE hour IS NULL;
