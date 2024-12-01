-- 1

SELECT first_name, surname 
FROM restStaff 
INNER JOIN restBill
ON restStaff.staff_no = restBill.waiter_no
WHERE restBill.cust_name = 'Tanya Singh';

-- 2

SELECT room_date
FROM restRoom_management
INNER JOIN restStaff 
ON restRoom_management.headwaiter = restStaff.staff_no
WHERE first_name = 'Charles' AND room_date = '1602%' AND room_name = 'Green'; 

-- 3

SELECT R1.first_name, R2.surname 
FROM restStaff R1
INNER JOIN restStaff R2  
ON R1.headwaiter = R2.headwaiter AND R1.first_name = 'Zoe' and R1.surname = 'Ball';

-- 4

SELECT R1.cust_name, R1.bill_total, R2.first_name, R2.surname
FROM restBill R1
INNER JOIN restStaff R2
ORDER BY R1.bill_total DESC;

-- 5

SELECT R1.first_name, R1.surname
FROM restStaff R1 
INNER JOIN restBill R2 
ON R1.staff_no = R2.waiter_no 
WHERE R2.bill_no = '00014' AND '00017';

-- 6

SELECT R1.first_name, R1.surname
FROM restStaff R1 
INNER JOIN restRoom_management R2 
ON R1.headwaiter = R2.headwaiter 
WHERE room_name = 'Blue' AND room_date = '160312'; 
