select FIRST_NAME, LAST_NAME from employees;

describe hr.employees;

select * from regions;

select first_name, department_id, salary, last_name from employees;

select employee_id, email, hire_date - 7 as "One week before hire date" from employees; 

select first_name  || '(' || job_id  || ')' from employees;

select distinct first_name from employees;

describe jobs;

--select first_name, 'min = ' || MIN (salary) || ' max = ' || MAX (salary) as infoq from jobs;

select job_id, 'min = ' || min_salary || ' , ' || 'max = ' || max_salary as info, max_salary, ((max_salary * 2) - 2000) as new_salary from jobs;

select 'Peter''s dogs is very clever' from dual;

select 1000 * 365.25 * 24 * 60 as "minutes in one century" from dual;


