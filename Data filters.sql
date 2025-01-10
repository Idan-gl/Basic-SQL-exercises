
1--
select First_Name,
       Last_Name,
	   pack_id
from customers
where Last_Name = 'king'

2--
select *
from packages
where speed = '5mbps'

3- 

select First_Name,
       Last_Name,
	   pack_id,
	   monthly_discount
from customers
where monthly_discount<30
order by monthly_discount desc

4--

select *,
       YEAR(Join_Date)
from customers
where YEAR(Join_Date) < 2007
order by Join_Date desc


5--


select Customer_Id,
       First_Name,
	   State,
	   city,
	   pack_id
from customers
where pack_id in (7,14,28,21)
order by pack_id desc

6--

select Customer_Id,
       First_Name,
	   State,
	   city,
	   pack_id
from customers
where pack_id not in (3,10,27)
order by pack_id desc

7--

select Last_Name,
       main_phone_num,
	   monthly_discount,
	   pack_id,
	   Customer_Id
from customers
where Customer_Id in (703,560,314) 
order by Customer_Id desc

8--

select first_name,
       monthly_discount
from customers 
where First_Name like '%e'

9---

select Last_Name,
       pack_id
from customers
where Last_Name like '_d%'

10---

select *
from customers
where last_name like '%L%' or last_name like '%J%' or last_name LIKE '%H%'
order by monthly_discount desc

11--

select *
from customers
where first_name not like '%a%'
order by pack_id

12,

select *
from customers
where pack_id is null

13---

select First_Name + ' ' +Last_Name as Full_Name,
       monthly_discount
from customers
where monthly_discount not between 20 and 30
order by First_Name + ' ' +Last_Name 

14---

select First_Name + ' ' +Last_Name as Full_Name,
       main_phone_num + '/' + Street,
	   monthly_discount DC
from customers
where monthly_discount  between 11 and 27
ORDER BY monthly_discount DESC

15---

select *
from customers
where state = 'New York' and monthly_discount between 30 and 40 
      or pack_id not in(30,19,8) and year(Join_Date)<2007 
ORDER BY pack_id, monthly_discount

16---

select Last_Name, pack_id, Birth_Date
from customers
where Birth_Date between '2007-12-12' and '2010-4-17'
order by Birth_Date

17--- 

select *
from packages
where year(strt_date) < 2007

18----

select *
from packages
where sector_id = 1

19--- 

select *
from packages
where speed = '5Mbps' or speed ='10Mbps'

20--- 

select *
from customers
where city = 'orlando'


21--
A--
select *
from customers
where pack_id = 9 or pack_id = 18

B--
select *
from customers
where pack_id in (9,18)

22---

select * 
from customers 
where secondary_phone_num is null

23--

select * 
from customers 
where monthly_discount is null
