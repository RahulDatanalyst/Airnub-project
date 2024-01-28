create	database airnub;
select * from airnub.airnub;
alter table airnub.airnub rename to listing_table;
alter table airnub.airnub2 rename to booking_table;
select * from listing_table;
select * from booking_table;
select count(id) from listing_table;
select name from Listing_table;
select count(listing_id) from booking_table;
select host_id from listing_table;
select distinct host_name from listing_table;
select distinct neighbourhood_group  from listing_table;
select distinct neighbourhood  from listing_table;
select distinct room_type from listing_table;
select * from listing_table where neighbourhood_group in ('Brooklyn','Manhattan');
select max(price) from booking_table;
select min(price) from booking_table;
select avg(price) from booking_table; 
select min(minimum_nights) from booking_table;
select max(minimum_nights) from booking_table;
select avg(availability_365) from booking_table;
select listing_id , availability_365 from booking_table where availability_365 >300;
select count(listing_id) from booking_table where price between 300 and 400;
select count(listing_id) from booking_table where minimum_nights <5;
select count(listing_id) from booking_table where minimum_nights >100;
select * from listing_table inner join booking_table on listing_table.id = booking_table.listing_id;
select listing_table.host_name , booking_table.price 
from listing_table inner join booking_table on listing_table.id = booking_table.listing_id;
select  listing_table.room_type,booking_table.price 
from listing_table inner join booking_table on listing_table.id = booking_table.listing_id;
select  listing_table.neighbourhood_group ,booking_table.minimum_nights 
from listing_table inner join booking_table on listing_table.id = booking_table.listing_id;
select  listing_table.neighbourhood ,booking_table.availability_365 
from listing_table inner join booking_table on listing_table.id = booking_table.listing_id;
select  listing_table.neighbourhood_group, sum(booking_table.price) Total_price 
from listing_table inner join booking_table on listing_table.id = booking_table.listing_id 
group by listing_table.neighbourhood_group;
select  listing_table.neighbourhood_group,max(booking_table.price) max_price  
from listing_table inner join booking_table on listing_table.id = booking_table.listing_id
group by listing_table.neighbourhood_group;
select  listing_table.neighbourhood_group, max(booking_table.minimum_nights) Max_night
from listing_table inner join booking_table on listing_table.id = booking_table.listing_id 
group by listing_table.neighbourhood_group;
select  listing_table.neighbourhood ,max(booking_table.reviews_per_month) max_review  
from listing_table inner join booking_table on listing_table.id = booking_table.listing_id 
group by listing_table.neighbourhood;
select  listing_table.room_type ,max(booking_table.price)max_price  
from listing_table inner join booking_table on listing_table.id = booking_table.listing_id 
group by listing_table.room_type;
select  listing_table.room_type ,avg(booking_table.number_of_reviews) Average_no_reviews
from listing_table inner join booking_table on listing_table.id = booking_table.listing_id 
group by listing_table.room_type;
select  listing_table.room_type ,avg(booking_table.price) average_price 
from listing_table inner join booking_table on listing_table.id = booking_table.listing_id
group by listing_table.room_type;
select  listing_table.room_type ,avg(booking_table.minimum_nights) average_nights 
from listing_table inner join booking_table on listing_table.id = booking_table.listing_id
group by listing_table.room_type;
select  listing_table.room_type ,avg(booking_table.price) average_price 
from listing_table inner join booking_table on listing_table.id = booking_table.listing_id  
group by listing_table.room_type having average_price <100 ;
select listing_table.neighbourhood , avg(booking_table.minimum_nights) average_nights 
from listing_table inner join booking_table on listing_table.id = booking_table.listing_id 
group by listing_table.neighbourhood having average_nights > 5;
select * from listing_table where id in (select id from booking_table where Price  > 200);
select * from booking_table where listing_id in ( select listing_id from listing_table where host_id = 314941);
select distinct l1.id , l1.host_id from listing_table l1, listing_table l2
where  l1.host_id = l2.host_id and l1.id  <> l2.id  order by host_id;
select * from listing_table where name like '%cozy%'







