create database airbnb;
show databases;
use airbnb;

-- Question 1. How much are the top Airbnb Earners making? 
-- Question 2. Which area is more popular to host an Airbnb?
-- Question 3. What type of room is more popular?

select * from listings;

-- cleaning price column
Select *,Price,CAST(REPLACE(Price,'$','') AS UNSIGNED) AS price_clean
from listings;

-- Most Occuring neighborhoods and the profit from that area
Select neighbourhood,count(*) as occurances, avg(price) as area_price
from listings
group by neighbourhood 
order by occurances DESC;

-- Average price in each neighborhood
Select neighbourhood, avg(price) as area_price
from listings
group by neighbourhood
order by area_price DESC;


-- Room type
Select room_type,count(*) as occurances, avg(price) as area_price
from listings
group by room_type
order by area_price DESC;

-- Neighborhoods with the most reviews 
select neighbourhood,count(number_of_reviews)as reviews
from listings
group by neighbourhood
order by reviews DESC;

-- Top hosts and amount made
SELECT host_id,host_name, SUM(price) AS total_amount_made
FROM listings
GROUP BY host_id,host_name
ORDER BY total_amount_made DESC LIMIT 5;