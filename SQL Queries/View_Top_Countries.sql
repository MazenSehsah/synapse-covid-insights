CREATE VIEW vu_top_countries
AS
SELECT top(10) country_region ,
       sum (cast (confirmed as BIGINT) /1000) as total_confirmed
FROM COVID_INFO
where country_region != 'Worldwide'
GROUP BY country_region
ORDER by total_confirmed  desc
 
SELECT * from vu_top_countries