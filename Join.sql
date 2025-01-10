
1--
A--
select first_name, last_name, cst.pack_id, speed
from customers cst join packages pac
on pac.pack_id = cst.pack_id

B--

select first_name, last_name, cst.pack_id, speed
from customers cst join packages pac
on cst.pack_id = pac.pack_id
where cst.pack_id in (22,27)
order by cst.last_name 

2--

A--
select pack_id, speed, monthly_payment, sector_name
from packages pac join sectors sec
on pac.sector_id = sec.sector_id

B--

select pac.pack_id, speed, monthly_payment, sector_name, First_Name
from packages pac join sectors sec 
on   pac.sector_id = sec.sector_id
                  join customers cst
on pac.pack_id = cst.pack_id

C--
select pac.pack_id, speed, monthly_payment, sector_name, First_Name 
from packages pac join sectors sec
on pac.sector_id = sec.sector_id
                 join customers cst
on pac.pack_id = cst.pack_id 
where sector_name = 'Business'

3--

select Last_Name, First_Name, Join_Date, pac.pack_id, speed, sector_name
from customers cst join packages pac
on cst.pack_id = pac.pack_id
                   join sectors sec
on pac.sector_id = sec.sector_id
where sector_name = 'private' and year(Join_Date)= '2006'

4--

select pack_id, speed, monthly_payment, grade_name
from pack_grades pgr join packages pac
on pac.monthly_payment between pgr.min_price
                         and   pgr.max_price

5--
A--

select First_Name, Last_Name, speed, monthly_payment, pac.pack_id
from customers cst join packages pac
on   cst.pack_id = pac.pack_id

B--

select First_Name, Last_Name, speed, monthly_payment, pac.pack_id 
from customers cst left outer join packages pac
on   cst.pack_id = pac.pack_id

C--

select First_Name, Last_Name, speed, monthly_payment, pac.pack_id 
from customers cst right outer join packages pac
on   cst.pack_id = pac.pack_id

D--

select First_Name, Last_Name, speed, monthly_payment, pac.pack_id 
from customers cst full outer join packages pac
on   cst.pack_id = pac.pack_id

6--

SELECT cust1.last_name , cust1.first_name , cust1.pack_id
FROM customers cust1 JOIN customers cust2
ON cust2.last_name = 'Taylor' AND cust2.first_name = 'Amado'
AND      cust2.pack_id = cust1.pack_id

7--

select *
from customers cst1 join customers cst2
on cst1.Customer_Id = '103'
and cst1.monthly_discount < cst2.monthly_discount

8--

select pac1.pack_id, pac1.speed
from packages pac1 join packages pac2
on pac1.pack_id=  '10'
and pac1.speed = pac2.speed



