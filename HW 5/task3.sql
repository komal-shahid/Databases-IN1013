-- 1
SELECT DISTINCT first_name as WaiterName FROM reststaff INNER JOIN restbill WHERE cust_name = “Tanya Singh”;
-- 2
SELECT R1.room_date FROM restRoom_management R1 INNER JOIN restStaff R2 ON R1.headwaiter = R2.staff_no WHERE R1.room_name = 'Green' AND R1.room_date LIKE '%0216' AND R2.first_name = 'Charles';
-- 3
SELECT r2.first_name, r2.surname FROM restStaff r1 LEFT JOIN restStaff r2 ON r1.headwaiter = r2.headwaiter WHERE r1.staff_no = 3 AND r2.staff_no != 3;
-- 4
SELECT r1.cust_name, r1.bill_total, r2.first_name FROM restbill r1 INNER JOIN reststaff  r2 ON r1.waiter_no = r2.staff_no ORDER BY bill_total DESC;
-- 5
SELECT DISTINCT r1.first_name, r1.surname
FROM restStaff r1
INNER JOIN restBill r2 ON r1.staff_no = r2.waiter_no
WHERE r2.bill_no IN (14, 17)
UNION
SELECT DISTINCT r1.first_name, r1.surname
FROM restStaff r1
WHERE r1.headwaiter IN (
SELECT DISTINCT r2.headwaiter
FROM restStaff r2
INNER JOIN restBill r3 ON r2.staff_no = r3.waiter_no
WHERE r3.bill_no IN (14, 17)
);
-- 6
SELECT r1.first_name, r1.surname
FROM restStaff r1
INNER JOIN restRoom_management r3 ON r1.staff_no = r3.headwaiter
WHERE r3.room_name = 'Blue' AND r3.room_date = 160312
UNION
SELECT r2.first_name, r2.surname
FROM restStaff r2
INNER JOIN restBill b ON r2.staff_no = b.waiter_no
INNER JOIN restRest_table t ON b.table_no = t.table_no
WHERE t.room_name = 'Blue' AND b.bill_date = 160312;
