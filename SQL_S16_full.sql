CREATE DATABASE training;

SHOW DATABASES;

USE training;

SHOW TABLES;

CREATE TABLE contact (
    id INT PRIMARY KEY AUTO_INCREMENT,
	firstname VARCHAR(100) NOT NULL,
    lastname VARCHAR(100) NOT NULL,
    email VARCHAR(200) NOT NULL DEFAULT 'no-reply@gmail.com',
    phone_number VARCHAR(20) NULL,
    date_of_birth DATE NULL
);

DESCRIBE contact;

DROP TABLE contact;

ALTER TABLE contact
	ADD COLUMN is_friend BOOL NOT NULL DEFAULT true,
    DROP COLUMN date_of_birth
;


SELECT * FROM booking;


INSERT INTO contact (lastname, email, firstname)
VALUES ('Aldaitz', 'taldaitz@dawan.fr', 'Thomas');


INSERT INTO contact (firstname, lastname, email, phone_number)
VALUES 
	('Robert', 'Test', 'rtest@dawan.fr', '0613511313'), 
    ('Jean', 'DuTest', 'jdutest@dawan.fr', null)
;





USE training;

CREATE TABLE booking (
	id INT PRIMARY KEY AUTO_INCREMENT,
    customer_firstname VARCHAR(100) NOT NULL,
    customer_lastname VARCHAR(100) NOT NULL,
    customer_email VARCHAR(200) NOT NULL,
    customer_phone_number VARCHAR(20) NOT NULL,
    booking_start DATE NOT NULL,
    booking_end DATE NOT NULL,
    room_number INT NOT NULL,
    room_type VARCHAR(100) NOT NULL,
    room_floor INT NOT NULL
);

DESCRIBE booking;

DROP TABLE booking;

ALTER TABLE booking
	ADD COLUMN notes TEXT NULL,
    DROP COLUMN room_floor,
    MODIFY customer_email VARCHAR(250) NOT NULL
;


INSERT INTO booking (
	customer_firstname, 
    customer_lastname, 
    customer_email, 
    customer_phone_number,
    booking_start,
    booking_end,
    room_number,
    room_type
    )
    VALUES ('', '', ...);
    
    SELECT * FROM booking;
    
    
    
    

INSERT INTO booking (customer_firstname,customer_lastname,customer_email,customer_phone_number,booking_start,booking_end,room_number,room_type)
VALUES
  ("Meghan","Wilkerson","aliquet.diam.sed@hotmail.net","02 14 49 37 11","2024-12-16","2024-05-21",169,"Double"),
  ("Lyle","Hooper","magna.praesent@icloud.org","06 30 24 91 34","2024-09-18","2024-08-15",417,"Double"),
  ("Larissa","Merritt","amet.ultricies@yahoo.ca","08 48 59 50 36","2023-11-24","2024-02-06",478,"Single"),
  ("Christen","Villarreal","rutrum.fusce@protonmail.net","03 39 88 62 14","2023-08-28","2023-10-26",491,"Single"),
  ("Kiayada","Joseph","nisi.aenean.eget@yahoo.net","07 24 05 74 98","2023-08-10","2024-01-21",186,"Single"),
  ("Kevin","Sargent","euismod.et@yahoo.edu","02 81 26 05 94","2024-01-02","2025-02-21",481,"Double"),
  ("Raymond","Todd","nec.tellus.nunc@outlook.com","06 31 37 48 25","2024-04-20","2024-11-09",428,"Premium"),
  ("Ashton","Stone","libero@aol.com","02 63 87 34 18","2025-02-05","2024-01-09",401,"Double"),
  ("Brielle","Stark","pharetra.quisque.ac@google.edu","02 26 56 06 37","2025-03-19","2023-10-16",155,"Double"),
  ("Philip","Gilmore","nec.ligula@yahoo.org","09 97 15 43 37","2023-04-18","2023-08-05",362,"Single");
INSERT INTO booking (customer_firstname,customer_lastname,customer_email,customer_phone_number,booking_start,booking_end,room_number,room_type)
VALUES
  ("Amela","Daugherty","sem.eget@hotmail.org","05 82 65 91 17","2025-01-03","2023-08-26",113,"Premium"),
  ("Christine","Robles","vel.arcu.curabitur@yahoo.com","09 23 97 63 55","2024-12-08","2023-06-26",427,"Double"),
  ("Eugenia","Campos","id@yahoo.ca","07 15 37 11 81","2024-06-01","2023-06-19",200,"Single"),
  ("Donna","Best","volutpat.nulla@protonmail.couk","06 24 71 38 43","2025-02-04","2023-10-20",364,"Premium"),
  ("Alyssa","Norman","sed.diam.lorem@icloud.net","01 06 05 73 98","2024-01-27","2024-08-10",377,"Double"),
  ("Tamekah","Vazquez","cursus.non@protonmail.com","02 77 84 20 16","2023-09-16","2024-06-04",355,"Double"),
  ("Tallulah","Boyer","nulla.facilisis@outlook.ca","05 87 34 67 54","2024-04-06","2023-12-04",307,"Premium"),
  ("Ciara","England","lorem.ac@yahoo.couk","04 65 89 64 02","2025-03-15","2024-08-08",446,"Double"),
  ("Upton","Lee","sem@aol.ca","07 23 77 67 51","2024-11-04","2024-05-03",344,"Premium"),
  ("Valentine","Griffith","vitae.sodales@protonmail.couk","06 26 86 73 12","2023-11-17","2025-02-03",340,"Premium");
INSERT INTO booking (customer_firstname,customer_lastname,customer_email,customer_phone_number,booking_start,booking_end,room_number,room_type)
VALUES
  ("Anthony","Horton","in.condimentum.donec@aol.couk","08 57 97 86 71","2024-04-22","2023-10-06",318,"Premium"),
  ("Brent","Thornton","enim.diam@yahoo.net","03 11 69 10 96","2023-11-17","2023-10-06",349,"Single"),
  ("Magee","Estrada","tincidunt.pede@google.org","08 83 66 45 13","2023-07-18","2024-06-19",261,"Premium"),
  ("Lionel","Dominguez","ac.sem@icloud.net","08 87 86 45 32","2024-10-27","2024-04-21",147,"Premium"),
  ("Harrison","Fernandez","magna.praesent@aol.net","07 53 48 46 04","2024-07-11","2023-11-28",301,"Premium"),
  ("Amir","Haney","ullamcorper@yahoo.org","06 12 25 62 41","2023-06-30","2023-09-18",100,"Premium"),
  ("Joan","Middleton","est.tempor@aol.couk","02 95 24 04 42","2024-03-11","2024-01-18",116,"Double"),
  ("Colt","Dalton","fames.ac.turpis@google.edu","02 42 25 82 40","2023-07-30","2024-11-04",228,"Double"),
  ("Rudyard","Donovan","a@outlook.edu","02 36 59 74 76","2024-08-20","2023-11-19",217,"Premium"),
  ("Alan","Yates","tristique.senectus@yahoo.ca","01 13 16 67 88","2023-10-18","2023-06-24",214,"Double");
