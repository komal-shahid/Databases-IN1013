-- 1
SELECT bill_date, bill_total FROM restbill WHERE cust_name = "Bob Crow";
-- 2 
SELECT DISTINCT cust_name FROM restbill WHERE cust_name LIKE "%Smith" ORDER BY cust_name DESC;
-- 3
SELECT DISTINCT cust_name FROM restbill WHERE cust_name LIKE "% C%";
-- 4
SELECT DISTINCT first_name as "Headwaiter name" FROM reststaff WHERE headwaiter IS NULL;
-- 5 
SELECT * FROM restbill WHERE bill_date LIKE "__0216";
-- 6
SELECT DISTINCT bill_date FROM restbill WHERE bill_date LIKE "____15" ORDER BY bill_date DESC;