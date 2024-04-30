-- Active: 1714420201192@@127.0.0.1@5432@ph
CREATE TABLE students(
    student_id serial PRIMARY KEY,
    first_name varchar(50) NOT NULL,
    last_name varchar(50),
    age int,
    grade char(2),
    course varchar(50),
    email varchar(100),
    dob date,
    blood_group varchar(5),
    country varchar(50)
);

INSERT INTO students(first_name, last_name, age, grade, course, email, dob, blood_group, country)
    VALUES ('John', 'Doe', 20, 'A', 'Mathematics', 'john.doe@example.com', '2004-03-15', 'O+', 'USA'),
('Jane', 'Smith', 21, 'B', 'Physics', NULL, '2003-06-28', 'AB-', 'Canada'),
('Alice', 'Johnson', 19, 'C', 'Biology', 'alice.johnson@example.com', '2005-01-10', 'A+', 'UK'),
('Bob', 'Williams', 22, 'A', 'Chemistry', 'bob.williams@example.com', '2002-09-20', 'B-', 'Australia'),
('Emily', 'Brown', 20, 'B', 'Computer Science', 'emily.brown@example.com', '2004-11-05', 'O-', 'New Zealand'),
('Michael', 'Jones', 21, 'A', 'History', 'michael.jones@example.com', '2003-04-18', 'AB+', 'Germany'),
('Samantha', 'Martinez', 19, 'C', 'English', 'samantha.martinez@example.com', '2005-07-23', 'A-', 'France'),
('David', 'Garcia', 22, 'B', 'Geography', 'david.garcia@example.com', '2002-12-30', 'B+', 'Spain'),
('Sophia', 'Lopez', 20, 'A', 'Art', 'sophia.lopez@example.com', '2004-08-14', 'O-', 'Italy'),
('William', 'Hernandez', 21, 'C', 'Economics', 'william.hernandez@example.com', '2003-02-07', 'AB-', 'Japan'),
('Ella', 'Taylor', 20, 'A', 'Psychology', NULL, '2004-02-12', 'B+', 'USA'),
('Liam', 'Clark', 21, 'B', 'Sociology', 'liam.clark@example.com', '2003-05-29', 'A-', 'Canada'),
('Olivia', 'Lewis', 19, 'C', 'Political Science', 'olivia.lewis@example.com', '2005-10-08', 'AB+', 'UK'),
('Noah', 'Moore', 22, 'A', 'Anthropology', 'noah.moore@example.com', '2002-08-17', 'O-', 'Australia'),
('Ava', 'Hill', 20, 'B', 'Linguistics', 'ava.hill@example.com', '2004-12-25', 'AB-', 'New Zealand'),
('Mason', 'Scott', 21, 'A', 'Philosophy', 'mason.scott@example.com', '2003-03-30', 'B+', 'Germany'),
('Charlotte', 'Ward', 19, 'C', 'Criminal Justice', 'charlotte.ward@example.com', '2005-06-14', 'O+', 'France'),
('Ethan', 'Adams', 22, 'B', 'Education', 'ethan.adams@example.com', '2002-11-27', 'A+', 'Spain'),
('Amelia', 'Rivera', 20, 'A', 'Social Work', 'amelia.rivera@example.com', '2004-07-03', 'B-', 'Italy'),
('James', 'Baker', 21, 'C', 'Public Health', 'james.baker@example.com', '2003-01-18', 'AB-', 'Japan');

;

SELECT
    *
FROM
    "students";

--specific fields
SELECT
    age
FROM
    "students";

--Sort by -- ORDER BY
SELECT
    *
FROM
    "students"
ORDER BY
    first_name ASC;

--filtering by unique value -- DISTINCT
SELECT DISTINCT
    blood_group
FROM
    students;

-- filter by specific fields
SELECT
    *
FROM
    students
WHERE
    country = 'USA'
    AND student_id = 1;

SELECT
    *
FROM
    students
WHERE
    age > 20;

--Some functions scaler
-- uppercase the column value
SELECT
    UPPER(first_name)
FROM
    students;

-- lowercase the column value
SELECT
    LOWER(first_name)
FROM
    students;

SELECT
    concat(first_name, ' ', last_name)
FROM
    students;

--Some functions end scaler
--aggregate function
SELECT
    avg(age)
FROM
    students;

SELECT
    max(age)
FROM
    students;

SELECT
    min(age)
FROM
    students;

SELECT
    sum(age)
FROM
    students;

SELECT
    count(age)
FROM
    students;

--nested sceler and aggregate functions
SELECT
    max(length(first_name))
FROM
    students;

--aggregate function end
--hanlde null values
SELECT
    *
FROM
    students
WHERE
    email IS NULL;

SELECT
    *
FROM
    students
WHERE
    email IS NOT NULL;

SELECT
    *
FROM
    students;

SELECT
    COALESCE(email, 'N/A'),
    country
FROM
    students;

--easy syntext for multiple conditions
-- here problem is or country or contry create redundancy
SELECT
    *
FROM
    students
WHERE
    country = 'USA'
    OR country = 'Canada'
    OR country = 'UK';

-- solved the issue useing in
SELECT
    *
FROM
    students
WHERE
    country IN ('USA', 'Canada', 'UK');

--useing in
SELECT
    *
FROM
    students
WHERE
    country NOT IN ('USA', 'Canada', 'UK');

--useing beetween
SELECT
    *
FROM
    students
WHERE
    dob BETWEEN '2002-01-01' AND '2003-01-01';

--useing gte lessthen alternative between
SELECT
    *
FROM
    students
WHERE
    dob > '2002-01-01'
    AND dob < '2003-01-01'
ORDER BY
    dob;

--useing like
-- --userscore, % , like = case sansative
--sesh hobe am diye samne ja kisu thakte pare
SELECT
    *
FROM
    students
WHERE
    first_name LIKE '%am';

--suru hobe J diye seshe ja kisu thakte pare
SELECT
    *
FROM
    students
WHERE
    first_name LIKE 'J%';

--underscore means jekonokisu thakte pare
SELECT
    *
FROM
    students
WHERE
    first_name LIKE '__a%';

--ilike case insative
SELECT
    *
FROM
    students
WHERE
    first_name ILIKE 'a%';

--limit and ofset(skip)
SELECT
    *
FROM
    students
LIMIT 8 OFFSET 2
