-- 1

SELECT first_name R2, surname R2, bill_date R1, bill_no R1
FROM restBill R1 
JOIN restStaff R2 
ON R1.waiter_no = R2.staff_no 
GROUP BY R2.staff_no, R1.bill_date 
HAVING COUNT (R1.bill_no) >= 2; 

-- 2

SELECT room_name, COUNT(table_no) 
FROM restRest_table
WHERE no_of_seats > 6 
GROUP BY room_name;

-- 3

SELECT room_name R1, SUM(R2.bill_total) 
FROM restRoom_management R1
JOIN restBill R2 
ON R1.room_name = R2.table_no 
GROUP BY R1.room_name;
-- 4

SELECT first_name R1, surname R1, SUM(R2.bill_total)
FROM restStaff R1
JOIN restBill R2
ON R1.staff_no = R2.waiter_no 
GROUP BY R1.staff_no 
ORDER BY SUM(bill_total) DESC;

-- 5

SELECT cust_name
FROM restBill 
GROUP BY cust_name
HAVING AVG(bill_total) > 400; 
 

-- 6

SELECT first_name, surname, COUNT(R1.bill_no) 
FROM restBill R1
JOIN restStaff R2 
ON R2.staff_no = R1.waiter_no 
GROUP BY R2.staff_no, R1.bill_date 
HAVING COUNT(R1.bill_no) >=3; 