CREATE DATABASE gen_z_social_media;
use gen_z_social_media;
show tables;
#Display all records from the table.
select* from genz_social_media_usage_1m;
# select the data from table by limit.
select* from genz_social_media_usage_1m
limit 100;
#Display only the age, gender, and country columns.
select age, gender, country
from genz_social_media_usage_1m;
#Find all users from a specific country.
select* 
from genz_social_media_usage_1m
where country = 'india';
#Display users whose age is greater than 25.
select* 
from genz_social_media_usage_1m
where age > 25;
#Find users whose daily usage is more than 5 hours.
select* 
from genz_social_media_usage_1m
where daily_usage_hours > 5;
#Display users who use Instagram as their primary platform.
select*
from genz_social_media_usage_1m
where primary_platform = 'Instagram';
#Find users with a mental health score below 5.
select*
from genz_social_media_usage_1m
where mental_health_score < 5;
#Show users who use social media at night.
select*
from genz_social_media_usage_1m
where addiction_level = 'high';
#
select* 
from genz_social_media_usage_1m
where night_usage = 1;
select* 
from genz_social_media_usage_1m
limit 10000;
#Display unique countries.
select distinct country 
from genz_social_media_usage_1m;
# count,min and max value of the users in table
select count(*) as total_users
from genz_social_media_usage_1m;
select min(age) as minimum_age
from genz_social_media_usage_1m;
select max(age) as maximum_age
from genz_social_media_usage_1m;
#like functions use
select *
from genz_social_media_usage_1m
where country like 'i%';
select*
from genz_social_media_usage_1m
where country like '%a';
#Count male and female users separately.
select gender, count(*) as total_count
from genz_social_media_usage_1m
group by gender;
#Count the total number of users by purpose.
select purpose, count(*) as total_purpose
from genz_social_media_usage_1m
group by purpose; 
#Count the total number of users by country.
select country ,count(*) as total_users
from genz_social_media_usage_1m
group by country;
#Find the average_health_score.
select avg(mental_health_score) as avg_mental_health
from genz_social_media_usage_1m;
#Find the average daily usage hours.
select avg(daily_usage_hours) as avg_users_hr
from genz_social_media_usage_1m;
#Count users for each primary platform.
select primary_platform, count(*) as total_primary_platform
from genz_social_media_usage_1m
group by primary_platform;
#Find the average session time by platform.
select primary_platform, 
avg(avg_session_minutes) as avg_session_minutes
from genz_social_media_usage_1m
group by primary_platform;
#Find the average addiction level count by country.
select country,
count(addiction_level) as total_addiction_level
from genz_social_media_usage_1m
group by country;
#Find the addiction level count by category.
select addiction_level,count(*) as total_addiction_level
from genz_social_media_usage_1m
group by addiction_level;
#Display the top 10 oldest users.
select*
from genz_social_media_usage_1m
order by age desc
limit 10;
#Display the youngest 20 users.
select*
from genz_social_media_usage_1m
order by age asc
limit 20;
#Find users using more than 3 platforms.
select*
from genz_social_media_usage_1m
where num_platforms_used >3;
#Count users according to their purpose.
select purpose, count(*) as total_purpose
from genz_social_media_usage_1m
group by purpose;
#Find the country with the highest average daily usage.
select country, 
avg(daily_usage_hours) as avg_daily_usage_hours
from genz_social_media_usage_1m
group by country
order by avg_daily_usage_hours desc
limit 1;
#Find the platform with the highest average session time.
select primary_platform,
avg(avg_session_minutes) as avg_session_minutes
from genz_social_media_usage_1m
group by primary_platform
order by avg_session_minutes desc
limit 1;
# this code give the ans is 69.49
select avg_session_minutes
from genz_social_media_usage_1m
order by avg_session_minutes desc
limit 1;
select*
from genz_social_media_usage_1m
where avg_session_minutes> 69.49;
#Find users with mental health scores above the average.
select*
from genz_social_media_usage_1m
order by mental_health_score DESC;
select*
from genz_social_media_usage_1m
where mental_health_score >  (
     select avg(mental_health_score)
     from genz_social_media_usage_1m
);
select*
from genz_social_media_usage_1m
where avg_session_minutes >  (
	   select avg(avg_session_minutes)
       from genz_social_media_usage_1m
);
#Find total daily usage hours.
select country,
count(daily_usage_hours) as total_daily_usage_hours
from genz_social_media_usage_1m
group by country;
#Find maximum session time.
select max(avg_session_minutes) as maximum_avg_session_minutes
from genz_social_media_usage_1m;
#Find minimum session time.
select min(avg_session_minutes) as min_avg_session_minutes
from genz_social_media_usage_1m;
#Find average age.
select avg(age) as avg_age
from genz_social_media_usage_1m;
#Find average session minutes by country.
select country,
count(avg_session_minutes) as total_avg_session_minutes
from genz_social_media_usage_1m
group by country;
#Find total users by gender.
select count(gender) as total_gender
from genz_social_media_usage_1m;
#Count users for each primary platform.
select count(primary_platform) as total_primary_platform
from genz_social_media_usage_1m;
#Find average mental health score by addiction level.
select addiction_level,
avg(mental_health_score) as avg_mental_health_score
from genz_social_media_usage_1m
group by addiction_level;
#Find maximum daily usage by country.
select country,
max(daily_usage_hours) as maximum_daily_usage_hours
from genz_social_media_usage_1m
group by country
limit 1;
#Find minimum daily usage by country.
select country,
min(daily_usage_hours) as minimum_daily_usage_hours
from genz_social_media_usage_1m
group by country
limit 1;
#Group users by gender
select gender,
count(gender) as total_gender
from genz_social_media_usage_1m
group by gender;
#Group users by country.
select country,
count(country) as total_countries
from genz_social_media_usage_1m
group by country;
#Group users by primary platform.
select primary_platform,
count(primary_platform) as total_primary_platform
from genz_social_media_usage_1m
group by primary_platform;
#Group users by purpose.
select purpose,
count(purpose) as total_purpose
from genz_social_media_usage_1m
group by purpose;
#Count users by addiction level.
select addiction_level,
count(addiction_level) as total_addiction_level
from genz_social_media_usage_1m
group by addiction_level;
#Find average daily usage for each platform.
select primary_platform,
avg(daily_usage_hours) as avg_daily_usage_hours
from genz_social_media_usage_1m
group by primary_platform;
#Find average session time for each purpose.
select purpose,
avg(avg_session_minutes) as total_avg_session_minutes
from genz_social_media_usage_1m
group by purpose;
#Find average mental health score by gender.
select gender,
avg(mental_health_score) as avg_mental_health_score
from genz_social_media_usage_1m
group by gender;
#Count users using night mode by country.
select country,
count(night_usage) as total_night_usage
from genz_social_media_usage_1m
group by country;
#Find average age by platform.
select primary_platform,
avg(age) as avg_age
from genz_social_media_usage_1m
group by primary_platform;
#Show countries having more than 500 users.
select country,
count(*) as total_users
from genz_social_media_usage_1m
group by country
having count(*)>500;
#Show countries having less than 500 users.
select country,
count(*) as total_users
from genz_social_media_usage_1m
group by country
having count(*)<500;
#Show platforms whose average usage exceeds 4 hours.
select primary_platform,
avg(daily_usage_hours) as avg_daily_usage_hours
from genz_social_media_usage_1m
group by primary_platform
having avg(daily_usage_hours)> 4;
#Show purposes having more than 1000 users.
select purpose,
count(*) as total_users
from genz_social_media_usage_1m
group by purpose
having count(*)> 1000;
#Show countries where average mental health score is below 5.
select country,
avg(mental_health_score) as avg_mental_health_score
from genz_social_media_usage_1m
group by country
having avg(mental_health_score)<5;
#Show countries where average mental health score is above 5.
select country,
avg(mental_health_score) as avg_mental_health_score
from genz_social_media_usage_1m
group by country
having avg(mental_health_score)>5;
#Show addiction levels with more than 100 users.
select addiction_level,
count(*) as total_addiction_level
from genz_social_media_usage_1m
group by addiction_level
having count(*) >100;
#Sort users by age.
select age
from genz_social_media_usage_1m
order by age asc;
#Sort users by daily usage hours (highest first).
select daily_usage_hours
from genz_social_media_usage_1m
order by daily_usage_hours desc;
#Sort users by session minutes.