INSERT INTO booking (customer_firstname,customer_lastname,customer_email,customer_phone_number,booking_start,booking_end,room_number,room_type)
VALUES
  ("Deborah","Lara","sit.amet.luctus@hotmail.org","06 32 16 28 16","2024-04-02","2023-04-28",479,"Premium"),
  ("Scarlett","Perez","sem.consequat@aol.ca","03 29 16 26 87","2024-11-22","2024-10-15",126,"Premium"),
  ("Noelani","Thornton","cras@hotmail.edu","06 84 23 27 84","2025-01-01","2023-12-05",345,"Single"),
  ("Lee","Mercer","mauris@icloud.org","09 65 81 48 21","2025-01-08","2024-05-28",434,"Double"),
  ("Fritz","Dorsey","faucibus@yahoo.com","02 54 50 04 00","2025-01-11","2024-04-08",121,"Premium"),
  ("Thomas","Alston","proin.nisl@outlook.com","06 23 88 82 73","2024-04-30","2023-05-16",413,"Single"),
  ("Simone","Reeves","nunc.sollicitudin.commodo@outlook.org","08 18 03 94 29","2025-01-08","2025-02-13",286,"Single"),
  ("Harding","Griffith","amet.lorem.semper@aol.org","06 46 92 16 55","2023-06-18","2024-04-16",499,"Single"),
  ("Macey","Hickman","sit.amet@icloud.ca","04 02 08 81 81","2023-09-23","2024-07-06",295,"Double"),
  ("Ignatius","Bradshaw","amet@protonmail.net","08 75 46 32 13","2024-12-01","2024-11-19",276,"Single");
INSERT INTO booking (customer_firstname,customer_lastname,customer_email,customer_phone_number,booking_start,booking_end,room_number,room_type)
VALUES
  ("Cassady","Kidd","sed.pede.cum@icloud.com","08 55 78 31 27","2025-03-03","2024-09-05",206,"Premium"),
  ("Jackson","Gallegos","amet.faucibus@hotmail.org","07 53 91 38 48","2024-05-27","2023-05-03",309,"Premium"),
  ("Vaughan","Dejesus","id.blandit@protonmail.net","07 27 73 82 86","2024-02-26","2025-04-06",481,"Premium"),
  ("Lana","Estes","eu.elit@google.ca","09 74 17 36 53","2024-12-04","2024-05-28",299,"Premium"),
  ("Summer","Monroe","sed@protonmail.com","04 36 81 68 17","2024-08-10","2023-08-15",160,"Premium"),
  ("Oscar","Dunn","ac.ipsum@outlook.ca","02 93 94 52 55","2023-08-27","2023-10-06",334,"Double"),
  ("Cameron","Everett","taciti.sociosqu.ad@protonmail.edu","05 55 88 12 17","2023-07-14","2024-10-21",402,"Premium"),
  ("Kennan","Turner","sit.amet.luctus@aol.ca","09 51 37 34 39","2024-04-19","2023-11-23",280,"Premium"),
  ("Ursula","Conner","non@yahoo.com","06 29 33 11 95","2023-10-14","2023-11-06",318,"Premium"),
  ("Bradley","Bowen","bibendum.sed@outlook.org","02 03 71 75 76","2024-01-12","2023-11-24",347,"Double");
INSERT INTO booking (customer_firstname,customer_lastname,customer_email,customer_phone_number,booking_start,booking_end,room_number,room_type)
VALUES
  ("Zia","Salinas","suscipit.nonummy@aol.edu","04 63 24 24 13","2023-11-10","2023-12-15",176,"Double"),
  ("Megan","Pearson","ullamcorper.velit@protonmail.ca","05 86 08 81 76","2023-10-29","2025-03-26",120,"Single"),
  ("Jin","Workman","eu.ligula@outlook.org","05 39 35 81 53","2023-07-07","2025-01-08",266,"Double"),
  ("Hector","Allen","at.velit@aol.com","04 53 36 46 40","2024-07-16","2025-03-10",320,"Single"),
  ("Alexander","Glass","penatibus.et@aol.ca","04 81 82 19 84","2023-08-10","2023-06-22",235,"Premium"),
  ("Cameron","Lynch","cursus.vestibulum@protonmail.ca","09 63 84 18 93","2023-11-08","2024-11-26",438,"Double"),
  ("Davis","Morse","eros.nam.consequat@icloud.ca","03 20 41 36 72","2023-07-21","2023-09-08",175,"Premium"),
  ("Hayley","Sellers","nam@outlook.ca","01 81 73 19 76","2024-06-23","2024-10-26",245,"Single"),
  ("Christine","Frederick","odio.tristique@yahoo.org","03 33 08 76 35","2024-09-22","2024-05-26",269,"Double"),
  ("Joshua","Burton","dignissim.magna.a@protonmail.com","05 11 27 48 07","2023-06-30","2023-04-28",363,"Premium");
INSERT INTO booking (customer_firstname,customer_lastname,customer_email,customer_phone_number,booking_start,booking_end,room_number,room_type)
VALUES
  ("Heather","Gates","nam.consequat@outlook.net","09 75 62 77 77","2024-08-27","2024-09-18",312,"Single"),
  ("Vernon","Colon","auctor.quis.tristique@outlook.com","01 71 76 87 26","2023-05-21","2025-01-21",257,"Single"),
  ("Hakeem","Patterson","penatibus.et@protonmail.edu","04 09 06 11 33","2024-02-16","2024-12-27",185,"Premium"),
  ("Hedda","Bates","turpis@google.net","05 38 15 63 42","2023-10-22","2024-12-10",196,"Double"),
  ("Zahir","Stark","mattis.ornare.lectus@hotmail.edu","07 90 18 85 81","2024-04-08","2023-09-15",254,"Premium"),
  ("Gloria","Patel","imperdiet.erat.nonummy@outlook.org","07 29 11 83 44","2025-04-05","2023-07-05",346,"Premium"),
  ("Veda","Tucker","urna.justo@hotmail.edu","02 48 16 52 35","2024-08-27","2024-07-04",215,"Double"),
  ("Ruth","Whitaker","ultrices.mauris@yahoo.org","07 69 66 56 06","2024-07-30","2025-02-06",178,"Premium"),
  ("Kirk","Ewing","mauris@protonmail.edu","06 48 44 94 17","2025-01-25","2023-05-02",350,"Single"),
  ("Candace","Farley","mauris.sagittis@hotmail.org","05 45 15 31 84","2024-03-08","2023-12-04",359,"Double");
