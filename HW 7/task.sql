 -- 1
CREATE VIEW samsBills
AS SELECT first_name, surname, bill_date, cust_name FROM restStaff, restBill  WHERE first_name = Sam AND surname = Pitt;


-- 2
CREATE VIEW samsBills
AS SELECT first_name, surname, bill_date, cust_name
FROM restStaff, restBill  
WHERE first_name = Sam AND surname = Pitt AND bill_total > 400.00;

SELECT * FROM samsBills;

-- 3
CREATE VIEW roomTotals
AS SELECT room_name, sum(bill_total) 
FROM restRoom_management, restBill 
Group By room_name;

SELECT * FROM roomTotals;

-- 4
CREATE VIEW teamTotals
AS SELECT CONCAT (first_name,' ', surname) AS headwaiter_name, sum(bill_total)
FROM restBill, restStaff
WHERE headwaiter is null GROUP BY headwaiter_name;

SELECT * FROM teamTotals; 
