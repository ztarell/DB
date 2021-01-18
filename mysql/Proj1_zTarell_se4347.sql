/* Create a table called contacts*/
CREATE TABLE contacts (
    contact_id INT NOT NULL AUTO_INCREMENT,
    first_name varchar(255),
    middle_name varchar(200),
    last_name varchar(255),
    home_phone varchar(200),
    cell_phone varchar(200),
    home_address varchar(200),
    home_city varchar(200),
    home_state varchar(200),
    home_zip varchar(10),
    work_phone varchar(200),
    work_address varchar(200),
    work_city varchar(200),
    work_state varchar(200),
    work_zip varchar(10),
    birth_date varchar(15),
    PRIMARY KEY (contact_id)
);

LOAD DATA LOCAL INFILE 'Contacts.csv' INTO TABLE contacts FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 ROWS (contact_id,first_name,middle_name,last_name,home_phone,cell_phone,home_address,home_city,home_state,home_zip,work_phone,work_address,work_city,work_state,work_zip,birth_date);

SELECT contact_id, first_name, last_name, home_city FROM contacts WHERE home_city = 'Richardson';

SELECT contact_id, first_name, last_name, home_city, work_city FROM contacts WHERE (home_city=work_city AND home_city != '' AND work_city != '');

SELECT contact_id, first_name, last_name, birth_date FROM contacts WHERE birth_date != '';

SELECT contact_id, first_name, last_name FROM contacts WHERE last_name LIKE 'S%';

SELECT home_city, COUNT(*) FROM contacts GROUP BY home_city;

