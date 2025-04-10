 CREATE TABLE student_info (id INT PRIMARY KEY,name VARCHAR(20) NOT NULL,branch VARCHAR(10),year_of_pass INT,
 dob DATE,college_id INT,FOREIGN KEY (college_id) REFERENCES college_info(college_id) ON DELETE CASCADE);
INSERT INTO student_info VALUES
(1, 'Shivani', 'CS', 2025, '2003-12-05', 1),
(2, 'Gayatri', 'CS', 2025, '2003-08-04', 2),
(3, 'Gowsiya', 'EC', 2025, '2003-06-14', 3),
(4, 'Srushti', 'IS', 2025, '2002-07-08', 4),
(5, 'Amit', 'CS', 2024, '2002-05-10', 5),
(6, 'Neha', 'EC', 2023, '2001-11-22', 6),
(7, 'Rahul', 'ME', 2026, '2004-04-14', 7),
(8, 'Pooja', 'CE', 2025, '2003-02-18', 8),
(9, 'Kiran', 'EEE', 2026, '2004-07-07', 9),
(10, 'Varun', 'IT', 2024, '2002-09-30', 10),
(11, 'Meera', 'CS', 2025, '2003-06-10', 11),
(12, 'Sanjay', 'EC', 2023, '2001-01-25', 12),
(13, 'Rekha', 'ISE', 2024, '2002-08-12', 13),
(14, 'Arjun', 'ME', 2026, '2004-12-05', 14),
(15, 'Divya', 'IT', 2023, '2001-03-20', 15);
ALTER TABLE student_info ADD email VARCHAR(50);
ALTER TABLE student_info RENAME COLUMN name TO full_name;
ALTER TABLE student_info RENAME COLUMN branch TO department;
ALTER TABLE student_info RENAME COLUMN year_of_pass TO yr_out;
ALTER TABLE student_info MODIFY full_name VARCHAR(30);
ALTER TABLE student_info MODIFY branch VARCHAR(0);
UPDATE student_info SET email = 'shivani@example.com' WHERE student_id = 1;
UPDATE student_info SET email = 'gayatri@example.com' WHERE student_id = 2;
UPDATE student_info SET email = 'gowsiya@example.com' WHERE student_id = 3;
UPDATE student_info SET email = 'srushti@example.com' WHERE student_id = 4;
DELETE FROM student_info WHERE student_id = 15;
DELETE FROM student_info WHERE student_id = 14;
DELETE FROM student_info WHERE student_id = 15;
SELECT * FROM student_info WHERE department = 'CS' AND year_of_pass = 2025;
SELECT * FROM student_info WHERE department = 'CS' OR department = 'EC';
SELECT * FROM student_info WHERE department IN ('CS', 'IT', 'ME');
SELECT * FROM student_info WHERE department NOT IN ('CS', 'EC');
SELECT * FROM student_info WHERE id BETWEEN 9 AND 14;
SELECT * FROM student_info WHERE id NOT BETWEEN 9 AND 14;
SELECT COUNT(*) FROM student_info; 
SELECT AVG(dob) FROM student_info;
SELECT MAX(year_of_pass) FROM student_info;
SELECT MIN(dob) FROM student_info;
SELECT SUM(year_of_pass) FROM student_info;
CREATE TABLE college_info (college_id INT PRIMARY KEY,college_name VARCHAR(50) NOT NULL,location VARCHAR(50),
    estd_year INT,rating FLOAT);
    INSERT INTO college_info VALUES
(1, 'MCE', 'hassan', 1950, 4.5),
(2, 'rajeev', 'hassan', 1980, 4.2),
(3, 'navkis', 'hassan', 2000, 4.0),
(4, 'rv', 'bengaluru', 1975, 3.8),
(5, 'mvj', 'bengaluru', 1990, 4.6),
(6, 'bapuji', 'davangere', 1965, 3.9),
(7, 'cks', 'hassan', 2005, 4.1),
(8, 'vidhyavardaka', 'mysore', 1987, 4.3),
(9, 'kvj', 'hubli', 1993, 3.7),
(10, 'bnm', 'bengaluru', 1972, 4.4),
(11, 'hkbk', 'mangalore', 2003, 4.0),
(12, 'amc', 'manglore', 2015, 4.2),
(13, 'acharya', 'bengaluru', 1999, 3.8),
(14, 'cmr', 'bagalkoth', 1982, 4.1),
(15, 'new horizon', 'bengaluru', 1996, 3.9);
ALTER TABLE college_info ADD email VARCHAR(50);
ALTER TABLE college_info RENAME COLUMN name TO full_name;
ALTER TABLE college_info RENAME COLUMN location TO address;
ALTER TABLE college_info RENAME COLUMN rating TO ext_rating;
ALTER TABLE college_info MODIFY location VARCHAR(90);
ALTER TABLE college_info MODIFY college_name VARCHAR(60);
ALTER TABLE college_info MODIFY rating DECIMAL(2,1);
UPDATE college_info SET rating = 4.7 WHERE college_name = 'ABC';
UPDATE college_info SET city = 'mysore' WHERE college_id = 5;
UPDATE college_info SET rating = rating + 0.2 WHERE city = 'davanagere';
UPDATE college_info SET estd_year = 2001 WHERE college_id = 8;
UPDATE college_info SET rating = 4.9, city = 'New York City' WHERE college_name = 'XYZ College';
DELETE FROM college_info WHERE student_id = 15;
DELETE FROM college_info WHERE student_id = 6;
DELETE FROM college_info WHERE college_id =8;
DELETE FROM college_info WHERE college_id = 5;
SELECT * FROM college_info WHERE estd_year > 1980 AND rating > 4.0;
SELECT * FROM college_info WHERE city = 'hassan' OR city = 'davangere';
SELECT * FROM college_info WHERE city IN ('hassan', 'manglore', 'davangere');
SELECT * FROM college_info WHERE city NOT IN ('hassan', 'manglore', 'davangere');
SELECT * FROM college_info WHERE estd_year BETWEEN 1970 AND 2000;
SELECT * FROM college_info WHERE rating NOT BETWEEN 4.0 AND 4.5;
SELECT COUNT(*) AS total_colleges FROM college_info;
SELECT AVG(rating) AS average_rating FROM college_info;
SELECT MAX(rating) AS highest_rating FROM college_info;
SELECT MIN(rating) AS lowest_rating FROM college_info;
SELECT SUM(estd_year) AS total_estd_years FROM college_info;
SELECT s.student_id, s.full_name, s.department, c.college_name, c.city FROM student_info s INNER JOIN college_info c 
ON s.college_id = c.college_id;
SELECT s.student_id, s.full_name, s.department, c.college_name, c.city FROM student_info s LEFT JOIN college_info c 
ON s.college_id = c.college_id;
SELECT s.student_id, s.full_name, s.department, c.college_name, c.city FROM student_info s RIGHT JOIN college_info c 
ON s.college_id = c.college_id;



