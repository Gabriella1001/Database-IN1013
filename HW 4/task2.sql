INSERT INTO petPet VALUES
    ("Hammy","Diane","hampster","M","2010-10-30",NULL);

INSERT INTO petEvent (petname, eventdate, eventtype, remark) VALUES 
    ("Fluffy","2020-10-15","vet","antibiotics"),
    ("Hammy","2020-10-15","vet","antibiotics");

UPDATE petEvent 
SET remark = "5 kittens, 3 female, 2 male"
WHERE event_ID = "1";

UPDATE petEvent 
SET petname = "Claws"
WHERE event_ID = "5"; 

UPDATE petPet 
SET death = "2020-09-01"
WHERE petname = "Puffball"; 

DELETE FROM petEvent WHERE petname = "Buffy" AND event_ID IN ("2","3");

DELETE FROM petPet WHERE species = "dog" AND owner = "Harold"; 







