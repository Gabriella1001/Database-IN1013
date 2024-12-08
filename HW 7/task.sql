--1

CREATE VIEW samsBills AS 
SELECT R2.first_name, R2.surname, R1.bill_date, R1.cust_name, R1.bill_total
FROM restBill R1
JOIN restStaff R2 ON R1.waiter_no = R2.staff_no 
WHERE R2.first_name = "Sam" AND R2.surname = "Pitt";

--2 

SELECT bill_total, cust_name, bill_date 
FROM samsBills
WHERE bill_total > 400; 

--3 
CREATE VIEW roomTotals AS
SELECT R1.room_name, SUM(R2.bill_total) AS total_sum
FROM restRest_table R1 
JOIN restBill R2 ON R1.table_no = R2.table_no
GROUP BY R1.room_name;

--4 
CREATE VIEW teamTotals AS 
SELECT CONCAT(R1.first_name, " ", R1.surname) AS headwaiter_name, SUM(R2.total_sum) AS total_sum 
FROM restStaff R1 
JOIN restRoom_management R3 ON R1.staff_no = R3.headwaiter
JOIN roomTotals R2 ON R3.room_name = R2.room_name
GROUP BY headwaiter_name;