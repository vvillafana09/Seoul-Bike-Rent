
-- Min date: 2017-12-01
-- Max date: 2018-11-30
-- Days span 1 year of 2017
SELECT DISTINCT date
FROM seoul_bike_data_staging
ORDER BY date;

SELECT DISTINCT season
FROM seoul_bike_data_staging;

SELECT DISTINCT holiday
FROM seoul_bike_data_staging;

SELECT MIN(temperature), MAX(temperature)
FROM seoul_bike_data_staging;

SELECT MIN(humidity), MAX(humidity)
FROM seoul_bike_data_staging;

SELECT MIN(wind_speed), MAX(wind_speed)
FROM seoul_bike_data_staging;

SELECT MIN(visibility), MAX(visibility)
FROM seoul_bike_data_staging;

SELECT MIN(dew_point_temperature), MAX(dew_point_temperature)
FROM seoul_bike_data_staging;

SELECT MIN(rainfall), MAX(rainfall)
FROM seoul_bike_data_staging;

SELECT MIN(snowfall), MAX(snowfall)
FROM seoul_bike_data_staging;

SELECT *
FROM seoul_bike_data_staging;