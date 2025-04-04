CREATE TABLE restaurant_info (restaurant_id SERIAL PRIMARY KEY,name VARCHAR(100) NOT NULL,cuisine ENUM('Italian', 'Chinese', 'Indian', 'Mexican', 'French') NOT NULL,
    location VARCHAR(255) NOT NULL,rating DECIMAL(3,2) NOT NULL,price_range VARCHAR(50) NOT NULL,seating_capacity INT NOT NULL,owner VARCHAR(100) NOT NULL,
    established_year INT NOT NULL,phone_number VARCHAR(15) NOT NULL);
    SELECT * FROM restaurant_info;
    INSERT INTO restaurant_info (name, cuisine, location, rating, price_range, seating_capacity, owner, established_year, phone_number)
VALUES ('La Piazza', 'Italian', 'New York, USA', 4.5, '$$', 80, 'John Doe', 1995, '123-456-7890');
    INSERT INTO restaurant_info (name, cuisine, location, rating, price_range, seating_capacity, owner, established_year, phone_number)
VALUES('Szechuan House', 'Chinese', 'San Francisco, USA', 4.7, '$$', 100, 'Jane Doe', 2000, '987-654-3210');
ALTER TABLE restaurant_info ADD CONSTRAINT unique_restaurant_name UNIQUE (name);
ALTER TABLE restaurant_info ADD CONSTRAINT check_rating CHECK (rating BETWEEN 1 AND 5);
ALTER TABLE restaurant_info ADD CONSTRAINT check_seating CHECK (seating_capacity > 0);
ALTER TABLE restaurant_info ADD CONSTRAINT check_established_year CHECK (established_year > 1800);
ALTER TABLE restaurant_info ADD CONSTRAINT check_price_range CHECK (price_range <> '');
ALTER TABLE restaurant_info ADD CONSTRAINT check_phone CHECK (phone_number <> '');
UPDATE restaurant_info SET delivery_available = TRUE, website = 'www.example.com' WHERE restaurant_id <= 15;
ALTER TABLE restaurant_info ADD COLUMN delivery_available BOOLEAN, ADD COLUMN website VARCHAR(255);
CREATE TABLE electronic_gadgets (gadget_id SERIAL PRIMARY KEY,name VARCHAR(100) NOT NULL,brand VARCHAR(100) NOT NULL,
    category ENUM('Phone', 'Laptop', 'Tablet', 'Smartwatch', 'Camera') NOT NULL,price DECIMAL(10,2) NOT NULL,battery_life INT NOT NULL,
    storage_capacity INT NOT NULL,ram INT NOT NULL,screen_size DECIMAL(5,2) NOT NULL,warranty_years INT NOT NULL
);
INSERT INTO electronic_gadgets (name, brand, category, price, battery_life, storage_capacity, ram, screen_size, warranty_years)
VALUES ('iPhone 13', 'Apple', 'Phone', 999.99, 20, 256, 8, 6.1, 2);
INSERT INTO electronic_gadgets (name, brand, category, price, battery_life, storage_capacity, ram, screen_size, warranty_years)
VALUES('Galaxy S22', 'Samsung', 'Phone', 899.99, 22, 128, 8, 6.2, 2); 
ALTER TABLE electronic_gadgets ADD CONSTRAINT unique_gadget_name UNIQUE (name);
ALTER TABLE electronic_gadgets ADD CONSTRAINT check_battery CHECK (battery_life > 0);
ALTER TABLE electronic_gadgets ADD CONSTRAINT check_storage CHECK (storage_capacity > 0);
ALTER TABLE electronic_gadgets ADD CONSTRAINT check_ram CHECK (ram > 0);
ALTER TABLE electronic_gadgets ADD CONSTRAINT check_screen CHECK (screen_size > 0);
ALTER TABLE electronic_gadgets ADD COLUMN waterproof BOOLEAN, ADD COLUMN weight DECIMAL(5,2);
UPDATE electronic_gadgets SET waterproof = FALSE, weight = 1.2 WHERE gadget_id <= 15;


