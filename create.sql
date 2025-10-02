CREATE TABLE IF NOT EXISTS persons (
	name VARCHAR(20) NOT NULL,
	surname VARCHAR(30) NOT NULL ,
	age INTEGER NOT NULL,
	PRIMARY KEY (name, surname, age),
	phone_number VARCHAR(20) UNIQUE,
	city_of_living VARCHAR(30)
);



INSERT INTO persons ("name", surname, age, phone_number, city_of_living) VALUES
	 ('Andrey','Ivanov',37,'8 495 133-45-45','MOSCOW'),
	 ('Anton','Petrow',20,'35-44-17','KALUGA'),
	 ('Vovan','Sidorov',45,'+7 989 985-58-87','TAMBOV'),
	 ('Petr','Филипсон',27,'225-44-17','VRN');

