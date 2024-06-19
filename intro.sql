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
