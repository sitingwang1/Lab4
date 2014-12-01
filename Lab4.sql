--SITING WANG
--Lab4

--Q1
select city
from agents
where aid in (select aid
	      from orders
	      where cid in (select cid
			    from customers
			    where name = 'Tiptop')
)
order by city ASC

--Q2
select pid
from products
where pid in (select pid
	      from orders
	      where aid in (select aid 
	                    from orders
	                    where cid in (select cid
	                    from customers
	                    where city = 'Kyoto'))
)
order by pid ASC
	                    
--Q3
select cid, name
from customers
where cid not in (select cid
		  from orderS
		  where aid in (select aid
				from agents
				where aid='a04'))
order by cid ASC
					
--Q4
select cid, name
from customers
where cid in (select cid
	      from orders
	      where pid ='p01')
	      and cid in (select cid
			  from orders
			  where pid ='p07')
order by cid ASC
			  
--Q5
select pid
from products
where pid in (select pid 
	      from orders
	      where cid in (select cid
			    from orders
			    where aid in (select aid
					   from agents
					   where aid='a04')
					   ))
order by pid ASC
					   
--Q6
select name, discount
from customers
where cid in (select cid
	      from orders
	      where aid in (select aid
	                    from agents
	                    where city in ('Dallas','Newark')))
order by name ASC
	                    
--Q7
select*
from customers
where discount in(select discount
		   from customers
		   where city in ('Dallas','Kyoto'))
order by cid asc		   

