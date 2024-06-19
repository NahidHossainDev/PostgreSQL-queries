## CREATE DATABASE
DROP DATABASE test1;

## RENAME DATABASE
ALTER DATABASE test1 RENAME TO test2;

## DELETE DATABASE
DROP DATABASE test1;


## Create a student table
CREATE TABLE student(
    student_id INT,
    firstName VARCHAR(50),
    lastName VARCHAR(50),
    cgpa NUMERIC(1,2)
)

## RENAME TABLE NAME
ALTER TABLE student RENAME TO Learner;

## DELETE TABLE
DROP TABLE student;

-- Remove all table data
TRUNCATE TABLE users

CREATE TABLE users(
    userID SERIAL PRIMARY KEY,
    userName VARCHAR(255) UNIQUE NOT NULL,
    email VARCHAR(266) UNIQUE NOT NULL,
    age int DEFAULT 18
)


INSERT INTO users VALUES (1, 'abc', 'abc@gmail.com');

-- Insert with column name
INSERT INTO users (userId, userName, email, age) VALUES (2, 'abcd', 'abc@gmail.com', 30)

-- Insert many rows
INSERT INTO users (username, email) VALUES 
('nahid', 'nahid@gmail.com'),
('hossain', 'hossain@gmail.com'),
('dfa', 'dfa@gmail.com');

-- ## Alter table

-- ADD EXTRA COLUMN with default valuE
ALTER TABLE users 
add column password VARCHAR(250) DEFAULT 'a12345' NOT NULL;

-- update all column value
UPDATE  users
SET password = '12345'

-- delete a column 
ALTER TABLE users 
drop COLUMN age

-- add column with null value
ALTER TABLE users add COLUMN demo int;

-- change data type
ALTER TABLE users alter COLUMN demo type TEXT;

-- set default value
ALTER Table users alter COLUMN demo set DEFAULT 'something';

-- remove default value
ALTER Table users alter COLUMN demo drop DEFAULT;


--  rename column name
ALTER Table users
RENAME COLUMN demo to country;

-- add constraint to existing column
ALTER TABLE users
    alter COLUMN country set not null;

-- remove constraint to existing column
ALTER TABLE users
    alter COLUMN country drop not null;


-- Add unique constrain to existing column
ALTER TABLE users
ADD constraint unique_email UNIQUE(email);

-- Drop unique constrain to existing column
ALTER TABLE users
DROP constraint unique_email;


SELECT * from users