INSERT INTO booking (customer_firstname,customer_lastname,customer_email,customer_phone_number,booking_start,booking_end,room_number,room_type)
VALUES
  ("Shafira","Barton","etiam.vestibulum@aol.ca","06 26 68 07 23","2023-09-20","2023-10-31",358,"Double"),
  ("Marny","Delgado","elit.dictum@yahoo.couk","02 98 35 14 76","2023-11-12","2023-11-14",412,"Single"),
  ("Baker","Gordon","leo.morbi.neque@google.net","08 47 24 89 65","2025-01-15","2023-04-29",107,"Premium"),
  ("Constance","Fischer","et@hotmail.couk","02 43 58 15 67","2024-11-02","2024-05-18",116,"Single"),
  ("Byron","England","ipsum.suspendisse@icloud.couk","07 12 20 63 21","2024-04-20","2025-01-15",495,"Single"),
  ("Finn","Leon","ipsum.suspendisse@icloud.net","07 86 22 10 52","2025-04-07","2025-03-09",314,"Premium"),
  ("Kenneth","Fernandez","urna.suscipit.nonummy@outlook.com","04 02 53 68 01","2024-09-30","2023-09-19",195,"Premium"),
  ("Amaya","Peters","torquent.per.conubia@outlook.edu","03 88 92 32 85","2023-12-28","2024-01-01",200,"Double"),
  ("Stuart","Matthews","purus.gravida.sagittis@outlook.couk","09 52 42 57 53","2023-09-16","2025-02-17",376,"Single"),
  ("Cassidy","Sharp","faucibus.leo@icloud.net","08 87 27 57 55","2023-09-12","2024-06-16",335,"Premium");
INSERT INTO booking (customer_firstname,customer_lastname,customer_email,customer_phone_number,booking_start,booking_end,room_number,room_type)
VALUES
  ("Leilani","Curtis","luctus.et@icloud.couk","07 67 29 07 36","2024-11-15","2025-04-03",132,"Premium"),
  ("Burton","Page","nunc@icloud.edu","05 49 27 18 46","2023-06-07","2024-08-24",391,"Single"),
  ("Philip","Heath","nisi.dictum.augue@aol.couk","06 83 13 74 42","2024-08-16","2023-12-15",113,"Double"),
  ("Nathan","Smith","neque@hotmail.org","09 94 54 13 11","2025-02-14","2023-05-09",266,"Premium"),
  ("Lionel","Moses","mauris@google.com","02 87 21 98 56","2024-03-30","2024-06-25",128,"Double"),
  ("Dean","Hinton","ornare@outlook.org","02 80 18 73 34","2025-01-02","2024-11-16",384,"Premium"),
  ("Lareina","David","condimentum.donec@aol.ca","07 87 12 29 01","2024-04-19","2024-02-29",156,"Single"),
  ("Garth","Woods","aliquam.eros@google.net","09 61 86 22 43","2024-02-27","2023-07-17",391,"Premium"),
  ("Amber","Mann","molestie@hotmail.ca","08 82 02 56 17","2023-07-15","2023-05-10",355,"Premium"),
  ("Yoshio","Alvarez","felis.nulla@protonmail.com","06 78 64 66 19","2025-04-14","2023-04-21",125,"Single");
INSERT INTO booking (customer_firstname,customer_lastname,customer_email,customer_phone_number,booking_start,booking_end,room_number,room_type)
VALUES
  ("Hedy","Bolton","posuere.cubilia@protonmail.ca","02 31 53 66 18","2023-05-26","2024-08-16",324,"Premium"),
  ("Hector","Rodriguez","pellentesque.ut@google.org","08 56 72 48 72","2023-08-31","2023-08-24",147,"Single"),
  ("Kaye","Mathews","lobortis.quam.a@icloud.edu","06 38 47 05 17","2024-04-25","2023-09-19",226,"Double"),
  ("Malachi","Mcmahon","a@outlook.net","09 47 22 88 49","2023-09-21","2023-04-27",465,"Premium"),
  ("Nora","Webster","nam@google.com","02 48 05 66 22","2024-12-02","2023-12-28",282,"Double"),
  ("Kimberley","Walsh","ornare@icloud.edu","07 13 54 67 47","2024-03-20","2024-07-13",466,"Double"),
  ("Galena","Alston","id.erat@yahoo.com","02 51 63 11 47","2024-02-16","2025-01-05",399,"Double"),
  ("Erica","Baird","nunc.sed@protonmail.org","05 78 18 08 69","2023-08-18","2024-08-15",333,"Double"),
  ("Kameko","Robles","semper.cursus.integer@aol.couk","03 53 71 49 66","2024-11-06","2023-09-19",345,"Double"),
  ("Lysandra","Bryan","magna.cras@protonmail.com","03 74 27 64 48","2023-06-14","2024-09-12",389,"Premium");
INSERT INTO booking (customer_firstname,customer_lastname,customer_email,customer_phone_number,booking_start,booking_end,room_number,room_type)
VALUES
  ("Geraldine","Mckay","nec.ligula.consectetuer@icloud.ca","06 87 74 52 67","2023-09-24","2024-07-27",194,"Premium"),
  ("Hanae","Clarke","sapien.aenean.massa@protonmail.net","05 81 59 79 74","2023-06-09","2025-04-16",321,"Single"),
  ("Uriel","Stokes","elit.a@protonmail.couk","03 99 51 91 71","2025-01-08","2024-03-07",449,"Single"),
  ("Berk","Hampton","donec.tempor@aol.ca","04 05 57 41 86","2025-01-18","2024-02-25",414,"Double"),
  ("Luke","Mayo","velit.aliquam@aol.org","04 76 07 06 66","2024-11-23","2024-10-12",408,"Premium"),
  ("Lois","Clark","nulla@outlook.com","02 69 63 38 24","2024-07-09","2024-10-08",208,"Double"),
  ("Tatum","Sykes","dolor.elit.pellentesque@protonmail.org","06 23 08 36 87","2025-01-17","2025-02-15",352,"Premium"),
  ("Illiana","Beard","lorem@aol.org","01 96 12 46 78","2024-01-23","2023-04-28",138,"Double"),
  ("Judith","Dalton","arcu.morbi@icloud.ca","01 82 35 51 03","2023-06-10","2024-04-26",455,"Single"),
  ("Geoffrey","Armstrong","ultrices.posuere@outlook.ca","06 35 93 67 62","2023-05-15","2024-10-31",417,"Double");
