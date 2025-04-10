CREATE TABLE School (ID INT PRIMARY KEY,Name VARCHAR(50),Location VARCHAR(100),EstablishedYear INT,Principal VARCHAR(50),
    NumStudents INT,NumTeachers INT,Affiliation VARCHAR(50),Rating DECIMAL(3,1),Status VARCHAR(20));
    ALTER TABLE School MODIFY COLUMN Rating DECIMAL(3,1) NOT NULL CHECK (Rating BETWEEN 1 AND 10);
    INSERT INTO School VALUES 
(1, 'Greenwood High', 'New York', 1995, 'Dr. Smith', 2000, 150, 'CBSE', 9.2, 'Active'),
(2, 'Sunshine Academy', 'Los Angeles', 2000, 'Dr. Adams', 1800, 140, 'ICSE', 8.8, 'Active'),
(3, 'Bluebell School', 'Chicago', 1998, 'Mr. Brown', 1500, 120, 'State Board', 8.5, 'Active'),
(4, 'Redwood School', 'Houston', 1996, 'Mrs. Taylor', 1200, 100, 'CBSE', 7.9, 'Active'),
(5, 'Pine Tree High', 'San Francisco', 2002, 'Dr. Clark', 2100, 160, 'IB', 9.0, 'Active'),
(6, 'Evergreen Academy', 'Seattle', 1997, 'Ms. Lewis', 1700, 130, 'State Board', 8.4, 'Active'),
(7, 'Maple Leaf School', 'Boston', 1999, 'Dr. Walker', 1300, 110, 'ICSE', 8.7, 'Active'),
(8, 'Oakwood High', 'Miami', 2001, 'Mrs. Harris', 1900, 150, 'CBSE', 9.1, 'Active'),
(9, 'Willow School', 'Dallas', 1994, 'Dr. White', 1600, 140, 'IB', 8.9, 'Active'),
(10, 'Cedar High', 'Denver', 1993, 'Mr. Martinez', 1400, 120, 'State Board', 8.3, 'Active'),
(11, 'Birchwood School', 'Atlanta', 1992, 'Dr. Robinson', 1100, 90, 'CBSE', 7.5, 'Active'),
(12, 'Aspen Academy', 'Phoenix', 1991, 'Mrs. Nelson', 1000, 80, 'ICSE', 7.8, 'Active'),
(13, 'Hilltop High', 'Las Vegas', 2005, 'Dr. Scott', 2000, 170, 'IB', 9.3, 'Active'),
(14, 'Sunset School', 'San Diego', 2003, 'Ms. Young', 1550, 130, 'State Board', 8.2, 'Active'),
(15, 'Harmony School', 'Portland', 2004, 'Dr. Hall', 1450, 110, 'CBSE', 8.6, 'Active'),
(16, 'Springfield Academy', 'Detroit', 1990, 'Mr. Allen', 1250, 105, 'ICSE', 7.6, 'Active'),
(17, 'Westwood School', 'Philadelphia', 1989, 'Dr. King', 1350, 115, 'IB', 8.1, 'Active'),
(18, 'Summit High', 'Charlotte', 1998, 'Mrs. Wright', 1750, 140, 'State Board', 8.5, 'Active'),
(19, 'Valley High', 'Austin', 1997, 'Dr. Perez', 1850, 150, 'CBSE', 9.0, 'Active'),
(20, 'Oceanview School', 'San Jose', 2006, 'Mr. Green', 1950, 160, 'ICSE', 8.9, 'Active');
ALTER TABLE School RENAME COLUMN EstablishedYear TO FoundationYear;
SELECT * FROM School WHERE NumStudents > 1000 AND Location = 'New York';
SELECT * FROM School WHERE Rating NOT BETWEEN 7 AND 9;
CREATE TABLE Hospital (ID INT PRIMARY KEY,School_ID INT,Name VARCHAR(50),Location VARCHAR(100),EstablishedYear INT,Director VARCHAR(50),
    Capacity INT,Specialization VARCHAR(50),Rating DECIMAL(3,1),Status VARCHAR(20),FOREIGN KEY (School_ID) REFERENCES School(ID) ON DELETE CASCADE
);
INSERT INTO Hospital VALUES 
(1, 1, 'City Hospital', 'New York', 2005, 'Dr. Johnson', 500, 'Cardiology', 8.5, 'Operational'),
(2, 2, 'Sunrise Medical Center', 'Los Angeles', 2008, 'Dr. Roberts', 400, 'Neurology', 8.2, 'Operational'),
(3, 3, 'Metro Hospital', 'Chicago', 2003, 'Dr. Carter', 600, 'Orthopedics', 8.6, 'Operational'),
(4, 4, 'Greenland Hospital', 'Houston', 2000, 'Dr. Davis', 700, 'Oncology', 8.9, 'Operational'),
(5, 5, 'Lifeline Hospital', 'San Francisco', 1999, 'Dr. Wilson', 450, 'General Medicine', 8.4, 'Operational'),
(6, 6, 'Hope Medical', 'Seattle', 2006, 'Dr. Miller', 500, 'Pediatrics', 8.3, 'Operational'),
(7, 7, 'Sunset Clinic', 'Boston', 2004, 'Dr. Garcia', 350, 'Dermatology', 8.0, 'Operational'),
(8, 8, 'Evercare Hospital', 'Miami', 2010, 'Dr. Hernandez', 480, 'Emergency Medicine', 8.7, 'Operational'),
(9, 9, 'Westwood Medical', 'Dallas', 2007, 'Dr. Adams', 550, 'Cardiology', 8.6, 'Operational'),
(10, 10, 'Valley Hospital', 'Denver', 2009, 'Dr. Wright', 380, 'Neurology', 8.1, 'Operational'),
(11, 11, 'Central Medical Center', 'Atlanta', 2012, 'Dr. Gonzalez', 620, 'General Surgery', 8.9, 'Operational'),
(12, 12, 'Phoenix Hospital', 'Phoenix', 2015, 'Dr. Thomas', 580, 'Oncology', 9.0, 'Operational'),
(13, 13, 'Northstar Hospital', 'Las Vegas', 2013, 'Dr. Walker', 390, 'Orthopedics', 8.2, 'Operational'),
(14, 14, 'Sunbeam Hospital', 'San Diego', 2011, 'Dr. Lopez', 510, 'Pediatrics', 8.4, 'Operational'),
(15, 15, 'Starlight Hospital', 'Portland', 2014, 'Dr. Scott', 470, 'Dermatology', 8.1, 'Operational'),
(16, 16, 'Summit Healthcare', 'Detroit', 2016, 'Dr. Perez', 530, 'Emergency Medicine', 8.5, 'Operational'),
(17, 17, 'Pioneer Hospital', 'Philadelphia', 2018, 'Dr. King', 490, 'General Medicine', 8.7, 'Operational'),
(18, 18, 'Infinity Hospital', 'Charlotte', 2019, 'Dr. Green', 540, 'General Surgery', 8.8, 'Operational'),
(19, 19, 'Horizon Hospital', 'Austin', 2020, 'Dr. Harris', 460, 'Oncology', 8.9, 'Operational'),
(20, 20, 'Skyline Hospital', 'San Jose', 2021, 'Dr. Allen', 600, 'Cardiology', 9.1, 'Operational');
ALTER TABLE Hospital RENAME COLUMN Director TO ChiefMedicalOfficer;
SELECT * FROM Hospital WHERE Capacity > 500 OR Rating > 8;
SELECT * FROM Hospital WHERE Name LIKE 'City%';
INSERT INTO Hostel VALUES 
(1, 1, 1, 'Sunrise Hostel', 'New York', 300, 'Mr. Brown', 5, 'WiFi, Gym, Library', 'Available'),
(2, 2, 2, 'Moonlight Hostel', 'Los Angeles', 250, 'Ms. Carter', 4, 'WiFi, Laundry, Study Rooms', 'Available'),
(3, 3, 3, 'Evergreen Hostel', 'Chicago', 280, 'Dr. Walker', 6, 'Cafeteria, Sports Area', 'Available'),
(4, 4, 4, 'Greenwood Hostel', 'Houston', 200, 'Mr. Garcia', 3, 'Parking, WiFi, Gym', 'Full'),
(5, 5, 5, 'Redwood Dorm', 'San Francisco', 350, 'Mrs. Lopez', 7, 'Library, Laundry, AC', 'Available'),
(6, 6, 6, 'Cedar Residency', 'Seattle', 320, 'Dr. Adams', 5, 'Gym, Mess, Internet', 'Available'),
(7, 7, 7, 'Maple Hostel', 'Boston', 270, 'Mr. Martinez', 6, 'Laundry, WiFi, Sports Room', 'Full'),
(8, 8, 8, 'Bluebell Dorm', 'Miami', 400, 'Dr. Nelson', 8, 'Mess, Gym, Internet', 'Available'),
(9, 9, 9, 'Oakwood Hostel', 'Dallas', 260, 'Mrs. King', 4, 'AC, TV Lounge, Laundry', 'Under Maintenance'),
(10, 10, 10, 'Hilltop Residency', 'Denver', 310, 'Dr. Thomas', 5, 'Parking, Library, Gym', 'Available'),
(11, 11, 11, 'Birchwood Dorm', 'Atlanta', 330, 'Mr. Harris', 6, 'AC, Laundry, Internet', 'Available'),
(12, 12, 12, 'Aspen Hostel', 'Phoenix', 280, 'Dr. Robinson', 4, 'Sports Area, Mess', 'Full'),
(13, 13, 13, 'Sunset Residency', 'Las Vegas', 290, 'Ms. Scott', 6, 'Gym, WiFi, Laundry', 'Available'),
(14, 14, 14, 'Westwood Hostel', 'San Diego', 240, 'Mr. Green', 3, 'Cafeteria, Parking', 'Under Maintenance'),
(15, 15, 15, 'Harmony Residency', 'Portland', 360, 'Dr. Wright', 7, 'Mess, Gym, Library', 'Available'),
(16, 16, 16, 'Springfield Dorm', 'Detroit', 220, 'Ms. Young', 4, 'Laundry, AC, Internet', 'Full'),
(17, 17, 17, 'Summit Hostel', 'Philadelphia', 350, 'Dr. Allen', 8, 'Gym, TV Lounge', 'Available'),
(18, 18, 18, 'Valley Residency', 'Charlotte', 270, 'Mr. Perez', 5, 'Cafeteria, Laundry, WiFi', 'Available'),
(19, 19, 19, 'Oceanview Hostel', 'Austin', 400, 'Ms. Hall', 9, 'Mess, Gym, Internet', 'Full'),
(20, 20, 20, 'Skyline Hostel', 'San Jose', 300, 'Dr. Johnson', 6, 'AC, Laundry, Sports Area', 'Available');
ALTER TABLE Hostel MODIFY COLUMN Capacity INT NOT NULL CHECK (Capacity > 50);
ALTER TABLE Hostel ADD CONSTRAINT Unique_Hostel_Name UNIQUE (Name);
SELECT * FROM Hostel WHERE Name IN ('Sunrise Hostel', 'Evergreen Hostel', 'Summit Hostel');
SELECT Location, AVG(Capacity) AS Avg_Capacity FROM Hostel GROUP BY Location HAVING AVG(Capacity) > 250;
CREATE TABLE Movies (ID INT PRIMARY KEY,School_ID INT,Hospital_ID INT,Hostel_ID INT,Title VARCHAR(50),Genre VARCHAR(50),
    ReleaseYear INT,Director VARCHAR(50),IMDBRating DECIMAL(3,1),Status VARCHAR(20),
    FOREIGN KEY (School_ID) REFERENCES School(ID) ON DELETE CASCADE,
    FOREIGN KEY (Hospital_ID) REFERENCES Hospital(ID) ON DELETE CASCADE,
    FOREIGN KEY (Hostel_ID) REFERENCES Hostel(ID) ON DELETE CASCADE);
