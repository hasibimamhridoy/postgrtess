CREATE TABLE users(
    id serial PRIMARY KEY,
    username varchar(25) NOT NULL
);

CREATE TABLE post(
    id serial PRIMARY KEY,
    title text NOT NULL,
    user_id integer REFERENCES "users"(id)
);

-- Insert data into the users table
INSERT INTO users(username)
    VALUES ('john_doe'),
('jane_smith'),
('emma_johnson'),
('michael_wilson'),
('sophia_brown'),
('william_davis'),
('olivia_taylor'),
('liam_martinez'),
('ava_anderson'),
('noah_thompson');

-- Insert data into the post table
INSERT INTO post(title, user_id)
    VALUES ('The Importance of Education', 1),
('Exploring the Wonders of Nature', 2),
('Discovering New Horizons in Science', 3),
('A Journey Through History', 4),
('Art and Creativity in Everyday Life', 5),
('Technology: Shaping the Future', 6),
('The Beauty of Diversity', 7),
('Building Strong Communities', 8),
('Exploring the World of Literature', 9),
('The Power of Compassion', 10);

SELECT
    *
FROM
    users;

SELECT
    *
FROM
    post;

--join
SELECT
    title,
    username,
    *
FROM
    post
    JOIN users ON post.user_id = "users".id;

