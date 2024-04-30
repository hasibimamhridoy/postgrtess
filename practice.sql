-- Active: 1714420201192@@127.0.0.1@5432@ph
CREATE TABLE employees(
    employee_id serial PRIMARY KEY,
    employee_name varchar(50),
    department_id int REFERENCES departments(department_id),
    salary DECIMAL(10, 2),
    hire_date date
);

-- Creating the departments table
CREATE TABLE departments(
    department_id serial PRIMARY KEY,
    department_name varchar(50)
);

INSERT INTO departments(department_name)
    VALUES ('HR'),
('Marketing'),
('Finance'),
('IT'),
('Sales'),
('Engineering'),
('Customer Support'),
('Administration'),
('Research'),
('Quality Assurance');

INSERT INTO employees(employee_name, department_id, salary, hire_date)
    VALUES ('John Doe', 1, 60000.00, '2022-01-10'),
('Jane Smith', 2, 75000.50, '2021-05-22'),
('Bob Johnson', 3, 80000.75, '2020-11-15'),
('Alice Williams', 4, 90000.25, '2019-08-03'),
('David Lee', 5, 65000.50, '2020-03-18'),
('Sara Brown', 6, 70000.00, '2021-09-28'),
('Mike Miller', 7, 55000.75, '2022-02-05'),
('Emily Davis', 8, 95000.00, '2018-12-12'),
('Chris Wilson', 9, 72000.50, '2020-06-30'),
('Amy White', 10, 68000.25, '2021-11-09'),
('John Johnson', 1, 62000.00, '2022-01-15'),
('Jessica Thompson', 2, 78000.50, '2021-06-05'),
('Michael Harris', 3, 85000.75, '2020-11-25'),
('Emma Martinez', 4, 92000.25, '2019-09-15'),
('James Taylor', 5, 67000.50, '2020-04-08'),
('Sophia Anderson', 6, 72000.00, '2021-10-10'),
('William Jackson', 7, 56000.75, '2022-02-10'),
('Olivia Nelson', 8, 97000.00, '2018-12-20'),
('Daniel White', 9, 73000.50, '2020-07-05'),
('Ava Wilson', 10, 69000.25, '2021-11-15'),
('Matthew Brown', 1, 63000.00, '2022-01-20'),
('Emily Garcia', 2, 76000.50, '2021-06-15'),
('Christopher Allen', 3, 86000.75, '2020-12-05'),
('Madison Hall', 4, 93000.25, '2019-09-25'),
('Andrew Cook', 5, 68000.50, '2020-04-18'),
('Abigail Torres', 6, 73000.00, '2021-10-20'),
('Ethan Murphy', 7, 57000.75, '2022-02-15'),
('Ella King', 8, 98000.00, '2018-12-28'),
('Nathan Rivera', 9, 74000.50, '2020-07-15'),
('Mia Roberts', 10, 70000.25, '2021-11-20');

--employees
SELECT
    *
FROM
    employees;

SELECT
    *
FROM
    departments;

--Task : 1
-- Inner join to retrieve employee and department information
SELECT
    *
FROM
    departments
    INNER JOIN employees USING (department_id);

--Task : 1 End
-------------------------------
--Task : 2
-- Show department name with avg salary
SELECT
    department_name,
    round(avg(salary)) AS salary
FROM
    departments
    INNER JOIN employees USING (department_id)
GROUP BY
    department_name;

--Task : 2 End
-------------------------------
--Task : 3
-- Count employees in each department
SELECT
    employee_name,
    count(*) AS total
FROM
    departments
    INNER JOIN employees USING (department_id)
GROUP BY
    employee_name;

--Task : 3 End
-------------------------------
--Task : 4
-- Find the department name with the highest average salary
SELECT
    department_name,
    round(avg(salary)) AS highest_salary
FROM
    departments
    INNER JOIN employees USING (department_id)
GROUP BY
    department_name
ORDER BY
    highest_salary DESC
LIMIT 1;

--Task : 4 End
