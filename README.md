# Digital Music Store - Chinook Database

## 1. Executive Summary 
- The Chinook Database analysis reveals top customer spending, employee performance in invoice processing, 
and popular music genres. This comprehensive SQL-driven case study offers insights into sales dynamics, 
customer behavior, and employee contributions, providing valuable strategic perspectives for the music store's 
management. 

## 2. Introduction: 
- in the dynamic world of music retail, understanding customer behavior, employee performance, and market trends is 
crucial for making informed business decisions. The Chinook Database serves as a comprehensive repository of 
information for a fictional music store, capturing data on customers, employees, invoices, media types, genres, artists, 
albums, playlists, and more. 

## 3. Objectives 
- This case study delves into the intricacies of the Chinook Database, employing SQL queries to extract meaningful insights 
and address key questions. By Benefit from the relationships between various tables, we aim to uncover valuable 
information about customer spending patterns, popular genres, and other aspects critical to optimizing the music store's 
operations.

## 4. Tools Used

- DB Browser for SQLite : Employed for managing the database and executing SQL queries.


## 5. Data Overview

### 1. Customer Table:
- **CustomerId** (Primary Key)
- FirstName
- LastName
- Company
- Address
- City
- State
- Country
- PostalCode
- Phone
- Fax
- Email
- **SupportRepId** (Foreign Key referencing EmployeeId)

### 2. Employee Table:
- **EmployeeId** (Primary Key)
- LastName
- FirstName
- Title
- **ReportsTo** (EmployeeId referencing another employee, indicating the manager)
- BirthDate
- HireDate
- Address
- City
- State
- Country
- PostalCode
- Phone
- Fax
- Email

### 3. Invoice Table:
- **InvoiceId** (Primary Key)
- **CustomerId** (Foreign Key referencing CustomerId)
- InvoiceDate
- BillingAddress
- BillingCity
- BillingState
- BillingCountry
- BillingPostalCode
- Total

### 4. InvoiceLine Table:
- **InvoiceLineId** (Primary Key)
- **InvoiceId** (Foreign Key referencing InvoiceId)
- **TrackId** (Foreign Key referencing TrackId)
- UnitPrice
- Quantity

### 5. Track Table:
- **TrackId** (Primary Key)
- Name
- **AlbumId** (Foreign Key referencing AlbumId)
- **MediaTypeId** (Foreign Key referencing MediaTypeId)
- **GenreId** (Foreign Key referencing GenreId)
- Composer
- Milliseconds
- Bytes
- UnitPrice

### 6. MediaType Table:
- **MediaTypeId** (Primary Key)
- Name

### 7. Genre Table:
- **GenreId** (Primary Key)
- Name

### 8. Artist Table:
- **ArtistId** (Primary Key)
- Name

### 9. Album Table:
- **AlbumId** (Primary Key)
- Title
- **ArtistId** (Foreign Key referencing ArtistId)

### 10. Playlist Table:
- **PlaylistId** (Primary Key)
- Name

### 11. PlaylistTrack Table:
- **PlaylistId** (Composite Foreign Key referencing PlaylistId)
- **TrackId** (Composite Foreign Key referencing TrackId)

## 6. the schema for the Chinook Database: 

