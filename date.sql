SHOW timezone;

SELECT
    now();

-- get the current date
SELECT
    CURRENT_TIME;

--get the current time
SELECT
    CURRENT_DATE;

--get the current time
SELECT
    now()::date;

SELECT
    now()::time;

SELECT
    to_char(now(), 'dd/mm/yyyy');

SELECT
    CURRENT_DATE - INTERVAL '1 year';

SELECT
    CURRENT_DATE - INTERVAL '1 month';

SELECT
    CURRENT_DATE - INTERVAL '1 day';

SELECT
    CURRENT_DATE - INTERVAL '1 minute';

SELECT
    CURRENT_DATE - INTERVAL '1 year 2 month';

SELECT
    age(CURRENT_DATE, '1999-03-29');

SELECT
    extract(year FROM '2024-01-29'::date);

SELECT
    extract(day FROM '2024-01-29'::date);

SELECT
    extract(MONTH FROM '2024-01-29'::date);

