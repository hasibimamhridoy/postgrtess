-- Active: 1714420201192@@127.0.0.1@5432@ph

--My practice
-- find methods
SELECT * from "user";

INSERT INTO "user" VALUES ( 4, 'p', 'c', 38, 'a@gmail.com' )

DELETE FROM "user" WHERE person_id = 2;

UPDATE "user" SET person_id = 2 WHERE person_id = 4;

--My practice end

-- from video
SELECT * FROM "user";

INSERT INTO --Insert Methods
    "user"
values (3, 'hello', 'test');

UPDATE "user" --Update Methods
SET
    email = 'hasibimam@gmail.com',
    first_name = 'hasib',
    last_name = 'imam'
WHERE
    person_id = 2;

DELETE from "user" --Delete Methods
WHERE
    person_id = 2;