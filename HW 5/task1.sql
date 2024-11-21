-- 1

SELECT bill_date, bill_total
FROM restBill
WHERE cust_name = "Bob Crow";


-- 2

SELECT cust_name
FROM restBill
WHERE cust_name = "%Smith";
ORDER BY cust_name DESC;

-- 3

SELECT DISTINCT cust_name
FROM restBill 
WHERE cust_name = "%C%"; 

…

-- 4

SELECT first_name 
FROM restStaff 
WHERE headwaiter IS NULL;

-- 5

SELECT bill_date
FROM restBill
WHERE bill_date = "1602%"; //should this be in quotation marks?

-- 6

SELECT DISTINCT bill_date
FROM restBill 
WHERE bill_date = "15%" ASC; 


…