
DROP TABLE assigment;
DROP TABLE animal;
DROP TABLE enclosure;
DROP TABLE staff;

CREATE TABLE staff(
id SERIAL PRIMARY KEY,
name VARCHAR(255),
employeeNumber INT,
);

CREATE TABLE enclosure(
id SERIAL,
name VARCHAR(255),
capacity INT,
closedForMaintenance BOOLEAN,
);

CREATE TABLE animal(
id SERIAL,
name VARCHAR(255),
type VARCHAR(255),
age INT,
enclosure_id INT REFERENCES enclosure(id)
);

CREATE TABLE assignment(
id SERIAL PRIMARY KEY,
employeeId INT REFERENCES staff(id),
enclosureId INT REFERENCES enclosure(id),
day VARCHAR(255), 
);

INSERT INTO animal(name, type, age, enclosure_id) VALUES ('Simba','Lion',5,1);
INSERT INTO animal(name, type, age, enclosure_id) VALUES ('Mufasa','Lion',8,1);
INSERT INTO animal(name, type, age, enclosure_id) VALUES ('Scar','Lion',7,1);

INSERT INTO enclosure(name,capacity,closedForMaintenance) VALUES ('Big Cat Field',10,FALSE);
INSERT INTO enclosure(name,capacity,closedForMaintenance) VALUES ('Big Rhino Field',5,TRUE);

INSERT INTO staff(name,employeeNumber) VALUES('Susan',123);
INSERT INTO staff(name,employeeNumber) VALUES('Debrah',345);

INSERT INTO assignment(employeeId, enclosureId, day) VALUES (1, 1, 'Friday');
INSERT INTO assignment(employeeId, enclosureId, day) VALUES (2, 2, 'Tuesday');