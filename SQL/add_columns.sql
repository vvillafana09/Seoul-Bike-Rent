ALTER TABLE seoul_bike_data_staging
ADD COLUMN time_of_day VARCHAR(255),
ADD COLUMN is_weekend BOOLEAN;