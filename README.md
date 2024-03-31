# Crowdfunding_ETL


**Precedent of the Project:**

ETL stands for (Extract, Transform, and Load) and is a basic skill to work with data. Data is everywhere and a data analyst should have scattered from multiple resources and it can be messy. 
Knowing how to ETL data is a critical concept as it gives us the strength to clean, up-to-date, and accurate data. This skill will give us the power to manipulate data types, fix formatting issues, and create additional columns to rich out meaningful insight from data. In the following project, we extracted and converted the data, generated four CSV files, and utilized them to develop an Entity Relationship Diagram (ERD) and a table schema. Finally, I uploaded the CSV files to a PostgreSQL database.
 
**How we did:**

This is a collaborative project between Mana Naseri & Naqibllah Falak, to construct an ETL pipeline using Python, Pandas, and PostgreSQL for extracting, transforming, and loading crowdfunding data from Excel files into a relational database. 

**Sources of Data:**

Within the Resources Folder as uploaded on the repository:
* contacts.xlsx
* crowdfunding.xlsx

**Main Tasks:**
* Create the Category and Subcategory DataFrames
* Create the Campaign DataFrame
* Create the Contacts DataFrame
* Create the Crowdfunding Database


**Create the Category and Subcategory DataFrames**

1. Extract and transform the crowdfunding.xlsx Excel data to create a category DataFrame that has the following columns:
* A "category_id" column that has entries going sequentially from "cat1" to "catn", where n is the number of unique categories
* A "category" column that contains only the category titles
2. Export the category DataFrame as category.csv and save it to your GitHub repository.
3. Extract and transform the crowdfunding.xlsx Excel data to create a subcategory DataFrame that has the following columns:
* A "subcategory_id" column that has entries going sequentially from "subcat1" to "subcatn", where n is the number of unique subcategories
* A "subcategory" column that contains only the subcategory titles
4. Export the subcategory DataFrame as subcategory.csv and save it to your GitHub repository.

**Create the Campaign DataFrame**

1. Extract and transform the crowdfunding.xlsx Excel data to create a campaign DataFrame has the following columns:
* The "cf_id" column
* The "contact_id" column
* The "company_name" column
* The "blurb" column, renamed to "description"
* The "goal" column, converted to the float data type
* The "pledged" column, converted to the float data type
* The "outcome" column
* The "backers_count" column
* The "country" column
* The "currency" column
* The "launched_at" column, renamed to "launch_date" and with the UTC times converted to the DateTime format
* The "deadline" column, renamed to "end_date" and with the UTC times converted to the DateTime format
* The "category_id" column, with unique identification numbers matching those in the "category_id" column of the category DataFrame
* The "subcategory_id" column, with the unique identification numbers matching those in the "subcategory_id" column of the subcategory DataFrame
2. Export the campaign DataFrame as campaign.csv and save it to your GitHub repository.

**Create the Contacts DataFrame**

1. Choose one of the following two options for extracting and transforming the data from the contacts.xlsx Excel data:
* Option 1: Use Python dictionary methods.
* Option 2: Use regular expressions.
2. If you chose Option 1, complete the following steps:
* Import the contacts.xlsx file into a DataFrame.
* Iterate through the DataFrame, converting each row to a dictionary.
* Iterate through each dictionary, doing the following:
* Extract the dictionary values from the keys by using a Python list comprehension.
* Add the values for each row to a new list.
* Create a new DataFrame that contains the extracted data.
* Split each "name" column value into a first and last name, and place each in a new column.
* Clean and export the DataFrame as contacts.csv and save it to your GitHub repository.
3. If you chose Option 2, complete the following steps:
* Import the contacts.xlsx file into a DataFrame.
* Extract the "contact_id", "name", and "email" columns by using regular expressions.
* Create a new DataFrame with the extracted data.
* Convert the "contact_id" column to the integer type.
* Split each "name" column value into a first and a last name, and place each in a new column.
* Clean and then export the DataFrame as contacts.csv and save it to your GitHub repository.

**Create the Crowdfunding Database**

1. Inspect the four CSV files, and then sketch an ERD of the tables by using QuickDBDLinks to an external site.
2. Use the information from the ERD to create a table schema for each CSV file.
3. Save the database schema as a Postgres file named crowdfunding_db_schema.sql, and save it to your GitHub repository.
4. Create a new Postgres database, named crowdfunding_db.
5. Using the database schema, create the tables in the correct order to handle the foreign keys.
6. Verify the table creation by running a SELECT statement for each table.
7. Import each CSV file into its corresponding SQL table.
8. Verify that each table has the correct data by running a SELECT statement for each

**Finding:**

Our looking shows:
* The "theater" category had the highest success percentage, while the "journalism" and "games" categories had lower success rates.
* The "plays" subcategory had the most successful projects, with 187 out of 319 completed successfully, showing a relatively high success rate. 
* The "Theater" category had the most promised amounts, totaling $15,763,227, followed by "film & video", "music", "publishing", and "technology", demonstrating better crowdfunding support in these areas compared to others such as "journalism" and "games".
* The United States (US) had the most pledged amounts, totaling $31,409,336, followed by Canada (CA) with $2,812,788, and the United Kingdom (GB) with $2,192,705, suggesting strong crowdfunding activity in these nations.

**Nutshell:**

As sum up, the data shows that "theater," "film & video," and "music" are the most successful categories for crowdfunding projects, while "journalism" and "games" have poor success rates. Similarly, the subcategories "plays", "photography books", "web", "food trucks", and "wearables" have relatively high success percentages, but "audio", "science fiction", and "world music" have lower success rates. The United States, Canada, and the United Kingdom have the highest overall pledged sums, demonstrating that these countries embrace crowdfunding more than others.
 









