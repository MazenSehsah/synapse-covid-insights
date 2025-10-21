CREATE TABLE COVID_INFO 
(
    id INT,
    updated_report DATE,
    confirmed INT,
    deaths INT,
    recovered INT,
    latitude FLOAT,
    longitude FLOAT,
    country_region NVARCHAR (100),
    admin_region_1 NVARCHAR (100)
)
WITH
(
     DISTRIBUTION = ROUND_ROBIN, 
     CLUSTERED COLUMNSTORE INDEX
)

INSERT INTO COVID_INFO
SELECT 
    id,
    CAST (updated AS DATE) AS updated_report,
    confirmed,
    deaths,
    recovered,
    latitude,
    longitude,
    country_region,
    admin_region_1
from raw_data   


SELECT * FROM COVID_INFO