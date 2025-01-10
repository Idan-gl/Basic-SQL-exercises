
1--

select Customer_Id, lower(First_Name), UPPER(Last_Name)
from customers
where Customer_Id between 80 and 150
order by Customer_Id desc

2--
A--

select First_Name, Last_Name, 
       left(First_Name,1)+LEFT(Last_Name,3)+'@mymail.com' as Mail
from customers

B--

select First_Name, Last_Name, 
       left(First_Name,1)+right(Last_Name,3)+'@mymail.com' as Mail
from customers

3--

select last_name, LEN(Last_name)
from customers
where LEN(last_name)>9
order by LEN(last_name)

4--
A--

select first_name, last_name, main_phone_num, replace(main_phone_num,'515','$$$' )
from customers
where main_phone_num like '%515%'

B--

select first_name, last_name, main_phone_num, replace(main_phone_num,'515','$$$')
from customers
where main_phone_num like '515%'

5--

select first_name, 
       last_name, 
	   monthly_discount, 
	   monthly_discount*1.197 EXT, 
	   round(monthly_discount*1.197,2) RD,
	   floor(monthly_discount*1.197) FL,
	   ceiling (monthly_discount*1.197) CE
from customers

6--

select First_Name, 
       Join_Date, 
	   DATEADD(DAY,-10,Join_Date),
	   DATEADD(month,1,Join_Date),
	   DATEDIFF(day,join_date,GETDATE()) 
from customers

7--

select First_Name,
       Join_Date,
	   DATEADD(YEAR , DATEDIFF(YEAR, join_date , getdate()) , join_date)
from customers

8--

select First_Name, 
       Birth_Date, 
	   year(getdate())-year(Birth_Date) as age
from customers
where year(getdate())-year(Birth_Date) >50

9--

select * 
from customers
where MONTH(Birth_Date)= MONTH(GETDATE())
      and 
	  day(Birth_Date)= day(GETDATE())
	 
10--

select * 
from customers
where MONTH(Join_Date)= MONTH(GETDATE())
      and 
	  day(Join_Date)= day(GETDATE())
      and 
	  datediff(year,Join_Date,getdate())=5

11--

select First_Name+ ' / ' + cast(day(Join_Date)as varchar),
       Last_Name+ ' / ' +cast(monthly_discount as varchar) 
from customers

12--

select last_name,
       UPPER(state) +' '+ CAST(main_phone_num as varchar),
	   CAST(Join_Date as varchar) +' / '+ CAST(Birth_Date as varchar)
from customers

13--
A--
select first_name, last_name, birth_date,main_phone_num, pack_id,
       case when main_phone_num is null then 'N/A' else main_phone_num end main_phone_num,
	   case when secondary_phone_num is null then 'N/A' else secondary_phone_num end secondary_phone_num,
       case when fax is null then 'N/A' else fax end as fax
from customers
where pack_id = 27

B--
select first_name, last_name, birth_date,main_phone_num, pack_id,
       case when main_phone_num is null then 'N/A' else main_phone_num end main_phone_num,
	   case when secondary_phone_num is null then 'N/A' else secondary_phone_num end secondary_phone_num,
       case when fax is null then 'N/A' else fax end as fax
from customers
where YEAR(birth_date) = 1972

14--

select *,
      case when monthly_discount between 0 and 10 then 'A'
	       when monthly_discount between 11 and 20 then 'B'
		   when monthly_discount between 21 and 30 then 'C'
		   else 'D' end
from customers
order by monthly_discount desc



