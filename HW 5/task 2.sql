
-- 1

SELECT SUM(bill_total)
FROM rest_bill
ALTER TABLE rest_bill 
RENAME bill_total to Income;

-- 2

SELECT SUM (bill_total)
FROM rest_bill 
WHERE bill_date = "1602%"
ALTER TABLE rest_bill 
RENAME bill_total to Feb Income; 

-- 3

SELECT AVG(bill_total) 
FROM rest_bill 
WHERE table_no = 002;

…

-- 4

SELECT MIN(no_of_seats) AS Min, MAX(no_of_seats) AS Max, AVG(no_of_seats) AS Avg
FROM restRest_table
WHERE room_name = "Blue";

-- 5

SELECT DISTINCT COUNT(table_no) 
FROM restBill 
WHERE water_no IN (004,002);


…
