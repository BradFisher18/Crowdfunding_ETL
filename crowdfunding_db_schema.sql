--Create contacts table
CREATE TABLE contacts (
	contact_id INT NOT NULL PRIMARY KEY,
	first_name VARCHAR,
	last_name VARCHAR,
	email VARCHAR
);

--Import contacts.csv
-- Show contacts table
SELECT * FROM contacts;


--Create category table
CREATE TABLE category (
	category_id VARCHAR PRIMARY KEY,
	category VARCHAR
);

--Import category.csv
-- Show category table
SELECT * FROM category;


--Create Subcategory table
CREATE TABLE subcategory (
	subcategory_id VARCHAR PRIMARY KEY,
	subcategory VARCHAR
);

--Import subcategory.csv
--Show subcategory table
SELECT * FROM subcategory;


--Create campaign table
CREATE TABLE campaign (
	cf_id INT NOT NULL PRIMARY KEY,
	contact_id INT NOT NULL,
	FOREIGN KEY (contact_id) REFERENCES contacts(contact_id),
	company_name VARCHAR,
	description VARCHAR,
	goal DECIMAL,
	pledged DECIMAL,
	outcome VARCHAR,
	backers_count INT,
	country VARCHAR(2),
	currency VARCHAR(3),
	launched_date VARCHAR,
	end_date VARCHAR,
	category_id VARCHAR,
	FOREIGN KEY (category_id) REFERENCES category(category_id),
	subcategory_id VARCHAR,
	FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id)
);

--Import campign.csv
--Show campaign table
SELECT * FROM campaign;