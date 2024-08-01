
-- 1
CREATE TABLE my_table (
    a INT,
    b INT
);
INSERT INTO my_table (a, b) VALUES 
    (NULL, NULL),
    (1, 2),
    (NULL, 1),
    (3, NULL),
    (3, 5);
-- Ответ на 1 задачу
select * from public.my_table;
SELECT 
    COUNT(*) AS c1, 
    COUNT(1) AS c2, 
    COUNT(a) AS c3, 
    COUNT('a') AS c4, 
    COUNT(DISTINCT a) AS c5
FROM my_table;

-- 2
CREATE TABLE client_balance (
    client INT,
    amount DECIMAL(10, 2),
    balance_date DATE
);
INSERT INTO client_balance (client, amount, balance_date) VALUES 
    (1, 100.00, '2022-10-14'),
    (1, 800.00, '2022-11-04'),
    (1, 700.00, '2022-12-23'),
    (2, 600.00, '2022-09-18'),
    (2, 300.00, '2023-12-07');
-- Ответ на 2 задачу
SELECT 
    client, 
    amount, 
    balance_date AS str_date,
    COALESCE(LEAD(balance_date) OVER (PARTITION BY client ORDER BY balance_date),
        '9999-12-31'
    ) AS end_date
FROM client_balance;
-- 3
CREATE TABLE Client (
    client_id INT PRIMARY KEY,
    name VARCHAR(50)
);
CREATE TABLE Order_ (
    order_id INT PRIMARY KEY,
    client_id INT REFERENCES Client(client_id)
);
INSERT INTO Client (client_id, name) VALUES 
    (324534523, 'Client A'),
    (236745556, 'Client B'),
    (853456781, 'Client C');
INSERT INTO Order_ (order_id, client_id) VALUES 
    (1, 324534523),
    (2, 236745556);
-- Ответ на 3 задачу
SELECT c.client_id
FROM Client c
LEFT JOIN Order_ o ON c.client_id = o.client_id
WHERE o.client_id IS NULL;

-- 4
CREATE TABLE population (
    id INT PRIMARY KEY,
    city VARCHAR(50),
    gender CHAR(1)
);
INSERT INTO population (id, city, gender) VALUES 
    (1, 'Москва', 'M'),
    (2, 'Москва', 'F'),
    (3, 'Санкт-Петербург', 'M'),
    (4, 'Новосибирск', 'F');
-- Ответ на 4 задачу
INSERT INTO population (id, city, gender) VALUES 
    (7, 'Москва', 'F')
SELECT 
    ROUND(
        (SUM(CASE WHEN city = 'Москва' AND gender = 'M' THEN 1 ELSE 0 END)::numeric) / COUNT(*), 
        4
    ) AS ratio
FROM population;

-- 5
CREATE TABLE Employee (
    employee_id INT PRIMARY KEY,
    department_nm VARCHAR(50),
    salary DECIMAL(10, 2),
    gender CHAR(1)
);
INSERT INTO Employee (employee_id, department_nm, salary, gender) VALUES 
    (1, 'HR', 5000.00, 'F'),
    (2, 'HR', 6000.00, 'M'),
    (3, 'HR', 7000.00, 'F'),
    (4, 'HR', 4000.00, 'M'),
    (5, 'IT', 8000.00, 'F'),
    (6, 'IT', 9000.00, 'M'),
    (7, 'IT', 7000.00, 'F'),
    (8, 'IT', 9500.00, 'M');
-- Ответ на 5 задачу
WITH RankedSalaries AS (
    SELECT 
        employee_id, 
        department_nm, 
        salary, 
        gender,
        DENSE_RANK() OVER (PARTITION BY department_nm, gender ORDER BY salary DESC) AS salary_rank
    FROM Employee
)
SELECT department_nm, gender, employee_id
FROM RankedSalaries
WHERE salary_rank = 2;

