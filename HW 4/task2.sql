INSERT INTO petPet VALUES
    ("Fluffy", "Harold", "cat", "F", "1993-02-04", NULL),
    ("Claws", "Gwen", "cat", "M", "1994-03-17", NULL),
    ("Buffy", "Harold", "dog", "F", "1989-05-13", NULL),
    ("Fang", "Benny", "dog", "M", "1990-08-27", NULL),
    ("Bowser", "Diane", "dog", "M", "1979-08-31", "1995-07-29"),
    ("Chirpy", "Gwen", "bird", "F", "1998-09-11", NULL),
    ("Whistler", "Gwen", "bird", NULL, "1997-12-09", NULL),
    ("Slim", "Benny", "snake", "M", "1996-04-29", NULL),
    ('Puffball','Diane','hamster','F','1999-03-30',NULL);

INSERT INTO petEvent VALUES
    ("Fluffy", "1995-05-15", "litter", "4 kittens, 3 female, 1 male","1"),
    ("Buffy", "1993-06-23", "litter", "5 puppies, 2 female, 3 male","2"),
    ("Buffy", "1994-06-19", "litter", "3 puppies, 3 female","3"),
    ("Chirpy", "1999-03-21", "vet", "needed beak straightened","4"),
    ("Slim", "1997-08-03", "vet", "broken rib","5"),
    ("Slim", "1997-10-04", "vet", "broken tooth","6"),
    ("Bowser", "1991-10-12", "kennel", NULL,"7"),
    ("Fang", "1991-10-12", "kennel", NULL,"8"),
    ("Fang", "1998-08-28", "birthday", "Gave him a new chew toy","9"),
    ("Claws", "1998-03-17","birthday", "Gave him a new flea collar","10"),
    ("Whistler", "1998-12-09", "birthday", "First birthday","11"); 


INSERT INTO petPet VALUES
    ("Hammy","Diane","Hampster","M","2010-10-30",NULL);

INSERT INTO petEvent VALUES 
    ("Fluffy","2020-10-15","vet","antibiotics","12"),
    ("Hammy","2020-10-15","vet","antibiotics","13");

UPDATE petEvent 
SET remark = "5 kittens, 3 female, 2 male";

UPDATE petEvent 
SET petname = "Claws"
WHERE event_ID = "5"; 

UPDATE petPet 
SET death = "2020-09-01"
WHERE petname = "Puffball"; 

DELETE FROM petPet WHERE petname = "Buffy" AND owner = "Harold";

DELETE FROM petEvent WHERE petname = "Buffy";






