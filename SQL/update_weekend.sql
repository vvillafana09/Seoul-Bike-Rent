UPDATE seoul_bike_data_staging
SET is_weekend = EXTRACT(DOW FROM date) IN (0,6);