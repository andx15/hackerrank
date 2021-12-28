-- SQL (Basic) Skills Certification Test

-- 1. Employees from HR division with over 5k bonus during the last quarter 

select 
    ei.employee_id,
    ei.name
from employee_information ei
    inner join last_quarter_bonus lq
    on (ei.employee_id = lq.employee_id)
where lq.bonus >= 5000 and division = 'HR';

-- 2. Match country codes with customer information

select 
    c.customer_id,
    c.name,
    '+' || cc.country_code || c.phone_number -- en mysql concat('+', cc.country_code, c.phone_number)
from customers c
    left outer join country_codes cc
    on (c.country = cc.country)
order by c.customer_id asc; 
