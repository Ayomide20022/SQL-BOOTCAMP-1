---Date: January 21st 2024

---SQL BOOTCAMP FINAL PROJECT BY TIM JONES TECH HUB 

-- BY AYOMIDE GBADAMOSI 

--Oveerview:
--This report analyese the Buying and selling of mobile phones, which include's their features,price and conditions which the customer can make their preference and competitor activities.
-- There are 4000 mobile Phones but After cleaning the data we have 20 mobile phones


-- Step 1: Create the mobile Table
CREATE TABLE mobile (
    ID INT PRIMARY KEY,
    mobile NVARCHAR(50),
    ROM NVARCHAR(50),
    colour NVARCHAR(50),
    type NVARCHAR(50),
    description NVARCHAR(150),
    price FLOAT
);

-- Step 2: Load data from CSV into the table
-- Load data from CSV into the table
-- This step depends on the database system being used. For example, in PostgreSQL:
--COPY Phone_Data FROM 'path/to/Document/SQL PDF/extracted_mobile_data.csv' DELIMITER ',' CSV HEADER;

-- Step 3: Total Records Before cleaning
--Total Records Before Cleaning: This will give the count of all records in the mobile_data table before any cleaning.
Select COUNT(*) as total_records_before_cleaning From mobile_data;

-- Step 4: Identify duplicates
SELECT mobile,ROM,colour,type,description,price, COUNT(*) AS mobile_count
FROM mobile_data
GROUP BY mobile,ROM,colour,type,description,price
HAVING COUNT(*) > 1;

-- Step 5: Remove duplicates, keeping only one instance
DELETE FROM mobile_data
WHERE id NOT IN (
    SELECT MIN(id)
    FROM mobile_data
    GROUP BY mobile,ROM,colour,type,description,price
);

-- Step 6: Total Records After Cleaning
--Total Records After Cleaning: This will give the count of records after duplicates have been removed.
Select COUNT(*) as total_records_after_cleaning From mobile_data;

-- Step 7: Summary of total records before and after cleaning
SELECT 
    (SELECT COUNT(*) FROM mobile_data) AS total_records_after_cleaning,
    (SELECT COUNT(*) FROM mobile_data) AS total_records_before_cleaning;

-- Step 8: Questions and Queries 

Select*
From mobile_data

--Question 1 What is the average price of brand new phones?
Select AVG(price) AS average_price
From mobile_data
Where type = 'brand new'

--Question 2:Which colour of phones is the most advertised?
Select colour, COUNT(colour) AS ad_count
From mobile_data
Group by colour
Order by ad_count DESC

---Question 3:What is the total number of refurbished phones advertised?
Select type, COUNT(type) as total_type
From mobile_data
Where type='Refurbished'
Group by type

---Question 4:What is the highest price of used phone?
Select MAX(price) AS highest_price
From mobile_data
Where [type] = 'Used'

---Question 5:Which type of phone has the highest average price?
Select  MAX(price) as highest_price,MAX(mobile) as highest_Mobile
From mobile_data

---Question 6:How many Phones have a ROM of 128GB?
Select ROM, COUNT(ROM) as total_ROM
From mobile_data
Where ROM='128GB'
Group by ROM

---Question 7:What is the average price of phones with a ROM of 64GB?
Select AVG(price) as Average_Price
From mobile_data
Where ROM='64GB'

---Question 8:Which mobile brand is most advertised?
select COUNT([mobile]) as ad_mobile
From mobile_data
Group by [mobile]
Order by ad_mobile desc

---Question 9:What is the total number of phones advertised with a price less than #140,000?
Select price, COUNT(price) as total_price
From mobile_data
Where price<140000
GROUP by price

---Question 10: Calculate the average price of bulk price brand new phones
Select AVG(price) as average_price
From mobile_data
Where type = 'bulk prices brand new'


--Conclusion
--By following these steps, we can effectively load the data, count the records before and after cleaning, and remove duplicates from the dataset.
--The SQL queries provided will help in executing these tasks in a structured manner.   
Select*
From mobile_data