INSERT INTO booking (customer_firstname,customer_lastname,customer_email,customer_phone_number,booking_start,booking_end,room_number,room_type)
VALUES
  ("Harlan","Delacruz","erat.vel.pede@outlook.com","06 51 81 97 77","2024-04-04","2023-11-02",318,"Single"),
  ("Maia","Boyd","in.faucibus@icloud.couk","05 76 57 22 11","2023-04-28","2025-04-07",451,"Double"),
  ("Phelan","Patton","montes@aol.org","07 41 71 96 69","2024-03-08","2025-01-05",363,"Single"),
  ("Bethany","Franklin","adipiscing@protonmail.ca","09 49 45 03 55","2025-02-13","2025-03-30",113,"Single"),
  ("Howard","Wall","phasellus.ornare@google.ca","06 49 55 66 60","2024-07-13","2024-03-14",390,"Single"),
  ("Graham","Rosa","suspendisse.aliquet.molestie@aol.edu","09 37 46 94 17","2023-05-11","2024-09-16",234,"Double"),
  ("Moana","Cunningham","nisi@protonmail.edu","06 56 53 22 64","2024-11-10","2024-08-13",241,"Premium"),
  ("Wesley","Suarez","nullam@outlook.com","05 09 92 13 24","2024-04-30","2024-08-16",425,"Double"),
  ("Duncan","Carson","tincidunt.nunc@icloud.net","02 45 73 27 62","2024-07-29","2024-06-29",160,"Single"),
  ("Selma","Banks","malesuada.id@icloud.couk","07 28 24 35 59","2023-08-25","2023-07-20",242,"Double");
INSERT INTO booking (customer_firstname,customer_lastname,customer_email,customer_phone_number,booking_start,booking_end,room_number,room_type)
VALUES
  ("Robin","Fuentes","eget.tincidunt@icloud.com","05 55 65 98 71","2024-04-07","2024-10-15",349,"Single"),
  ("Xandra","Norris","adipiscing@yahoo.org","02 53 12 57 45","2025-03-15","2023-04-17",403,"Double"),
  ("Stacy","Roberson","suscipit@outlook.couk","06 78 42 81 21","2024-06-22","2024-08-30",141,"Single"),
  ("Phillip","Velez","lectus.quis.massa@yahoo.com","03 40 76 19 69","2023-11-15","2024-11-25",267,"Premium"),
  ("Violet","Lawson","et@protonmail.org","05 45 14 46 49","2024-03-06","2024-08-22",183,"Double"),
  ("Mufutau","Arnold","augue@google.ca","05 53 78 14 02","2024-05-15","2023-08-22",178,"Premium"),
  ("Quemby","Martin","fermentum.convallis@yahoo.com","08 75 72 73 69","2023-09-27","2025-01-22",449,"Single"),
  ("Ryan","Church","lobortis.risus.in@protonmail.com","04 52 43 23 87","2025-01-30","2023-10-13",315,"Premium"),
  ("Giacomo","Chan","a@icloud.couk","01 14 38 54 13","2023-12-12","2023-12-29",237,"Double"),
  ("Claire","Decker","nisi.dictum@yahoo.com","08 27 67 99 29","2024-01-21","2024-02-12",255,"Double");
INSERT INTO booking (customer_firstname,customer_lastname,customer_email,customer_phone_number,booking_start,booking_end,room_number,room_type)
VALUES
  ("Walter","Park","est.mauris@aol.ca","01 81 18 16 18","2023-06-15","2024-10-07",345,"Single"),
  ("Coby","Branch","est.ac.facilisis@outlook.com","06 68 14 57 00","2024-03-13","2024-11-09",245,"Premium"),
  ("Suki","Sykes","quisque.ac@icloud.couk","05 23 72 82 06","2024-08-29","2024-01-16",294,"Double"),
  ("Kareem","Yates","eget.ipsum@icloud.edu","09 47 17 57 20","2024-05-16","2023-09-14",149,"Premium"),
  ("Zelda","Prince","ut.lacus@yahoo.org","07 16 51 56 41","2024-01-28","2024-11-28",355,"Single"),
  ("Indigo","Middleton","luctus.vulputate.nisi@icloud.com","02 85 10 46 60","2025-01-16","2024-06-26",253,"Premium"),
  ("Barrett","Conway","cras.vulputate@icloud.org","05 50 46 32 52","2024-02-07","2023-07-03",472,"Double"),
  ("Barry","Castaneda","nulla.semper@protonmail.edu","03 21 28 34 08","2023-08-27","2024-07-02",478,"Double"),
  ("Otto","Scott","ante.ipsum.primis@hotmail.edu","07 62 35 41 21","2023-05-16","2024-04-04",329,"Premium"),
  ("Fay","Hughes","sapien@google.org","06 04 42 60 50","2025-02-18","2023-05-04",115,"Premium");
INSERT INTO booking (customer_firstname,customer_lastname,customer_email,customer_phone_number,booking_start,booking_end,room_number,room_type)
VALUES
  ("Tyrone","Kennedy","maecenas@yahoo.org","06 21 41 87 96","2023-10-04","2025-03-14",403,"Double"),
  ("Leonard","Calderon","turpis.in.condimentum@hotmail.org","08 97 63 73 94","2023-04-30","2024-03-17",347,"Single"),
  ("Jelani","Lang","sem.molestie@icloud.org","04 41 68 34 58","2024-06-01","2023-11-18",197,"Premium"),
  ("Thor","Hodge","nec.ligula@aol.org","01 53 31 18 65","2023-04-23","2024-09-13",134,"Premium"),
  ("Maxwell","Gamble","vehicula.pellentesque@outlook.ca","08 54 81 31 59","2024-06-19","2024-02-16",334,"Single"),
  ("Elmo","Phillips","vel@protonmail.com","04 13 24 93 97","2025-02-11","2023-11-18",425,"Premium"),
  ("Carlos","Griffith","lectus.pede@hotmail.ca","05 21 41 24 88","2024-07-27","2024-09-08",233,"Double"),
  ("Kelly","Burris","aliquet.diam@hotmail.edu","03 07 62 73 83","2024-09-15","2023-06-13",117,"Double"),
  ("Mara","Guzman","diam.sed@yahoo.ca","05 09 91 15 74","2023-10-27","2023-10-31",480,"Single"),
  ("Kirsten","Horton","massa.integer.vitae@hotmail.couk","02 55 78 84 33","2024-02-28","2024-06-23",202,"Premium");
