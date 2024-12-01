-- 1
SELECT rs.first_name, rs.surname, b.bill_date, COUNT(b.bill_no) AS number_of_bills
FROM restStaff rs
INNER JOIN restBill b ON rs.staff_no = b.waiter_no
GROUP BY rs.first_name, rs.surname, b.bill_date
HAVING COUNT(b.bill_no) >= 2;

-- 2
SELECT room_name, COUNT(table_no) AS number_of_tables
FROM restRest_table
WHERE no_of_seats > 6
GROUP BY room_name;

-- 3
SELECT rt.room_name, SUM(b.bill_total) AS total_bill_amount
FROM restBill b
INNER JOIN restRest_table rt ON b.table_no = rt.table_no
GROUP BY rt.room_name;

-- 4
SELECT rs.first_name, rs.surname, SUM(b.bill_total) AS total_bill_amount
FROM restStaff rs
INNER JOIN restRoom_management rm ON rs.staff_no = rm.headwaiter
INNER JOIN restBill b ON rm.room_date = b.bill_date
GROUP BY rs.first_name, rs.surname
ORDER BY total_bill_amount DESC;

-- 5
SELECT cust_name, AVG(bill_total) AS average_spent
FROM restBill
GROUP BY cust_name
HAVING AVG(bill_total) > 400;

-- 6
SELECT rs.first_name, rs.surname, b.bill_date, COUNT(b.bill_no) AS number_of_bills
FROM restStaff rs
INNER JOIN restBill b ON rs.staff_no = b.waiter_no
GROUP BY rs.first_name, rs.surname, b.bill_date
HAVING COUNT(b.bill_no) >= 3;

