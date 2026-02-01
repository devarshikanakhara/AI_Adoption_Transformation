create database AIAdoptionDB;

use AIAdoptionDB;

select * from AI_Adoption;

--Question1
select top 5 industry,round(avg(adoption_rate),2) as avg_adoption_rate
from AI_Adoption
group by industry 
order by avg_adoption_rate desc;

--Question2
select distinct country
from AI_Adoption
where daily_active_users > 10000;

--Question3
select ai_tool, count(distinct industry) as industry_count
from AI_Adoption
group by ai_tool
having count(distinct industry) > 3;

--Question4
select age_group, avg(daily_active_users) as avg_daily_users
from AI_Adoption
group by age_group;

--Question5
select top 1 company_size,round(avg(adoption_rate),2) as low_adoption_rate
from AI_Adoption
group by company_size
order by avg(adoption_rate);

--Question6
select top 5 country,ai_tool,round(avg(adoption_rate),2) as adp_rate
from AI_Adoption
group by country,ai_tool
order by avg(adoption_rate) desc;

--Question7
select year,sum(daily_active_users) as daily_users
from AI_Adoption
group by year
order by year;

--Question8
select top 5 industry,avg(adoption_rate) as ad_rate
from AI_Adoption
group by industry
having avg(adoption_rate)>(select avg(adoption_rate) from AI_Adoption)
order by ad_rate desc;

--Question9
select country,min(adoption_rate) as min_rate,year
from AI_Adoption
group by country,year
having min(adoption_rate)<0.2
order by country,year; 
