CREATE DATABASE addressbook_service;
USE addressbook_service;
CREATE TABLE addressbook (
	firstName varchar(50) NOT NULL,
    lastName varchar(50) NOT NULL,
    address varchar(100),
    city varchar(20),
    state varchar(30),
    zip varchar(10),
    phoneNO varchar(20),
    email varchar(50)
);
DESC addressbook;

INSERT INTO addressbook 
VALUES 
('madhukar','tatiraju','random_address','vizag','AP','530013','9346860516','madhukar@gmail.com'),
('saran','yallanki','random_address','vizag','AP','530032','9617726229','saran@gmail.com'),
('subham','verma','random_address','gorakhpur','UP','273001','7894560516','subham@gmail.com'),
('dinesh','bodepali','random_address','vizag','AP','530009','8332860516','madhukar@gmail.com'),
('rafi','shaik','random_address','vizag','AP','530011','9982860516','rafi@gmail.com');

SELECT * FROM addressbook WHERE firstName = 'madhukar'  AND lastName = 'tatiraju';

UPDATE addressbook SET city = 'bangalore' WHERE firstName = 'madhukar' AND lastName = 'tatiraju';

DELETE FROM addressbook WHERE firstName = 'dinesh' AND lastName = 'bodepali';

SELECT firstName, lastName FROM addressbook WHERE city = 'vizag';
SELECT firstName, lastName FROM addressbook WHERE state = 'AP';

SELECT COUNT(firstName) AS contacts_count FROM addressbook WHERE city = 'vizag';
SELECT COUNT(firstName) AS contacts_count FROM addressbook WHERE state = 'ap';

SELECT * FROM addressbook ORDER BY firstName;