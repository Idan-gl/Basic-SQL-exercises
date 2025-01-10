1--

select first_name, last_name, state, city
from customers
where State = (select State from customers where Customer_Id = 170)

2--
select * from packages

select pack_id, speed, sector_id
from packages
where sector_id = (select sector_id from packages where pack_id = 10)

3--

select first_name, last_name, join_date
from customers
where Join_Date > (select Join_Date from customers where Customer_Id = 540)


4--

select first_name, last_name, join_date
from customers
where YEAR(Join_Date) = (select YEAR(Join_Date) from customers where Customer_Id = 370)
and month(Join_Date) = (select month(Join_Date) from customers where Customer_Id = 370)

5--

select first_name, state, City, pack_id
from customers
where pack_id in (select pack_id from packages where speed = '5Mbps')

6--

select pack_id, speed, strt_date
from packages
where year(strt_date) = (select YEAR(strt_date) from packages where pack_id = 7)

7--

select first_name, monthly_discount, pack_id, main_phone_num, secondary_phone_num
from customers
where pack_id in (select pack_id from packages where sector_id =
                   (select sector_id from sectors where sector_name = 'Business'))

8--

select first_name, monthly_discount, pack_id
from customers
where pack_id in (select pack_id 
                  from packages 
				  where monthly_payment > (select AVG(monthly_payment) 
				                           from packages))

9--

select First_Name, State, city, Birth_Date, monthly_discount 
from customers
where Birth_Date = (select Birth_Date from customers where Customer_Id = 179)
and   monthly_discount > (select monthly_discount from customers where Customer_Id = 107)

10--

select *
from packages
where speed = (select speed from packages where pack_id = 30)
and monthly_payment > (select monthly_payment from packages where pack_id = 7)

11--

select pack_id, speed, monthly_payment 
from packages
where monthly_payment > ALL(select monthly_payment from packages where speed = '5Mbps')

12--

select pack_id, speed, monthly_payment 
from packages
where monthly_payment > ANY(select monthly_payment from packages where speed = '5Mbps')

13--

select pack_id, speed,monthly_payment 
from packages
where monthly_payment < ANY(select monthly_payment from packages where speed = '5Mbps')

14--

select First_Name, monthly_discount, pack_id
from customers
where monthly_discount <(select AVG(monthly_discount) from customers)
and pack_id = (select pack_id from customers where First_Name = 'Kevin')



















