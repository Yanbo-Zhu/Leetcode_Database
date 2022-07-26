-- Corret Answer 
select a.firstName, a.lastName, b.city, b.state
from Person a
LEFT OUTER JOIN  Address b
on  a.personId = b.personId    


-- Wrong Answer
-- 因为我们想 There is no address in the address table for the personId = 1 so we return null in their city and state.
select a.firstName, a.lastName, b.city, b.state
from Person a, Address b
where   a.personId = b.personId    
