select manager_id manager, null job, null dep_id, sum(salary) from employees group by manager_id
union all 
select null, job_id, null, sum(salary) from employees group by job_id
union all 
select null,null, department_id, sum(salary) from employees group by department_id; -- Выведите в одном репорте информацию о суммах з/п групп, объединённых по id менеджера, по job_id, по id департамента. Репорт должен содержать 4 столбца: id менеджера, job_id, id департамента, суммированная з/п.

select department_id from employees where manager_id = 100 
minus 
select department_id from employees where department_id in (145,201);--Выведитеidтехдепартаментов,гдеработаетменеджерNo100ине работают менеджеры No 145, 201.

select first_name,last_name,salary from employees where first_name like lower('%s%') 
intersect
select first_name,last_name, salary from employees where first_name like '_a%' order by salary desc; --Используя SET операторы и не используя логические операторы, выведите информацию о id локаций, почтовом коде и городе для локаций, которые находятся в Италии или Германии. А также для локаций, почтовый код которых содержит цифру «9».

select location_id, postal_code, city from locations l join countries c on l.country_id = c.country_id
where country_name = 'Italy'
union 
select location_id, postal_code, city from locations l join countries c on l.country_id = c.country_id
where country_name = 'Germany'
union
select location_id, postal_code, city from locations l join countries c on l.country_id = c.country_id
where postal_code like '%9%'; -- Используя SET операторы и не используя логические операторы, выведите информацию о id локаций, почтовом коде и городе для локаций, которые находятся в Италии или Германии. А также для локаций, почтовый код которых содержит цифру «9».

select c.country_id, c.country_name, c.region_id from countries c join regions r on c.region_id = r.region_id where length(country_name) > 8
union
select c.country_id, c.country_name, c.region_id from countries c join regions r on c.region_id = r.region_id  where region_name != 'Europe' order by country_name desc;