![image](https://github.com/Abdelrahman-Hatem/SQL-Project-chinook-db-Project/assets/60587162/c305bacc-93ef-428f-bd2d-c739363df5b1)


## 7. Analysis

### 1. Customer Analysis:
- **Identify top customers in terms of total spending:** 

- **Understand customer demographics and location:**


### 2. Employee Performance:
- **Evaluate the performance of sales support representatives:**


### 3. Inventory Management:
- **How much was spent overall on each genre of music?**

    
### 4. Sales Insights:
- **Examine sales trends over time:**

- **Identify high-performing genres and artists:**

- **How many bills of the most common music for each country?**

- **Identify top ten musicians and their total earnings for each one:**


## Scenario 1: Customer Analysis
### •	Question 1: Who are the top customers in terms of total spending?

![image](https://github.com/Abdelrahman-Hatem/SQL-Project-chinook-db-Project/assets/60587162/5dcd7b56-e93d-4dcf-ab39-a8487f217b97)

![image](https://github.com/Abdelrahman-Hatem/SQL-Project-chinook-db-Project/assets/60587162/16b5ec4e-c7b7-4925-8eb0-8aa7ff2fb27b)

-	Helena From Czech Republic came in first which spent money in music amount 49.62$.
-	The United States holds four records for the most common customer spending on music Richard, Julia, Frank, and Victor.

### • Question 2: what the customer demographics and location are.
![image](https://github.com/Abdelrahman-Hatem/SQL-Project-chinook-db-Project/assets/60587162/7a4e3147-6bde-4ff3-9677-080dfaefd31b)

![image](https://github.com/Abdelrahman-Hatem/SQL-Project-chinook-db-Project/assets/60587162/b8b69a34-db66-4024-a8c3-2302ddf4f8d7)

-	The USA has the highest number of customers with 13, followed by Canada with 8.
-	The distribution of customers across other countries varies, with several countries having 1 or 2 customers each.


## Scenario 2: Employee Performance
### • Question 1: How many invoices has each employee processed?
- This summary provides a quick overview of the total invoices processed by each employee, highlighting the top performers and those who haven't processed any invoices.

![image](https://github.com/Abdelrahman-Hatem/SQL-Project-chinook-db-Project/assets/60587162/ed0a3234-acc8-40de-9809-fc27d6831c0d)

![image](https://github.com/Abdelrahman-Hatem/SQL-Project-chinook-db-Project/assets/60587162/4685f09b-9b1d-40e0-ad9b-1103b78dc7da)


-	Jane Peacock has processed the highest number of invoices (146).
-	Margaret Park follows with 140 invoices processed.
-	Steve Johnson is the third highest with 126 invoices processed.
-	Employees Andrew Adams, Nancy Edwards, Michael Mitchell, Robert King, and Laura Callahan have not processed any invoices (Total Invoices is 0).


## Scenario 3: Genre Popularity
### - Question 1: How much was spent overall on each genre of music?

![image](https://github.com/Abdelrahman-Hatem/SQL-Project-chinook-db-Project/assets/60587162/b912dcf4-0ef6-4914-a40c-be309bfaf8e7)

![image](https://github.com/Abdelrahman-Hatem/SQL-Project-chinook-db-Project/assets/60587162/2b854e04-8b99-4370-b68c-93206cce9fd4)

- At $827 Rock Music had the highest total spend. 
- To Maximize Revenue should increase production in Genre Music Rock, Latin, Metal and Alternative & Punk.


## Scenario 4: Sales Insights:
### -	Question 1: Sales Trends Over Time

![image](https://github.com/Abdelrahman-Hatem/SQL-Project-chinook-db-Project/assets/60587162/b3a76f72-2936-41c3-8339-c4486ffd31e2)

![image](https://github.com/Abdelrahman-Hatem/SQL-Project-chinook-db-Project/assets/60587162/03147ea8-b5fb-4d02-b192-7832444d10c9)

- Stable Monthly Sales: From 2009 to 2012, the total monthly sales remain relatively constant at around $37.62. There are minor fluctuations, but no significant upward or downward trends during this period.

- Increase in 2010-2011: There's a notable increase in total sales starting in January 2010, peaking in March 2011.

### - Question 2: High-Performing Genres and Artists

![image](https://github.com/Abdelrahman-Hatem/SQL-Project-chinook-db-Project/assets/60587162/d8635593-dd6d-41ba-82a3-8a536a83ab48)

- The high-performing genres in the Chinook Music Store are Metal and Rock, with Metallica and U2 leading in sales.


### -	Question 3: What is the number of bills of the most common music for each country?

![image](https://github.com/Abdelrahman-Hatem/SQL-Project-chinook-db-Project/assets/60587162/941c5f46-4f5d-4727-8e7f-10ace13a8da9)

![image](https://github.com/Abdelrahman-Hatem/SQL-Project-chinook-db-Project/assets/60587162/a9dfb28a-66f6-4a63-bc1d-24f8dee75740)

-	The USA came in first with the largest market with Rock Music 157 solid units.
- Rock music is the most common music in all countries except Sweden, where the genre Latin is most common.


### - Question 4: What are the top ten musicians and their total earnings for each one?	

![image](https://github.com/Abdelrahman-Hatem/SQL-Project-chinook-db-Project/assets/60587162/3a1fe0c4-101a-46db-9f18-3f0269e043fe)

![image](https://github.com/Abdelrahman-Hatem/SQL-Project-chinook-db-Project/assets/60587162/b65614a1-f933-4cb8-b9dc-9e40a2af187f)

- Iron Maiden came in first with the highest total earnings amount at $138.6. 
-	To Maximize Revenue, should increase the production of songs for Iron Maiden and U2


## 8. Recommendations
#### 1 -	Offer incentives to top customers to foster motivation and encourage their continued loyalty to the company.
#### 2 -	Seek feedback from customers on why they prefer Rock Music over other genres. Utilize this input to enhance and diversify the overall music collection.
#### 3 -	Enhance propaganda and promotional efforts for a broader range of music genres to attract new customers, ultimately boosting the company's revenue.
#### 4 -	Recognize and celebrate all artists contributing significantly to the company's revenue by writing Rock music. Acknowledging their contributions can strengthen the connection with customers.

##  Conclusion:
#### - In conclusion, the analysis of the Chinook Music Store's data has provided valuable insights into customer preferences, high-performing genres, and artist contributions to the company's revenue. The recommendations outlined aim to optimize various aspects of the business.
