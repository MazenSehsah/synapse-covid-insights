CREATE VIEW vu_covid_summary
as
SELECT
       sum (cast (confirmed as BIGINT) /1000) as total_confirmed,
       sum (cast (deaths as BIGINT) /1000) as total_deaths,
       sum (cast (recovered as BIGINT) /1000) as total_recovered,
       sum (cast (confirmed as BIGINT) /1000) - ( sum (cast (deaths as BIGINT) /1000) + sum (cast (recovered as BIGINT) /1000)) as total_active
FROM COVID_INFO
 
SELECT * from vu_covid_summary