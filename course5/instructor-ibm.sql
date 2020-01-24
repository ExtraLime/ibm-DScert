drop table INSTRUCTOR;

CREATE TABLE INSTRUCTOR (ins_id int, lastname VARCHAR(15), firstname VARCHAR(15), city VARCHAR(15), country CHAR(2));

INSERT INTO INSTRUCTOR (ins_id, lastname, firstname, city, country) VALUES ('1', 'Ahuja', 'Rav', 'Toronto', 'CA');

INSERT INTO INSTRUCTOR (ins_id, lastname, firstname, city, country) VALUES ('2', 'Chong', 'Raul', 'Toronto', 'CA'), ('3', 'Vasudevan', 'Hima', 'Chicago', 'US');

SELECT * FROM INSTRUCTOR;   

SELECT firstname, lastname, country from INSTRUCTOR where city = 'Toronto';

UPDATE INSTRUCTOR SET city = 'Markham' where ins_id=1;

DELETE FROM INSTRUCTOR where ins_id=2;

SELECT * FROM INSTRUCTOR;