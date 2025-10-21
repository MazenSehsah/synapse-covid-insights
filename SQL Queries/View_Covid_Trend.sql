CREATE VIEW vu_covid_trend
as
SELECT updated_report ,
       sum (cast (confirmed as BIGINT) /1000) as total_confirmed,
       sum (cast (deaths as BIGINT) /1000) as total_deaths,
       sum (cast (recovered as BIGINT) /1000) as total_recovered
FROM COVID_INFO
GROUP BY updated_report

SELECT * from vu_covid_trend