INSERT INTO booking (customer_firstname,customer_lastname,customer_email,customer_phone_number,booking_start,booking_end,room_number,room_type)
VALUES
  ("Devin","Vazquez","elit.aliquam@hotmail.edu","08 31 79 42 61","2023-09-17","2023-05-17",275,"Single"),
  ("Jade","Fuentes","nam@icloud.ca","06 05 21 11 82","2024-02-03","2024-05-21",140,"Single"),
  ("Lysandra","Washington","mauris.rhoncus@icloud.com","09 63 18 19 46","2024-12-17","2024-11-29",462,"Single"),
  ("Haviva","Ramsey","risus@yahoo.org","05 86 56 79 15","2025-04-08","2024-12-31",247,"Premium"),
  ("Stone","Humphrey","enim@yahoo.edu","06 18 68 56 57","2023-04-20","2024-01-15",490,"Premium"),
  ("Josiah","Kemp","proin.vel@hotmail.ca","02 56 30 65 19","2024-12-01","2023-07-20",218,"Double"),
  ("Rosalyn","Dean","sapien.gravida@aol.net","01 10 72 59 41","2024-02-21","2025-02-04",272,"Single"),
  ("Joel","Green","elit.aliquam@yahoo.ca","05 19 33 18 12","2025-02-15","2024-10-15",252,"Premium"),
  ("Ian","Carpenter","magna.duis@icloud.org","03 16 26 42 27","2024-05-06","2024-07-01",428,"Double"),
  ("Ralph","Fulton","elit.a@aol.edu","09 87 65 21 26","2025-03-07","2025-01-02",179,"Premium");
INSERT INTO booking (customer_firstname,customer_lastname,customer_email,customer_phone_number,booking_start,booking_end,room_number,room_type)
VALUES
  ("Tatyana","Hodges","natoque.penatibus@google.couk","05 68 36 75 41","2024-08-02","2024-10-25",499,"Double"),
  ("Benjamin","Burks","tristique.pellentesque.tellus@hotmail.com","03 02 63 18 36","2025-01-11","2024-05-27",457,"Premium"),
  ("Axel","Sampson","nulla.vulputate@outlook.net","08 98 74 15 75","2024-07-21","2023-09-21",410,"Single"),
  ("Ariel","Booker","pede@protonmail.ca","07 37 58 67 23","2024-11-01","2024-09-08",166,"Double"),
  ("Raymond","Hardy","semper@yahoo.com","02 71 23 50 32","2024-12-11","2025-01-10",252,"Single"),
  ("Cain","Robertson","enim.sed@icloud.com","04 77 54 32 23","2023-08-05","2024-03-26",454,"Premium"),
  ("Evelyn","Trevino","felis.ullamcorper.viverra@yahoo.org","09 58 47 87 41","2023-09-01","2024-08-24",308,"Premium"),
  ("Baxter","Ramos","arcu.vivamus.sit@aol.com","07 95 15 20 76","2025-02-08","2025-03-07",309,"Single"),
  ("Vanna","Howard","felis.adipiscing@aol.net","07 84 55 39 66","2023-07-27","2023-08-10",363,"Premium"),
  ("Isaiah","Franklin","integer.mollis.integer@outlook.edu","07 34 32 95 72","2024-12-19","2023-11-21",249,"Single");
INSERT INTO booking (customer_firstname,customer_lastname,customer_email,customer_phone_number,booking_start,booking_end,room_number,room_type)
VALUES
  ("Garth","Pollard","ornare.lectus@hotmail.edu","06 73 72 27 52","2023-08-28","2023-08-10",221,"Single"),
  ("Sydnee","Roberson","vulputate@aol.net","09 73 56 13 07","2024-07-17","2024-06-02",386,"Double"),
  ("Remedios","Jacobs","arcu@hotmail.ca","08 85 04 34 67","2024-06-08","2023-10-30",315,"Double"),
  ("Shellie","Serrano","a.magna@yahoo.couk","03 38 49 85 99","2023-06-06","2023-07-11",288,"Premium"),
  ("Cole","Jacobson","nunc@yahoo.couk","06 16 86 76 09","2023-07-08","2024-06-12",297,"Premium"),
  ("Harding","Nolan","vel.nisl.quisque@outlook.org","09 61 16 66 15","2025-02-05","2024-02-25",231,"Premium"),
  ("Chadwick","Shelton","congue.elit.sed@outlook.net","04 23 64 48 23","2023-07-21","2024-12-08",467,"Double"),
  ("Martin","Beasley","et@outlook.edu","04 42 54 85 72","2024-11-12","2023-05-21",460,"Premium"),
  ("Iris","Hansen","nulla.at@hotmail.couk","06 45 57 55 60","2024-07-01","2023-09-03",427,"Premium"),
  ("Seth","Aguilar","semper@hotmail.edu","04 04 83 28 82","2023-04-19","2024-03-13",256,"Single");
INSERT INTO booking (customer_firstname,customer_lastname,customer_email,customer_phone_number,booking_start,booking_end,room_number,room_type)
VALUES
  ("Amos","Keith","mauris@aol.org","08 71 05 21 90","2023-08-11","2025-04-07",425,"Double"),
  ("Winifred","Blackwell","erat.etiam@hotmail.couk","05 56 13 54 92","2024-09-01","2023-11-29",118,"Double"),
  ("Whilemina","Bishop","nec@outlook.org","09 82 11 45 84","2025-01-26","2023-12-10",208,"Premium"),
  ("Berk","Torres","quis.lectus@hotmail.couk","02 65 62 77 21","2023-05-02","2023-11-12",288,"Premium"),
  ("Declan","Ramsey","mauris.integer@google.com","03 46 52 93 42","2024-03-15","2023-11-22",413,"Double"),
  ("Demetrius","Mcdonald","id.sapien.cras@aol.org","03 54 77 70 54","2023-05-22","2024-11-29",110,"Double"),
  ("Chava","Olsen","conubia.nostra@protonmail.couk","05 28 41 77 92","2024-09-27","2025-03-03",252,"Premium"),
  ("Vernon","Hickman","libero.morbi.accumsan@google.org","01 45 85 27 63","2023-04-26","2023-12-11",164,"Single"),
  ("Colleen","Pena","tincidunt.adipiscing@aol.couk","08 74 72 85 06","2023-07-09","2024-07-01",481,"Double"),
  ("Hilel","York","rutrum.urna@protonmail.couk","03 65 14 89 16","2023-07-12","2023-08-10",253,"Double");