INSERT INTO Movies VALUES 
(1, 1, 1, 1, 'Inception', 'Sci-Fi', 2010, 'Christopher Nolan', 8.8, 'Released'),
(2, 2, 2, 2, 'Titanic', 'Romance', 1997, 'James Cameron', 8.7, 'Released'),
(3, 3, 3, 3, 'Avengers', 'Action', 2012, 'Joss Whedon', 8.5, 'Released'),
(4, 4, 4, 4, 'The Dark Knight', 'Thriller', 2008, 'Christopher Nolan', 9.0, 'Released'),
(5, 5, 5, 5, 'Interstellar', 'Sci-Fi', 2014, 'Christopher Nolan', 8.6, 'Released'),
(6, 6, 6, 6, 'Forrest Gump', 'Drama', 1994, 'Robert Zemeckis', 8.9, 'Released'),
(7, 7, 7, 7, 'The Godfather', 'Crime', 1972, 'Francis Ford Coppola', 9.2, 'Released'),
(8, 8, 8, 8, 'Shawshank Redemption', 'Drama', 1994, 'Frank Darabont', 9.3, 'Released'),
(9, 9, 9, 9, 'Joker', 'Crime', 2019, 'Todd Phillips', 8.4, 'Released'),
(10, 10, 10, 10, 'The Matrix', 'Sci-Fi', 1999, 'Lana Wachowski', 8.7, 'Released'),
(11, 11, 11, 11, 'Pulp Fiction', 'Crime', 1994, 'Quentin Tarantino', 8.9, 'Released'),
(12, 12, 12, 12, 'Gladiator', 'Action', 2000, 'Ridley Scott', 8.5, 'Released'),
(13, 13, 13, 13, 'Avatar', 'Sci-Fi', 2009, 'James Cameron', 8.3, 'Released'),
(14, 14, 14, 14, 'Fight Club', 'Drama', 1999, 'David Fincher', 8.6, 'Released'),
(15, 15, 15, 15, 'The Lion King', 'Animation', 1994, 'Roger Allers', 8.5, 'Released'),
(16, 16, 16, 16, 'Deadpool', 'Comedy', 2016, 'Tim Miller', 8.0, 'Released'),
(17, 17, 17, 17, 'Black Panther', 'Action', 2018, 'Ryan Coogler', 7.9, 'Released'),
(18, 18, 18, 18, 'The Revenant', 'Adventure', 2015, 'Alejandro G. Iñárritu', 8.1, 'Released'),
(19, 19, 19, 19, 'The Departed', 'Crime', 2006, 'Martin Scorsese', 8.5, 'Released'),
(20, 20, 20, 20, 'Django Unchained', 'Western', 2012, 'Quentin Tarantino', 8.4, 'Released');
ALTER TABLE Movies MODIFY COLUMN IMDBRating DECIMAL(3,1) NOT NULL CHECK (IMDBRating BETWEEN 1 AND 10);
ALTER TABLE Movies RENAME COLUMN ReleaseYear TO PremiereYear;
SELECT * FROM Movies WHERE IMDBRating BETWEEN 8 AND 9;
SELECT * FROM Movies WHERE Title LIKE 'The%';
SELECT COUNT(*) AS Total_Movies, AVG(IMDBRating) AS Average_Rating, MAX(IMDBRating) AS Highest_Rating, MIN(IMDBRating) AS Lowest_Rating 
FROM Movies;
CREATE TABLE SolarSystem (ID INT PRIMARY KEY,School_ID INT,Hospital_ID INT,Hostel_ID INT,Movie_ID INT,Planet VARCHAR(50),
    DistanceFromSun DECIMAL(10,2),Mass DECIMAL(15,5),Moons INT,Status VARCHAR(20),
    FOREIGN KEY (School_ID) REFERENCES School(ID) ON DELETE CASCADE,
    FOREIGN KEY (Hospital_ID) REFERENCES Hospital(ID) ON DELETE CASCADE,
    FOREIGN KEY (Hostel_ID) REFERENCES Hostel(ID) ON DELETE CASCADE,
    FOREIGN KEY (Movie_ID) REFERENCES Movies(ID) ON DELETE CASCADE);
