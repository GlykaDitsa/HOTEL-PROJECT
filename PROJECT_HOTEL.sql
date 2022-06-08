

with  hotels as (
sELECT*FROM dbo.['2018$']
union
SELECT*FROM dbo.['2019$']
union
SELECT*FROM dbo.['2020$'])

---1query
---select 
---arrival_date_year,
---hotel,
---round(sum((stays_in_week_nights+stays_in_weekend_nights)*adr),2) as revenue 
---from hotels
---group by arrival_date_year,hotel


select*from hotels
left join dbo.market_segment$
on hotels.market_segment=market_segment$.market_segment
left join dbo.meal_cost$
on meal_cost$.meal=hotels.meal
