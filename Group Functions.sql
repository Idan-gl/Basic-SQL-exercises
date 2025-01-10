1--

select  min(last_name) from customers

2--

select AVG(monthly_payment) from packages

3--

select  max(last_name) from customers

4--

select COUNT(*) from packages

5--

select COUNT(*) from customers

6--

select count(distinct state) from customers

7--

select count(distinct speed) from packages

8--

select count(fax) from customers

9--

select count(*)- count(fax) 
from customers

10-

select max (monthly_discount) as max,
       avg (monthly_discount) as AVG,
	   min (monthly_discount) as min
from customers

11--

select state, count(Customer_Id) 
from customers
group by state  

12--

select speed, AVG(monthly_payment) 
from packages
group by speed


13--

select state, count(distinct City)
from customers
group by state
order by count(distinct City) desc

14--

select speed, max(monthly_payment) as Max
from packages
group by speed
order by max(monthly_payment) desc

15--
A--

select pack_id, AVG(monthly_discount) avg
from customers
group by pack_id

B--

Select pack_id, AVG(monthly_discount) avg
from customers
where pack_id in (13,22)
group by pack_id

C--

Select AVG(monthly_discount) 
from customers
where pack_id =18

16--

select speed,
       AVG(monthly_payment) AVG,
       MIN(monthly_payment) MIN,
       MAX(monthly_payment) MAX
from packages
group by speed

17--
A--

select pack_id, count(Customer_Id)
from customers
group by pack_id

B--

select pack_id, count(Customer_Id)
from customers
where monthly_discount > 20
group by pack_id


C--

select pack_id, count(Customer_Id)
from customers
group by pack_id
having  count(Customer_Id) > 100

18--

select state, 
       City,
	   count(*)
from  customers
group by State, City

19--
A--

select city,
       AVG(monthly_discount) 
from customers
group by City

B--

select city,
       AVG(monthly_discount) 
from customers
group by City
having AVG(monthly_discount)  > 20
order by AVG(monthly_discount) desc

20--
A--

select State,
       min(monthly_discount) 
from customers
group by state

B--

select State,
       min(monthly_discount) 
from customers
group by state
having min(monthly_discount)  > 10

21--

select count(*), speed 
from packages
group by speed
having count(*) > 8 