--select avg(length(upper(last_name))) from employees group by department_id;
select * from employees;

select 
    department_id,
    min(salary),
    max(salary),
    min(hire_date), 
    max(hire_date), 
    count(*) 
from
    employees 
group by 
    department_id
order by count(*) desc;

select substr(first_name,1,1), count(*) from employees group by substr(first_name,1,1) having count(*) > 6;

select department_id, salary, count(*) from employees group by department_id, salary;

select to_char(hire_date, 'DAY'), count(*) from employees group by to_char(hire_date, 'DAY');

select department_id, count(*) from employees group by department_id having count(*) > 20 and sum(salary) > 30000;

select region_id,sum(length(country_name)) from countries group by region_id having sum(length(country_name)) > 50;

select job_id, round(avg(salary)) from employees group by job_id;

select department_id, count(job_id) from employees group by department_id having count(job_id) > 1;

select department_id, job_id, max(salary), min(salary) from employees group by department_id, job_id having avg(salary) > 10000 order by department_id, job_id;

select manager_id from employees where commission_pct is null group by manager_id having avg(salary) between 6000 and 9000 ;

select round(avg(max(salary)), -3 ) from employees group by department_id;

