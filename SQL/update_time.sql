UPDATE seoul_bike_data_staging
SET time_of_day = CASE 
		WHEN (hour >= 5 AND hour < 12) THEN 'morning' 
		WHEN (hour >= 12 AND hour < 18) THEN 'afternoon' 
		ELSE 'night' 
END; 