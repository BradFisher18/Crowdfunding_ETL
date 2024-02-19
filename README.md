# Project 2
The purpose of this project was to practise building an ETL pipeline. Two Excel spreadsheets are provided (contacts.xlsx and crowdfunding.xlsx), and within Jupyter Notebook these are transformed into four csv's (category, subcategory, contacts, campaign) and furthermore imported into a SQL database.
## Creation of Category and Subcategory DataFrames
In the file 'ETL_Mini_Project_BFisher.ipynb', within the Resources directory, lies the coding to extract and transform the provided category data from crowdfunding.xlsx to form two dataframes; one labelled Category and another labelled Subcategory.\
The Category Dataframe contains two columns; category_id and category. Category_id ranges from cat1 to cat 9, labelling the nine different categories.\
Similarly, the Subcategory Dataframe contains 24 unique subcategory_id and subcategory column.\
\
These two dataframes are exported as a csv file, located within the Resources directory, labelled category.csv and subcategory.csv respectively.
## Creation of the Campaign DataFrame
Also found within the file 'ETL_Mini_Project_BFisher.ipynb', the crowdfunding.xlsx was extracted and transformed to create a DataFrame with the following columns:
* cf_id
* contact_id
* company_name
* description
* goal
* pledged
* outcome
* backers_count
* country
* currency
* launch date
* end date
* category id
* subcategory id
This was also then exported as a csv file labelled 'campaign.csv' in the same directory.
## Creation of Contacts DataFrame
Using the contacts.xlsx, the data was extracted and transformed into a usable state, with the rows split and then renamed and reorganised to output the following columns in a dataframe:
* contact id
* first name
* last name
* email
This dataframe was againn exported as a csv file labelling contacts.csv
## Creation of Crowdfunding Database
Within posgreSQL, a database called crowdfunding_db was created. Within this database, the four csv files created above (contacts, category, subcategory, and campaign) were imported into tables. This schema for this can be found within the file 'crowdfunding_db_schema.sql'. The outputs of the schema and ERD can be found within the 'crowdfunding_db Outputs' directory.
## Running
For this code to run successfully, python is required to be installed along with the pandas and jupyter libraries. One method to install these programs is to download Anaconda - link below. To run this code, open the file within Jupyter, ensure that the input files are directed correctly and run!\
Anaconda install: https://docs.anaconda.com/free/anaconda/install/\
To run the engineering and analysis, a program to read in SQL is required. One example of a program is PostgreSQL, which can be downloaded with the link below and select the relevant operating system.\

PostgreSQL download: https://www.enterprisedb.com/downloads/postgres-postgresql-downloads