INSERT INTO booking (customer_firstname,customer_lastname,customer_email,customer_phone_number,booking_start,booking_end,room_number,room_type)
VALUES
  ("Aristotle","Byrd","nec.ante@google.net","06 53 74 66 50","2024-06-17","2025-04-07",392,"Double"),
  ("Mohammad","Mclaughlin","ac.turpis@icloud.net","04 48 28 64 00","2025-02-18","2024-01-01",342,"Single"),
  ("Wayne","Vaughn","libero.donec.consectetuer@google.couk","08 15 50 24 83","2023-08-08","2024-09-30",157,"Single"),
  ("Brennan","Boyle","pellentesque.sed@outlook.ca","08 71 94 21 74","2023-10-19","2024-03-10",451,"Single"),
  ("Byron","Horn","metus.facilisis@google.couk","01 15 22 10 48","2024-12-19","2025-03-27",204,"Single"),
  ("Melinda","Stephens","proin@icloud.net","01 86 54 12 10","2023-10-05","2023-10-21",271,"Premium"),
  ("Kaseem","Richmond","laoreet@outlook.com","08 44 69 04 23","2023-07-16","2024-06-08",458,"Single"),
  ("Erasmus","Richardson","ultrices.posuere.cubilia@protonmail.net","09 84 34 34 21","2024-03-21","2023-04-28",393,"Double"),
  ("Stacy","Pittman","libero.nec@yahoo.com","03 48 15 86 81","2023-08-27","2023-07-21",275,"Premium"),
  ("Fitzgerald","Macdonald","dolor@google.net","06 57 91 15 65","2024-11-10","2025-04-04",143,"Single");


SELECT * FROM contact; 

UPDATE contact
SET is_friend = true
WHERE firstname = 'Robert' AND lastname = 'toto'
;


UPDATE booking
SET notes = null
WHERE room_type = 'Single'
 AND notes = 'Add an extra 5€';

SELECT * FROM booking;


/*Update */
 
/*1- Change the start date of the booking of Kiayada Joseph
  to '2024-03-15'*/
  
  UPDATE booking
  SET booking_start = '2024-03-15'
  WHERE id = 5;
  

/*2 - Change the email for the id 8 to 'test@gmail.com'*/

UPDATE booking
SET customer_email = 'test@gmail.com'
WHERE id = 8;

/*3 - Add the note "Add an extra 5€" to bookings which concerned
a Premium room*/

UPDATE booking
SET notes = "Add an extra 5€"
WHERE room_type = 'Premium';

/*4 - For all the bookings before '01/01/2024' change the room
to 'Single'*/

UPDATE booking
SET room_type = 'Single'
WHERE booking_start = '2024-01-01';


DELETE FROM booking
WHERE id = 4;

SELECT * FROM booking;


/* Delete*/
 
/*1- Ashton Stone cancelled his booking */

DELETE FROM booking
WHERE id = 8; 

SELECT * FROM booking;

/*2 - The hotel closes the '05/08/2024', we should delete all
the bookings after that based on the booking_end */

DELETE FROM booking
WHERE booking_end > '2024-08-05';


SELECT *
FROM booking
WHERE customer_firstname LIKE '%a%s%'
;


SELECT * FROM booking
WHERE room_number BETWEEN 300 AND 399;

SELECT * FROM booking
WHERE booking_start BETWEEN '2024-01-01' AND '2024-04-16';



SELECT firstname, lastname, phone_number
FROM contact;

/* -> The lastname, firstname and email of the customers whose firstname is "Julien" */
SELECT customer_firstname, customer_lastname, customer_email
FROM full_order
WHERE customer_firstname = 'Julien';

/* -> The lastname, firstname and email of the customers whose email ends by "@gmail.com" */
SELECT customer_firstname, customer_lastname, customer_email
FROM full_order
WHERE customer_email LIKE '%@gmail.com';


/* -> All the unpaid orders */
SELECT * FROM full_order
WHERE is_paid = false;


/* -> All the paid orders but not delivered */
SELECT *
FROM full_order
WHERE is_paid = 1
AND shipment_date IS NULL;


/* -> All the delivered orders but delivered outside France */

SELECT *
FROM full_order
WHERE shipment_date IS NOT NULL
AND shipment_country <> 'France';


SELECT customer_lastname, customer_firstname
FROM full_order
ORDER BY customer_lastname, customer_firstname 
LIMIT 10
; 

SELECT * FROM full_order;


/* -> All the orders with an amount above 8000€ from the higher to the smaller 
amount */ 

SELECT *
FROM full_order
WHERE amount > 8000
ORDER BY amount DESC;

/* -> The order with highest amount (only one) */

SELECT *
FROM full_order
ORDER BY amount DESC
LIMIT 1;

/* -> All the orders paid in Cash in 2022 deliverd in France with an amount 
below to 5000€ */

SELECT *
FROM full_order
WHERE payment_type = 'Cash'
AND YEAR(payment_date) = 2022
AND amount < 5000
AND shipment_country = 'France'
;


/* -> All the orders paid by Card or paid after the 15/10/2021 */

SELECT * 
FROM full_order
WHERE payment_date > '2021-10-15'
OR payment_type = 'Credit Card'
;

/* -> The last 3 orders (based shipment_date) send in France */

SELECT * 
FROM full_order
WHERE shipment_country = 'France'
ORDER BY shipment_date DESC
LIMIT 3;

/* -> The 10 highest orders in 2021 */
SELECT *
FROM full_order
WHERE YEAR(date) = 2021
ORDER BY amount DESC
LIMIT 10;

SELECT SUM(amount) AS total_Amount, 
	AVG(amount) AS averageAmount, 
	COUNT(*) AS nbOfOrder
FROM full_order
WHERE YEAR(date) = 2021
;

/* -> The sum of the unpaid orders */

SELECT ROUND(SUM(amount), 2) AS totalAmount
FROM full_order
WHERE is_paid = false
;

