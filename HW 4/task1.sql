CREATE TABLE petPet (
    petname VARCHAR(20) PRIMARY KEY, 
    owner VARCHAR(45), 
    species VARCHAR(45),
    gender CHAR(1),
    birth DATE,
    death DATE
);

CREATE TABLE petEvent (
    petname VARCHAR(20),
    eventdate DATE, 
    eventtype VARCHAR(15),
    remark VARCHAR(255),
    event_ID INT(30),
    PRIMARY KEY (event_ID),
    FOREIGN KEY (petname) REFERENCES petPet (petname)
);
