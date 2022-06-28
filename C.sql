DROP TABLE Cars;

CREATE TABLE Cars (
    CarID number(5) primary key,
    VIN number(10) CONSTRAINT vinNum UNIQUE,
    Color char(15),
    Brand varchar2(25),
    Make varchar(20),
    YearofMake number(4)
);

INSERT INTO Cars VALUES(123, 3456783412, 'Red', 'Toyota', 'Camry', 2010);
INSERT INTO Cars VALUES(234, 2876309034, 'Blue', 'Toyota', 'Corolla', 2003);

INSERT INTO Cars VALUES (235, 3456783412, 'Silver', 'Toyota', 'Camry', 2010);

ALTER TABLE Cars DROP CONSTRAINT vinNum;