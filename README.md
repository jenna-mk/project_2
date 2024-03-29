# Project 2: ETL Pipeline
This project involves building an ETL pipeline using Python, Pandas, and Python dictionary methods or regular expressions to extract and transform the provided data, with an output of four dataframes and one database connecting the created tables.

## Category and Subcategory DataFrames 
To create the category and subcategory dataframes, the crowdfunding.xlsx file (found in Starter_Files/Resources) was imported, and then modified so the category & subcategory column was split into two separate columns. Each column was extracted to a new dataframe with the following columns:
* category_id / subcategory_id
* category / subcategory

The generated id starts at 1 and goes up to _n_, where _n_ is the total number of unique categories or subcategories. These dataframes were exported as csv files and can be found in Starter_Files/Resources/category.csv and subcategory.csv.

## Campaign DataFrame 
To create the campaign dataframe, the crowdfunding.xlsx file was again imported and the following columns extracted into the new dataframe:
* cf_id
* contact_id
* company_name
* blurb
* goal
* pledged
* outcome
* backers_count
* country
* currency
* launched_at
* deadline
* category_id
* subcategory_id

The blurb column was renamed description. The launched_at column was renamed launch_date, and the data converted from UTC times to datetime format. The deadline column  was renamed end_date, and the data converted from UTC times to datetime format. Both the category_id and subcategory_id columns contained unique identification numbers referring back to those in the category and subcategory dataframes. This dataframe was exported as a csv file and can be found in Starter_Files/Resources/campaign.csv.

 ## Contacts DataFrame
To create this dataframe, we chose to use regular expressions instead of Python dictionary methods. The contacts.xlsx file was imported and the following columns extracted into a new dataframe:
 * contact_id
 * name
 * email

The contact_id column was converted into the integer type. The name column was split into the first and last name, with each value placed into the new columns first_name and last_name. The dataframe was cleaned and exported as a csv file, which can be found in Starter_Files/Resources/contacts.csv.

## Crowdfunding Database
The final step was to create a database relating all of the tables we created. To do this, we inspected each CSV file and created a diagram of their relationships using QuickDBD. This diagram can be found in Starter_Files/Resources/project_2_erd.png. Using pgAdmin, we created a new database called crowdfunding_db and added the table schemas for each CSV file, using the created ERD as a guide. After the schemas were created, each of the four CSV files were imported into their respective tables and a SELECT * statement was run for each to ensure proper creation and importation. The sql file for this section can be found in Starter_Files/Resources/crowdfunding_db_schema.sql.

## References 
Data for this dataset was generated by edX Boot Camps LLC, and is intended for educational purposes only.
