-- Drop tables if exist already
DROP TABLE IF EXISTS contacts CASCADE;
DROP TABLE IF EXISTS category CASCADE;
DROP TABLE IF EXISTS subcategory CASCADE;
DROP TABLE IF EXISTS campaign CASCADE;

-- Create contacts table 
CREATE TABLE contacts (
	contact_id INTEGER PRIMARY KEY NOT NULL,
	first_name VARCHAR(255),
	last_name VARCHAR(255),
	email VARCHAR(255)
);

-- Create category table 
CREATE TABLE category (
	category_id VARCHAR(255) PRIMARY KEY NOT NULL,
	category VARCHAR(255)
);

-- Create subcategory table 
CREATE TABLE subcategory (
	subcategory_id VARCHAR(255) PRIMARY KEY NOT NULL,
	subcategory VARCHAR(255)
);

-- Create campaign table 
CREATE TABLE campaign (
	cf_id INTEGER PRIMARY KEY NOT NULL,
	contact_id INTEGER NOT NULL,
	company_name VARCHAR(255),
	description VARCHAR(255),
	goal REAL,
	pledged REAL,
	outcome VARCHAR(255),
	backers_count INTEGER,
	county VARCHAR(255),
	currency VARCHAR(255),
	launched_date DATE,
	end_date DATE,
	category_id VARCHAR(255) NOT NULL,
	subcategory_id VARCHAR(255) NOT NULL
);

-- Add foreign key constraints 
ALTER TABLE campaign
ADD CONSTRAINT fk_campaign_contact_id
FOREIGN KEY (contact_id)
REFERENCES contacts (contact_id);

ALTER TABLE campaign 
ADD CONSTRAINT fk_campaign_category_id
FOREIGN KEY (category_id)
REFERENCES category (category_id);

ALTER TABLE campaign
ADD CONSTRAINT fk_campaign_subcategory_id
FOREIGN KEY (subcategory_id)
REFERENCES subcategory (subcategory_id);

-- Select the data from the created tables
SELECT * FROM contacts; 
SELECT * FROM category; 
SELECT * FROM subcategory; 
SELECT * FROM campaign; 