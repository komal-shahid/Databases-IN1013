-- 1 
SELECT b.cust_name
FROM restBill b
INNER JOIN restRoom_management rm ON b.bill_date = rm.room_date
INNER JOIN restStaff rs ON rm.headwaiter = rs.staff_no
WHERE b.bill_total > 450.00 AND rs.first_name = 'Charles';
-- 2
SELECT rs.first_name, rs.surname
FROM restStaff rs
INNER JOIN restRoom_management rm ON rs.staff_no = rm.headwaiter
INNER JOIN restBill b ON rm.room_name = rt.room_name AND b.bill_date = rm.room_date
INNER JOIN restRest_table rt ON b.table_no = rt.table_no
WHERE b.cust_name = 'Nerida Smith' AND b.bill_date = 160111;
-- 3
SELECT cust_name
FROM restBill
WHERE bill_total = (SELECT MIN(bill_total) FROM restBill);
-- 4
SELECT r.first_name, r.surname
FROM restStaff r
WHERE r.staff_no NOT IN (SELECT b.waiter_no FROM restBill b);
-- 5
SELECT b.cust_name, rs.first_name AS headwaiter_first_name, rs.surname AS headwaiter_surname, rt.room_name
FROM restBill b
INNER JOIN restRest_table rt ON b.table_no = rt.table_no
INNER JOIN restRoom_management rm ON rt.room_name = rm.room_name AND b.bill_date = rm.room_date
INNER JOIN restStaff rs ON rm.headwaiter = rs.staff_no
WHERE b.bill_total = (SELECT MAX(bill_total) FROM restBill);
