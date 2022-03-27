select * from employees where length(first_name) > 10;

select * from employees where mod(salary, 1000) = 0;

select phone_number, substr(phone_number, 1, 3) as first3symbols from employees where length(phone_number) = 12;

select * from employees where substr(first_name, -1) = 'm' and length(first_name) > 5;

select NEXT_DAY(TRUNC(SYSDATE), 'Пятница') from dual;

select * from employees where MONTHS_BETWEEN(sysdate, hire_date ) > 150;

select replace(phone_number, '.','-') from employees;

select UPPER(first_name), LOWER(email), initcap(job_id) from employees;

select concat(first_name, salary) from employees;

select 
    hire_date,
    substr(round(hire_date, 'MONTH') , 4),
    hire_date - trunc(hire_date,'YEAR') 
from 
employees; 

select lpad(first_name,10,'$'), rpad(last_name, 15, '!') from employees;

select first_name, instr(first_name, 'a') from employees;

select '!!!HELLO!! MY FRIEND!!!!!!!!', trim(both '!' from '!!!HELLO!! MY FRIEND!!!!!!!!') from dual;

select 
    salary,
    salary * 3.1415 as rise,
    round(salary * 3.1415, 0) as rounded_rise,
    trunc((salary * 3.1415)/1000) as thousand_count
from employees; 

select hire_date, add_months(hire_date, 6), last_day(hire_date) from employees;

