INSERT INTO petPet VALUES
    ("Hammy","Diane","Hampster","M","2010-10-30",NULL);

INSERT INTO petEvent VALUES 
    ("Fluffy","2020-10-15","vet","antibiotics","12"),
    ("Hammy","2020-10-15","vet","antibiotics","13");

UPDATE petEvent 
SET remark = "5 kittens, 3 female, 2 male"
WHERE event_ID = "1";

UPDATE petEvent 
SET petname = "Claws"
WHERE event_ID = "5"; 

UPDATE petPet 
SET death = "2020-09-01"
WHERE petname = "Puffball"; 

DELETE FROM petPet WHERE petname = "Buffy" AND owner = "Harold";






