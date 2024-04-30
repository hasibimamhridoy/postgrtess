-- Active: 1714420201192@@127.0.0.1@5432@ph
SELECT * FROM "user";
-- Table query
ALTER Table "user" --add column usering alter
ADD COLUMN email VARCHAR(25) DEFAULT 'default@gmail.com' NOT NULL;

ALTER TABLE "user" -- delete column
DROP COLUMN email
ALTER Table "user" -- rename the COLUMN name
RENAME COLUMN age TO "user_age";

ALTER TABLE "user" --change type
ALTER COLUMN first_name TYPE VARCHAR(75);

ALTER TABLE "user" --remove not null
ALTER COLUMN user_age
DROP NOT NULL;

ALTER TABLE "user" --set const
ALTER COLUMN user_age
set NOT NULL;

--My Practice

--add unique
ALTER Table "user"
add constraint unique_user_user_age UNIQUE (user_age);

--add primary key
ALTER Table "user" add constraint pk_user_email PRIMARY KEY (email);

--truncate -- delete all the data in the user table but stuctures not changed
TRUNCATE TABLE "user";