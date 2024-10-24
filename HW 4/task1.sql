 CREATE TABLE petPet
    -> (
    -> petname VARCHAR (20) NOT NULL,
    -> owner VARCHAR (20) NOT NULL,
    -> species VARCHAR (45) NOT NULL,
    -> gender VARCHAR (15) NOT NULL,
    -> birth INT (6) NOT NULL,
    -> death INT (6) NULL
    -> ;
 CREATE TABLE petEvent (petname VARCHAR(20) NOT NULL,
    -> eventdate DATE NOT NULL,
    -> remark VARCHAR (20) NOT NULL,
    -> eventID INT(6) NOT NULL,
    -> PRIMARY KEY(eventID));
 ALTER TABLE petEvent
    -> ADD FOREIGN KEY(petname) REFERENCES petPet(petname);