/*-> The average amount of the order paid in cash*/

SELECT ROUND(AVG(amount), 2) AS averageAmount
FROM full_order
WHERE payment_type = 'Cash';


/*-> The number of customers whose lastname is "Laporte"*/


SELECT COUNT(id) AS nbOfLaporte
FROM full_order
WHERE customer_lastname = 'Laporte'
;


/*-> The max number of days between the payment date and the delivery 
date -> DATEDIFF()*/

SELECT MAX(DATEDIFF(payment_date, shipment_date)) AS MaxDelay
FROM full_order
;


/*-> The average delay (in days) of an order payment 
(compare date and payment date)*/

SELECT ROUND(AVG(DATEDIFF(payment_date, date))) AS AvgDelay
FROM full_order
;

SELECT date, payment_date, ABS(DATEDIFF(payment_date, date))
FROM full_order
;


/*-> The number of orders paid by Check in 2021 */

SELECT COUNT(*) AS nbOfOrderPaidByCheck
FROM full_order
WHERE payment_type = 'Check'
AND YEAR(payment_date) = 2021
;


SELECT payment_type, shipment_country, COUNT(*)
FROM full_order
GROUP BY payment_type, shipment_country
ORDER BY payment_type
;

/* -> The total amount of the paid orders by payment type */

SELECT payment_type, ROUND(SUM(amount), 2) AS totalSum
FROM full_order
WHERE is_paid = true
GROUP BY payment_type
;

/* -> The average amount by country */

SELECT shipment_country, ROUND(AVG(amount), 2) AS averageAmount
FROM full_order
WHERE shipment_country IS NOT NULL
GROUP BY shipment_country
ORDER BY shipment_country
;

/* -> Per year (use date), the sum of the orders */

SELECT YEAR(date) AS orderYear, ROUND(SUM(amount), 2) AS totalAmount
FROM full_order
GROUP BY orderYear
ORDER BY orderYear
;

/* -> The list of the customers (lastname, firstname) with the amount 
of their Highest order from 2021 */

SELECT customer_lastname, customer_firstname, MAX(amount) AS HighestOrder
FROM full_order
WHERE YEAR(date) = 2021
GROUP BY customer_lastname, customer_firstname
ORDER BY customer_lastname, customer_firstname
;

/* -> The list of the customers (lastname, firstname) who 
have at least 2 orders */

SELECT customer_lastname, customer_firstname, COUNT(*) AS nbOrder
FROM full_order
GROUP BY customer_lastname, customer_firstname
	HAVING nbOrder > 1
ORDER BY customer_lastname, customer_firstname
;


SELECT * FROM bill;
SELECT * FROM customer;



SELECT bi.*, cu.lastname, cu.firstname
FROM bill bi
	JOIN customer cu ON bi.customer_id = cu.id
 ;

/* -> All the products with their name and the label of their category */

SELECT * FROM product;
SELECT * FROM category;

SELECT pr.name, ca.label
FROM product pr
	JOIN category ca ON pr.category_id = ca.id
;

/* old way to do a join*/
SELECT * 
FROM product, category
WHERE product.category_id = category.id
;


/* -> For each customer (lastname, firstname) show the number of associated bills */

SELECT cu.firstname, cu.lastname, COUNT(bi.id) AS nbBills
FROM customer cu
	JOIN bill bi ON cu.id = bi.customer_id
GROUP BY cu.id
ORDER BY cu.firstname, cu.lastname
;

/* -> For each category, the average products price */
SELECT ca.label, ROUND(AVG(pr.unit_price), 2) AS AveragePrice
FROM category ca 
	JOIN product pr ON pr.category_id = ca.id
GROUP BY ca.label
;


/*-> For each product the quantity ordered since 01/01/2021 */
SELECT pr.id, pr.name, SUM(li.quantity)
FROM product pr
	JOIN line_item li ON pr.id = li.product_id
    JOIN bill bi ON bi.id = li.bill_id
WHERE bi.date > '2021-01-01'
GROUP BY pr.id
ORDER BY pr.id
;


/*-> The list of the bills (with their ref) which have more 
than 2 different products ordered */
SELECT bi.id, bi.ref, COUNT(li.product_id) AS nbProduct
FROM bill bi
	JOIN line_item li ON bi.id = li.bill_id
GROUP BY bi.id
	HAVING nbProduct > 1
;


/*-> For each Bill, their total amount */
SELECT bi.id, bi.ref, SUM(li.quantity * pr.unit_price) AS totalAmount
FROM bill bi
	JOIN line_item li ON li.bill_id = bi.id
    JOIN product pr ON pr.id = li.product_id
GROUP BY bi.id
;

/*-> For each customer, count the number of different products they ordered */
SELECT cu.id, cu.firstname, cu.lastname, COUNT(li.product_id) AS nbProduct
FROM customer cu
	JOIN bill bi ON bi.customer_id = cu.id
    JOIN line_item li ON li.bill_id = bi.id
GROUP BY cu.id
;

/*-> For each product, count the number of different customers who ordered it */

SELECT pr.id, pr.name, COUNT(bi.customer_id) AS nbCustomer
FROM product pr
	JOIN line_item li ON li.product_id = pr.id
    JOIN bill bi ON bi.id = li.bill_id
GROUP BY pr.id
;

/* Last day revision */

CREATE TABLE payment (
	id INT PRIMARY KEY AUTO_INCREMENT,
    amount FLOAT NOT NULL,
    type VARCHAR(100) NOT NULL,
    date DATETIME NOT NULL, 
    booking_id INT NOT NULL
);


SElECT * FROM payment;
SElECT * FROM booking;


INSERT INTO payment (amount, type, date, booking_id)
VALUES (100.00, 'Cash', NOW(), 1);

INSERT INTO payment (amount, type, date, booking_id)
VALUES (120.00, 'Cash', NOW(), 2);


SELECT bo.id, bo.customer_firstname, bo.customer_lastname, SUM(pa.amount)
FROM booking bo
	LEFT JOIN payment pa ON bo.id = pa.booking_id
GROUP BY bo.id
;


DELETE FROM booking
WHERE id = 12;


ALTER TABLE payment
	ADD CONSTRAINT FK_booking_payment
	FOREIGN KEY payment (booking_id)
    REFERENCES booking (id)
;



DELETE FROM payment
WHERE id IN (5, 6);



CREATE TABLE room (
	id INT PRIMARY KEY AUTO_INCREMENT,
    room_number INT NOT NULL,
    room_type VARCHAR(100) NOT NULL
);

