SELECT
    *
FROM
    students;

SELECT
    country,
    count(*),
    avg(age),
    max(age),
    min(age),
    sum(age)
FROM
    students
GROUP BY
    country
HAVING
    avg(age) > 21;

SELECT
    extract(year FROM dob) AS birth_year,
    count(*) AS total_stu
FROM
    students
GROUP BY
    birth_year
