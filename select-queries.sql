CREATE TABLE occupations(
    department_id SERIAL PRIMARY KEY,
    department_name VARCHAR(50)
);

delete from occupations WHERE department_id = 2

insert INTO occupations (department_name) 
VALUES
( 'Business Man'),
( 'Investor'),
( 'Other');

SELECT * from occupations;

-- ALTER Table occupation rename to occupations;

-- CREATE TABLE employees(
--     employ_id SERIAL PRIMARY KEY,
--     employ_name VARCHAR(50),
--     occupation INT,
--     constraint fk_constraint_occupation
--         Foreign Key (occupation) REFERENCES occupations(department_id)
-- )

select * from employees

alter table employees 
rename column occupation  to department


CREATE TABLE employees(
    employ_id SERIAL PRIMARY KEY,
    employ_name VARCHAR(50),
    department INT,
    constraint fk_constraint_occupation
        Foreign Key (occupation) REFERENCES occupations(department_id)
)

insert into employee VALUES (1, 'Nahid', 3);

alter table employees add column salary int

update employees set 
    salary = 3500000
    where employ_name = 'Nahid'

alter table employees 
    alter column salary set not null

insert into employees (employ_name, department, salary)
VALUES
('Abc', 3, 10000),
('Abcd', 4, 15000),
('Bcd', 5, 20000),
('Ebc', 6, 25000),
('Fbc', 7, 30000),
('Gbc', 8, 35000),
('Hbc', 9, 40000),
('Ibc', 3, 45000),
('AJbc', 4, 50000),
('Jbc', 5, 55000),
('Kbc', 6, 60000),
('Lbc', 7, 65000),
('Mbc', 8, 70000),
('Nbc', 9, 75000),
('AObc', 3, 80000),
('Obc', 4, 85000),
('Pbc', 5, 90000),
('Qbc', 6, 95000),
('Rbc', 6, 100000),
('Sbc', 7, 110000);

select * from employees
    where salary BETWEEN 50000 and 80000 and salary <> 55000 

-- Pagination 
select * from employees
    ORDER BY salary desc
    limit 5 OFFSET 2*5


-- to select multiple ids data
SELECT * FROM employees 
WHERE employ_id IN(2, 4, 5, 9)

-- to select multiple ids data
SELECT * FROM employees 
WHERE employ_id NOT IN(2, 4, 5, 9)

-- if contains 'bc' anywhere into employ_name
SELECT * from employees 
WHERE employ_name LIKE 'bc' 

-- if contains 'bc' only the end into employ_name
SELECT * from employees 
WHERE employ_name LIKE 'bc' 

--  find a character in a specific position
SELECT * from employees 
WHERE employ_name LIKE '__c%' 



-- ## JOIN
select employees.employ_id, employees.employ_name, employees.salary, occupations.department_name
from employees
inner join occupations on employees.department = occupations.department_id


-- Aggregate function 
select avg( salary) from employees

select  sum(salary), min(salary), max(salary), avg( salary) from employees GROUP BY department 


-- join and aggregate
SELECT o.department_name, min(e.salary), max(e.salary), sum(e.salary), count(o.department_id) as Total_Count FROM employees e  
FULL JOIN occupations o ON e.department = o.department_id
GROUP BY o.department_name


-- join and aggregate with condition
SELECT o.department_name, min(e.salary), max(e.salary), sum(e.salary), count(o.department_id) FROM employees e  
FULL JOIN occupations o ON e.department = o.department_id
GROUP BY o.department_name HAVING e.salary > 70000;