ALTER TABLE booking
	ADD COLUMN room_id INT NOT NULL;
    
    SELECT * FROM booking;
    SELECT * FROM room;
    
ALTER TABLE booking
	ADD CONSTRAINT FK_booking_room
    FOREIGN KEY booking (room_id)
    REFERENCES room (id)
;

UPDATE booking
SET room_id = 1;
    
    
    /*-> For each category, the sum of paid bills */
SELECT ca.id, ca.label, SUM(li.quantity * pr.unit_price)
FROM category ca
	JOIN product pr ON pr.category_id = ca.id
    JOIN line_item li ON li.product_id = pr.id
    JOIN bill bi ON bi.id = li.bill_id
WHERE bi.is_paid = true
GROUP BY ca.id
ORDER BY ca.label
;



/*-> Per year, the average age of the customers*/
SELECT YEAR(bi.date) AS Year, ROUND(AVG(TIMESTAMPDIFF(YEAR, cu.date_of_birth, bi.date))) AS Age
FROM customer cu
	JOIN bill bi ON bi.customer_id = cu.id
GROUP BY Year
ORDER BY Year
;



/*-> The lastname, firstname and phone number of the customers WHO ordered 
camping products for the last two years*/
SELECT cu.lastname, cu.firstname, cu.phone_number
FROM customer cu 
	JOIN bill bi ON cu.id = bi.customer_id
    JOIN line_item li ON li.bill_id = bi.id
    JOIN product pr ON pr.id = li.product_id
    JOIN category ca ON pr.category_id = ca.id
WHERE ca.label = 'Camping'
AND YEAR(bi.date) >= 2022
;


/*-> The average age of the customers for each product category*/
SELECT ca.label, ROUND(AVG(TIMESTAMPDIFF(YEAR, cu.date_of_birth, NOW()))) AS AverageCustomerAge
FROM customer cu 
	JOIN bill bi ON cu.id = bi.customer_id
    JOIN line_item li ON li.bill_id = bi.id
    JOIN product pr ON pr.id = li.product_id
    JOIN category ca ON pr.category_id = ca.id
GROUP BY ca.id
;


/*-> The list of product, with their category, ordered more than 10 times (in total
based on the quantity) in 2022*/

SELECT pr.id, pr.name, ca.label, SUM(li.quantity) AS totalQuantity
FROM bill bi 
    JOIN line_item li ON li.bill_id = bi.id
    JOIN product pr ON pr.id = li.product_id
    JOIN category ca ON pr.category_id = ca.id
WHERE YEAR(bi.date) = 2022
GROUP BY  pr.id
	HAVING totalQuantity > 10
ORDER BY pr.id
;



SELECT product_id, SUM(quantity) AS Qty
FROM line_item
GROUP BY product_id
	HAVING Qty >= 90
ORDER BY Qty DESC
;

UPDATE product
SET unit_price = unit_price * 1.1
WHERE id IN (
	SELECT product_id
	FROM line_item
	GROUP BY product_id
		HAVING SUM(quantity) >= 90
	ORDER BY SUM(quantity) DESC
);

SELECT *
FROM product
WHERE id IN (
	SELECT product_id
	FROM line_item
	GROUP BY product_id
		HAVING SUM(quantity) >= 90
	ORDER BY SUM(quantity) DESC
);




CREATE VIEW view_best_sellers_in_2022 AS 
SELECT pr.id, pr.name, ca.label, SUM(li.quantity) AS totalQuantity
FROM bill bi 
    JOIN line_item li ON li.bill_id = bi.id
    JOIN product pr ON pr.id = li.product_id
    JOIN category ca ON pr.category_id = ca.id
WHERE YEAR(bi.date) = 2022
GROUP BY  pr.id
	HAVING totalQuantity > 10
ORDER BY pr.id
;


CREATE VIEW view_bills_with_amount AS
SELECT bi.*, SUM(li.quantity * pr.unit_price) AS totalAmount
FROM bill bi
	JOIN line_item li ON li.bill_id = bi.id
    JOIN product pr ON pr.id = li.product_id
GROUP BY bi.id
;

SELECT * FROM view_bills_with_amount;

/*-> The lastname, the firstname and the total of their bills, 
of the 3 customers with highest number of bills */

SELECT cu.lastname, cu.firstname, SUM(vbi.totalAmount), COUNT(vbi.id)  AS nbOfBills
FROM customer cu
	JOIN view_bills_with_amount vbi ON vbi.customer_id = cu.id
GROUP BY cu.id
ORDER BY nbOfBills DESC
LIMIT 3
;

/*-> The lastname, the firstname and the total of their bills, 
of the 3 customers who made the highest bills*/


SELECT cu.lastname, cu.firstname, SUM(vbi.totalAmount), MAX(vbi.totalAmount) As HighestBill
FROM customer cu
	JOIN view_bills_with_amount vbi ON vbi.customer_id = cu.id
GROUP BY cu.id
ORDER BY HighestBill DESC
LIMIT 3
;


/*-> The lastname, the firstname and the total of their bills, 
of the 3 customers with highest sum of bills */
 
SELECT cu.lastname, cu.firstname, SUM(vbi.totalAmount) AS billedSum
FROM customer cu
	JOIN view_bills_with_amount vbi ON vbi.customer_id = cu.id
GROUP BY cu.id
ORDER BY billedSum DESC
LIMIT 3
;






DROP PROCEDURE updateProductPrice;
DELIMITER //
CREATE PROCEDURE updateProductPrice(raise FLOAT, nbOfSales INT)
BEGIN

	UPDATE product
	SET unit_price = unit_price * raise
	WHERE id IN (
		SELECT product_id
		FROM line_item
		GROUP BY product_id
			HAVING SUM(quantity) >= nbOfSales
		ORDER BY SUM(quantity) DESC
	);

END//

CALL updateProductPrice(1.2, 100);


ALTER TABLE customer
	ADD COLUMN is_vip BOOLEAN NOT NULL;
    
SELECT * FROM customer WHERE is_vip = true;

DROP PROCEDURE updateVips;
DELIMITER //
CREATE PROCEDURE updateVips(limitVip FLOAT)
BEGIN

	UPDATE customer SET is_vip = false;

	UPDATE customer
	SET is_vip = true
	WHERE id IN (
		SELECT customer_id
		FROM view_bills_with_amount
		GROUP BY customer_id 
			HAVING SUM(totalAmount) > limitVip
		ORDER BY customer_id 
	);
END//



CALL updateVips(20000);