INSERT INTO SolarSystem VALUES 
(1, 1, 1, 1, 1, 'Mercury', 57.91, 0.33011, 0, 'Rocky Planet'),
(2, 2, 2, 2, 2, 'Venus', 108.2, 4.8675, 0, 'Hot Atmosphere'),
(3, 3, 3, 3, 3, 'Earth', 149.6, 5.97237, 1, 'Habitable'),
(4, 4, 4, 4, 4, 'Mars', 227.9, 0.64171, 2, 'Red Planet'),
(5, 5, 5, 5, 5, 'Jupiter', 778.5, 1898.19, 79, 'Gas Giant'),
(6, 6, 6, 6, 6, 'Saturn', 1434.0, 568.34, 83, 'Ringed Planet'),
(7, 7, 7, 7, 7, 'Uranus', 2871.0, 86.813, 27, 'Icy Giant'),
(8, 8, 8, 8, 8, 'Neptune', 4495.1, 102.413, 14, 'Blue Giant'),
(9, 9, 9, 9, 9, 'Pluto', 5906.4, 0.01303, 5, 'Dwarf Planet'),
(10, 10, 10, 10, 10, 'Ceres', 413.7, 0.00094, 0, 'Asteroid Belt Object'),
(11, 11, 11, 11, 11, 'Eris', 10120.0, 0.0167, 1, 'Dwarf Planet'),
(12, 12, 12, 12, 12, 'Haumea', 6453.0, 0.0007, 2, 'Dwarf Planet'),
(13, 13, 13, 13, 13, 'Makemake', 6850.0, 0.0006, 0, 'Dwarf Planet'),
(14, 14, 14, 14, 14, 'Io', 778.5, 0.08932, 0, 'Jupiter’s Moon'),
(15, 15, 15, 15, 15, 'Europa', 778.5, 0.048, 0, 'Jupiter’s Icy Moon'),
(16, 16, 16, 16, 16, 'Ganymede', 778.5, 0.148, 0, 'Largest Moon'),
(17, 17, 17, 17, 17, 'Callisto', 778.5, 0.1076, 0, 'Jupiter’s Moon'),
(18, 18, 18, 18, 18, 'Titan', 1434.0, 0.1345, 0, 'Saturn’s Largest Moon'),
(19, 19, 19, 19, 19, 'Triton', 4495.1, 0.0214, 0, 'Neptune’s Moon'),
(20, 20, 20, 20, 20, 'Charon', 5906.4, 0.00152, 0, 'Pluto’s Largest Moon');


