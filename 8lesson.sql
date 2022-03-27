select * from employees where length(first_name) = (select max(length(first_name)) from employees); --1. Выведите всю информацию о сотрудниках, с самым длинным именем.

select first_name, last_name, salary from employees where salary > (select AVG(salary) from employees); -- 2 Выведите всю информацию о сотрудниках, с зарплатой большей
--средней зарплаты всех сотрудников.
     
     
select min(sum(salary)) from locations l  
     join departments d on l.location_id = d.location_id
     join employees emp on d.department_id = emp.department_id group by city ; --Получить город/города, где сотрудники в сумме зарабатывают меньше всего.
     
select city from locations l 
    join departments d on l.location_id = d.location_id
    join employees emp on d.department_id = emp.department_id group by city having sum(salary) = (select min(sum(salary)) from locations l  
     join departments d on l.location_id = d.location_id
     join employees emp on d.department_id = emp.department_id group by city); -- Получить город/города, где сотрудники в сумме зарабатывают меньше
--всего.

select * from employees where manager_id in (select manager_id from employees where manager_id is not null and salary > 15000); -- Выведите всю информацию о сотрудниках, у которых менеджер
--получает зарплату больше 15000.

select * from departments d 
where department_id not in (select distinct department_id from employees where department_id is not null); --Выведите всю информацию о департаментах, в которых нет ни одного
--сотрудника.


select employee_id from employees where employee_id not in (select manager_id from employees where manager_id is not null); --Выведите всю информацию о сотрудниках, которые не являются
--менеджерами.

select * from employees e1 
    where (select count(*) from employees where manager_id = e1.employee_id) > 6; -- Выведите всю информацию о менеджерах, которые имеют в
--подчинении больше 6ти сотрудников.

select * from employees where department_id in (select department_id from departments where department_name = 'IT'); -- Выведите всю информацию о сотрудниках, которые работают в
--департаменте с названием IT

select * from employees 
    where manager_id in (select employee_id from employees where to_char(hire_date, 'YYYY') = '2005') 
and hire_date < to_date('01.01.2005','DD-MM-YYYY'); --Выведите всю информацию о сотрудниках, менеджеры которых
--устроились на работу в 2005ом году, но при это сами работники
--устроились на работу до 2005 года.

select * from employees e
    where manager_id in (select employee_id from employees where to_char(hire_date,'MM') = '01')   
    and (select length(job_title) from jobs where job_id = e.job_id) > 15; --Выведите всю информацию о сотрудниках, менеджеры которых
--устроились на работу в январе любого года, и длина job_title этих сотрудников больше 15ти символов.





