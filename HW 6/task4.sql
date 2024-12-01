-- 1

SELECT cust_name 
FROM restBill 
WHERE waiter_no IN
    (SELECT staff_no 
    FROM restStaff 
    WHERE first_name = 'Charles'
) AND bill_total > 450.00; 

-- 2

SELECT first_name, surname
FROM restStaff
WHERE staff_no IN  
    (SELECT headwaiter
     FROM restRoom_management
     WHERE room_date = 160111
     AND room_name IN 
         (SELECT table_no
          FROM restBill
          WHERE cust_name = 'Nerida %' AND bill_date - 160111));

-- 3

SELECT cust_name 
FROM restBill 
WHERE bill_total = 
(SELECT MIN(bill_total) 
FROM restBill);

-- 4

SELECT first_name, surname 
FROM restStaff
WHERE staff_no NOT IN 
(SELECT DISTINCT waiter_no 
FROM restBill);

-- 5

SELECT cust_name R1, first_name R2, surname R2, room_name R3
FROM restBill R1
JOIN restStaff R2 ON R1.waiter_no = R2.staff_no
JOIN restRest_table R3 ON R1.table_no = R3.table_no
WHERE R1.bill_total = 
(SELECT MAX(bill_total) 
FROM restBill) 
AND R3.room_name IN 
(SELECT room_name 
FROM restRoom_management
WHERE headwaiter = R2.staff_no 
AND room_date = R1.bill_date 
);


