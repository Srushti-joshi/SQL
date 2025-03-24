CREATE DATABASE feb_17;
	CREATE DATABASE sru_06; 
    CREATE DATABASE xworks;
    CREATE TABLE airline_details(id int, price int, airline_name varchar(19), passangers varchar(10));
    DESC airline_details;
    CREATE TABLE bookmyshow_details(id int, movie_name varchar(10), movie_price int, timing int);
    CREATE TABLE state_info(id int, state_name varchar(20), population decimal, cm_name varchar(10), distict int);
    SELECT * FROM state_info;
    INSERT INTO state_info values(1, 'karnataka', 500, 'sidaramaya', 28);
	INSERT INTO state_info values(2, 'kerala', 600, 'varun', 28);
	INSERT INTO state_info values(3, 'goa', 700, 'ravi', 28);
	INSERT INTO state_info values(4, 'tamil nadu', 800, 'bhuvan', 28);
	INSERT INTO state_info values(5, 'maharastra', 900, 'sharan', 28);
    INSERT INTO state_info values(6, 'karnataka', 500, 'sidaramaya', 28);
	INSERT INTO state_info values(7, 'kerala', 600, 'varun', 28);
	INSERT INTO state_info values(8, 'goa', 700, 'ravi', 28);
	INSERT INTO state_info values(9, 'tamil nadu', 800, 'bhuvan', 28);
	INSERT INTO state_info values(10, 'tamil nadu', 800, 'ragu', 30);
    INSERT INTO state_info values(1, 'karnataka', 500, 'sidaramaya', 28);
	INSERT INTO state_info values(1, 'kerala', 600, 'varun', 28);
	INSERT INTO state_info values(1, 'goa', 700, 'ravi', 28);
	INSERT INTO state_info values(1, 'tamil nadu', 800, 'bhuvan', 28);
	INSERT INTO state_info values(1, 'maharastra', 900, 'sharan', 28);
    CREATE TABLE hospital_details(id int, patient_name varchar(30), no_of_patient int, total_patient int, bill int);
    SELECT * FROM hospital_details;
    INSERT INTO hospital_details values(1, 'Ravi', 5, 5, 2000);
    INSERT INTO hospital_details values(2, 'charan', 4, 3, 1000);
    INSERT INTO hospital_details values(3, 'sushma', 3, 4, 3000);
    INSERT INTO hospital_details values(4, 'sru', 6, 6, 4000);
    INSERT INTO hospital_details values(5, 'kavith', 7, 7, 5000);
    INSERT INTO hospital_details values(6, 'gayatri', 5, 5, 6000);
    INSERT INTO hospital_details values(7, 'madu', 5, 5, 7000);
    INSERT INTO hospital_details values(8, 'gowthu', 5, 5, 8000);
    INSERT INTO hospital_details values(9, 'rachu', 5, 5, 9000);
    INSERT INTO hospital_details values(10, 'sonu', 5, 5, 10000);
	INSERT INTO hospital_details values(11, 'ankith', 5, 5, 12000);
    INSERT INTO hospital_details values(12, 'adarsh', 5, 5, 13000);
    INSERT INTO hospital_details values(13, 'amay', 5, 5, 14000);
    INSERT INTO hospital_details values(14, 'guru', 5, 5, 15000);
    INSERT INTO hospital_details values(15, 'bavya', 5, 5, 22000);
    CREATE TABLE country_info(id int, country_name varchar(28), population decimal, no_of_state int, pm_name varchar(29));
    SELECT * FROM country_info;
    INSERT INTO country_info values(1, 'india', 100, 30, 'modi');
	INSERT INTO country_info values(2, 'usa', 200, 30, 'pm2');
	INSERT INTO country_info values(3, 'austrelia', 300, 30, 'pm3');
	INSERT INTO country_info values(4, 'europe', 400, 30, 'pm4');
	INSERT INTO country_info values(5, 'germany', 500, 30, 'pm5');
	INSERT INTO country_info values(6, 'pakistan', 600, 30, 'pm6');
	INSERT INTO country_info values(7, 'russia', 900, 30, 'pm7');
	INSERT INTO country_info values(8, 'china', 700, 30, 'pm8');
	INSERT INTO country_info values(9, 'korea', 800, 30, 'pm9');
	INSERT INTO country_info values(10, 'indoneshia', 1000, 30, 'pm10');
	INSERT INTO country_info values(11, 'bangladesh', 1200, 30, 'pm11');
	INSERT INTO country_info values(12, 'japan', 1500, 30, 'pm12');
	INSERT INTO country_info values(13, 'canada', 1800, 30, 'pm13');
	INSERT INTO country_info values(14, 'maleshiya', 1900, 30, 'pm14');
	INSERT INTO country_info values(15, 'turkey', 19900, 30, 'pm15');
          
       
    
    
    
    
    TRUNCATE table hospital_details;
    DESC hospital_details;
    SELECT* FROM hospital_details WHERE id='int'; 
    SELECT * FROM hospital_details WHERE bill='int' and id='int';
    SELECT *FROM hospital_details WHERE total_patient in(1000,3000,4000);
    
    
    
    
    