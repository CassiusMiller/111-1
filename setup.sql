-- - This is a comment in SQL

-- In SQL there are two types of "statements":
-- 1. Commands: These are statements that when executed effect some change on the database.
-- 2. Queries: These are statements that when executed return data for read-only purposes.

-- Our basic set up should consist of at least one command to create table:


CREATE TABLE user(
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  first_name VARCHAR(45),
  last_name VARCHAR(45),
  hobbies TEXT,
  is_online BOOLEAN DEFAULT 0
);


-- CRUD(S)
-- 1. Create

INSERT INTO user (
  first_name,
  last_name,
  hobbies
)VALUES (
"Cassius",
"Miller",
"non"
);

INSERT INTO user (
  first_name,
  last_name,
  hobbies
)VALUES (
"Jane",
"doe",
"playing tennis and video games"
);

INSERT INTO user (
  first_name,
  last_name,
  hobbies
)VALUES (
"Tom",
"Jones",
"ski and go bird watching"
);

INSERT INTO user (
  first_name,
  last_name,
  hobbies
)VALUES (
"Jenny",
"Rogers",
"code and watch YouTube"
);

-- 2. Read

SELECT * FROM user WHERE id=1;

-- SELECT last_name, first_name, hobbies FROM user WHERE id=1;


-- 3. Update

UPDATE user
  SET
    first_name="John",
    last_name="Doe",
    hobbies="Playing golf and watching TV"
WHERE id=1;

UPDATE user
  SET
    first_name="Thomas",
    last_name="Jones",
    hobbies="ski and go bird watching"
WHERE first_name= "tom";

-- 4. Delete

DELETE FROM user WHERE id 1;

DELETE FROM user WHERE id 2;

-- 5. (Scan)
  --a scan is just another type of read operation

SELECT * FROM user;






-- # Mini Challenge

-- ## Basic commands and queries

-- 1. Using your sandbox.db, create the following records in your user table:
-- 1.1. Jane Doe whose hobbies are playing tennis and video games
-- 1.2. Tom Jones who likes to ski and go bird watching
-- 1.3. Jenny Rogers who likes to code and watch YouTube videos
-- 2. Update Tom Jones such that their first name is "Thomas"
-- 3. Delete Jane Doe's record from the database table, permanently.
-- 4. Create a report in which records are displayed in this order: last_name, first_name, hobbies and id (for all users).


-- ## Bonus
-- If you have extra time, create a database table for vehicles.