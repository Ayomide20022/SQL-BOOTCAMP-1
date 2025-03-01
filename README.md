### DOCUMENTATION FOR SQL BOOTCAMP FINAL PROJECT BY TIM JONES TECH HUB

# Project Title: Analysis of Mobile Phone Buying and Selling

## Author: Gbadamosi Ayomide

## Date: January 21st, 2024

# Problem Statement:

The objective of this project is to analyze the buying and selling of mobile phones, focusing
on their features, prices, and conditions. The analysis aims to provide insights into
customer preferences and competitor activities based on a dataset of mobile phones.
Initially, the dataset contained 4,000 records, but after data cleaning, we focused on 20
unique mobile phone entries.

# Data Cleaning Process

## Step 1: Create the Phone Data Table

We created a table named mobile_data to store the relevant information about mobile
phones, including their ID, model, ROM, color, type, description, and price.

## Step 2: Load Data from CSV

Data was loaded from a CSV file into the mobile_data table. The specific command used
depends on the database system in use.

## Step 3: Total Records Before Cleaning

We counted the total records in the mobile_data table before any cleaning.


## Step 4: Identify Duplicates

We identified duplicate entries based on the mobile model and ROM.

## Step 5: Remove Duplicates

We removed duplicate entries, keeping only one instance of each.

## Step 6: Total Records After Cleaning

We counted the total records in the mobile_data table after cleaning.

## Step 7: Summary of Total Records

We summarized the total records before and after cleaning.

# Insights and Queries

**Question 1: What is the average price of brand-new phones: 1290555**

**Question 2: Which color of phones is the most advertised: Black which is 7**

## Question 3: What is the total number of refurbished phones advertised: 1

**Question 4: What is the highest price of used phones: 1100000**

**Question 5: Which type of phone has the highest average price: Samsung Galaxy S**

**FE 5G and the Highest average Price 2340000**

**Question 6: How many phones have a ROM of 128GB: 5**

**Question 7: What is the average price of phones with a ROM of 64GB: 332533**

```
Question 8: Which mobile brand is most advertised: 20
```
**Question 9: What is the total number of phones advertised with a price less than
#140,000= 40,**


**Question 10: Calculate the average price of bulk price brand new phones: 255500**

# Conclusion

Through this project, we successfully loaded the data, counted records before and after
cleaning, and removed duplicates from the dataset. The SQL queries provided valuable
insights into the mobile phone market, including average prices, most advertised colors,
and types of phones.

**Suggestions:** While importing the flat file into the Database I had to change the name of the
file I imported into the database, also I changed the name of one of the column names
**(unnamed to ID)** , also notice that there were some problems with the Data type which
was in **INT** which is wrong and had to change to **FLOAT** which Price carries external
numbers in the data file.

## Recommendations

1. **Market Focus** : Based on the analysis, focus marketing efforts on the most
    advertised colors and brands.
2. **Pricing Strategy** : Consider competitive pricing strategies for refurbished and used
    phones, as they may attract budget-conscious customers.
3. **Inventory Management** : Maintain a balanced inventory of different types of
    phones to cater to diverse customer preferences.


