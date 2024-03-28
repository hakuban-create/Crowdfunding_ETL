DROP TABLE IF EXISTS campaign;
DROP TABLE IF EXISTS category;
DROP TABLE IF EXISTS subcategory;
DROP TABLE IF EXISTS contacts;

CREATE TABLE category (
	category_id VARCHAR(200) NOT NULL,
    subcategory VARCHAR(200) NOT NULL,
	PRIMARY KEY (category_id)
);

CREATE TABLE subcategory (
	subcategory_id VARCHAR(200) NOT NULL,
    subcategory VARCHAR(200) NOT NULL,
	PRIMARY KEY (subcategory)
);

CREATE TABLE contacts (
	contact_id INTEGER NOT NULL,
    first_name VARCHAR(200) NOT NULL,
	last_name VARCHAR(200) NOT NULL,
	email VARCHAR(200) NOT NULL,
	PRIMARY KEY (contact_id)
);

CREATE TABLE campaign (
	cf_id PK INTEGER NOT NULL,
	contact_id INTEGER NOT NULL,
	company_name VARCHAR(200) NOT NULL,
	description VARCHAR(200) NOT NULL,
	goal FLOAT NOT NULL,
	pledged FLOAT NOT NULL,
	outcome VARCHAR(200) NOT NULL,
	backers_count INTEGER NOT NULL,
	country VARCHAR(200) NOT NULL,
	currency VARCHAR(200) NOT NULL,
	launched_date DATE NOT NULL,
	end_date DATE NOT NULL,
	category_id VARCHAR(200) NOT NULL,
	subcategory_id VARCHAR(200) NOT NULL,
	PRIMARY KEY (cf_id),
	FOREIGN KEY(contact_id) REFERENCES contacts (contact_id)
	FOREIGN KEY(category_id) REFERENCES category (category_id)
	FOREIGN KEY(subcategory_id) REFERENCES subcategory (subcategory_id)
);