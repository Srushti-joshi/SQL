CREATE TABLE bank_info(bank_id int, bank_name varchar(30),bank_loc varchar(20),ifsc_code int,no_of_cust int);
INSERT INTO bank_info (bank_id, bank_name, bank_loc, ifsc_code, no_of_cust) VALUES
(1, 'State Bank', 'Mumbai', 100001, 15000),
(2, 'HDFC Bank', 'Delhi', 100002, 12000),
(3, 'ICICI Bank', 'Bangalore', 100003, 18000),
(4, 'Axis Bank', 'Chennai', 100004, 11000),
(5, 'Kotak Bank', 'Hyderabad', 100005, 10500),
(6, 'Punjab National', 'Kolkata', 100006, 9500),
(7, 'Canara Bank', 'Pune', 100007, 8700),
(8, 'Bank of Baroda', 'Ahmedabad', 100008, 9300),
(9, 'Union Bank', 'Jaipur', 100009, 8900),
(10, 'IDBI Bank', 'Lucknow', 100010, 7400),
(11, 'IndusInd Bank', 'Bhopal', 100011, 8800),
(12, 'Yes Bank', 'Chandigarh', 100012, 7200),
(13, 'UCO Bank', 'Nagpur', 100013, 6900),
(14, 'Syndicate Bank', 'Coimbatore', 100014, 7100),
(15, 'Bank of India', 'Visakhapatnam', 100015, 7800);
SELECT * FROM bank_info;
INSERT INTO cust_info (cust_id, cust_name, acc_no, bank_id, balance) VALUES
(1, 'Rahul Sharma', 500001, 1, 25000),
(2, 'Anita Verma', 500002, 2, 34000),
(3, 'Suresh Kumar', 500003, 3, 12000),
(4, 'Priya Reddy', 500004, 4, 56000),
(5, 'Amit Singh', 500005, 5, 18000),
(6, 'Neha Joshi', 500006, 6, 23000),
(7, 'Vikram Das', 500007, 7, 27000),
(8, 'Pooja Mehta', 500008, 8, 15000),
(9, 'Rajesh Gupta', 500009, 9, 31000),
(10, 'Swati Rao', 500010, 10, 22000),
(11, 'Manoj Pandey', 500011, 11, 29000),
(12, 'Kavita Jain', 500012, 12, 19500),
(13, 'Ramesh Patel', 500013, 13, 36000),
(14, 'Divya Malhotra', 500014, 14, 25000),
(15, 'Alok Mishra', 500015, 15, 40000);
SELECT * FROM cust_info;
CREATE TABLE loan_info(loan_id int, loan_name varchar(20), bank_id int, cust_id int, loan_amount int);
INSERT INTO loan_info (loan_id, loan_name, bank_id, cust_id, loan_amount) VALUES
(1, 'Home Loan', 1, 1, 500000),
(2, 'Car Loan', 2, 2, 300000),
(3, 'Education Loan', 3, 3, 200000),
(4, 'Personal Loan', 4, 4, 150000),
(5, 'Business Loan', 5, 5, 600000),
(6, 'Home Loan', 6, 6, 550000),
(7, 'Car Loan', 7, 7, 250000),
(8, 'Education Loan', 8, 8, 180000),
(9, 'Personal Loan', 9, 9, 170000),
(10, 'Business Loan', 10, 10, 700000),
(11, 'Home Loan', 11, 11, 400000),
(12, 'Car Loan', 12, 12, 270000),
(13, 'Education Loan', 13, 13, 220000),
(14, 'Personal Loan', 14, 14, 160000),
(15, 'Business Loan', 15, 15, 650000);
SELECT * FROM loan_info;
INSERT INTO insurance_info (insr_id, insr_type, policy_no, bank_id, cust_id, loan_id) VALUES
(1, 'Life Insurance', 600001, 1, 1, 1),
(2, 'Health Insurance', 600002, 2, 2, 2),
(3, 'Car Insurance', 600003, 3, 3, 3),
(4, 'Home Insurance', 600004, 4, 4, 4),
(5, 'Business Insurance', 600005, 5, 5, 5),
(6, 'Life Insurance', 600006, 6, 6, 6),
(7, 'Health Insurance', 600007, 7, 7, 7),
(8, 'Car Insurance', 600008, 8, 8, 8),
(9, 'Home Insurance', 600009, 9, 9, 9),
(10, 'Business Insurance', 600010, 10, 10, 10),
(11, 'Life Insurance', 600011, 11, 11, 11),
(12, 'Health Insurance', 600012, 12, 12, 12),
(13, 'Car Insurance', 600013, 13, 13, 13),
(14, 'Home Insurance', 600014, 14, 14, 14),
(15, 'Business Insurance', 600015, 15, 15, 15);

SELECT * FROM insurance_info;
