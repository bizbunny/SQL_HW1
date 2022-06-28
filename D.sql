DROP TABLE Emps;

CREATE TABLE Emps (
    empID NUMBER(6),
    ssNo NUMBER(8),
    name VARCHAR(20),
    mgrID NUMBER(6) REFERENCES Emps,
    PRIMARY KEY(empID)
);