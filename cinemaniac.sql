CREATE DATABASE cinemaniac;

USE  cinemaniac;

CREATE TABLE Admin
(
	Username             VARCHAR(8) NOT NULL
);

ALTER TABLE Admin
ADD CONSTRAINT XPKAdmin PRIMARY KEY (Username);

CREATE TABLE BiloU
(
	IdPartija            INTEGER NOT NULL,
	IdPitanje            INTEGER NOT NULL
);

ALTER TABLE BiloU
ADD CONSTRAINT XPKBiloU PRIMARY KEY (IdPartija,IdPitanje);

CREATE TABLE Citat
(
	IdCitat              INTEGER NOT NULL AUTO_INCREMENT,
	Tekst                VARCHAR(50) NOT NULL,
	Autor                VARCHAR(50) NULL,
	PRIMARY KEY (IdCitat)
);


CREATE TABLE Film
(
	IdFilm               INTEGER NOT NULL AUTO_INCREMENT,
	Naziv                VARCHAR(20) NULL,
	PRIMARY KEY (IdFilm)
);


CREATE TABLE Gost
(
	IdGost               INTEGER NOT NULL AUTO_INCREMENT,
	Ime                  VARCHAR(8) NULL,
	IdPartija            INTEGER NOT NULL,
	BrojPoena            INTEGER NULL,
	PRIMARY KEY (IdGost)
);



CREATE TABLE Igrac
(
	BrojPartija          INTEGER NULL,
	BrojPobeda           INTEGER NULL,
	BrojPoraza           INTEGER NULL,
	Username             VARCHAR(8) NOT NULL
);

ALTER TABLE Igrac
ADD CONSTRAINT XPKIgrac PRIMARY KEY (Username);

CREATE TABLE Igrao
(
	IdPartija            INTEGER NOT NULL,
	BrojPoena            INTEGER NULL,
	Username             VARCHAR(8) NOT NULL
);

ALTER TABLE Igrao
ADD CONSTRAINT XPKIgrao PRIMARY KEY (IdPartija,Username);

CREATE TABLE Korisnik
(
	Password             VARCHAR(8) NOT NULL,
	Email                VARCHAR(20) NOT NULL,
	Username             VARCHAR(8) NOT NULL
);

ALTER TABLE Korisnik
ADD CONSTRAINT XPKKorisnik PRIMARY KEY (Username);

CREATE TABLE Moderator
(
	Username             VARCHAR(8) NOT NULL
);

ALTER TABLE Moderator
ADD CONSTRAINT XPKModerator PRIMARY KEY (Username);

CREATE TABLE NetacanOdgovorNa
(
	IdPitanje            INTEGER NOT NULL,
	IdOdgovor            INTEGER NOT NULL
);

ALTER TABLE NetacanOdgovorNa
ADD CONSTRAINT XPKNetacanOdgovorNa PRIMARY KEY (IdPitanje,IdOdgovor);

CREATE TABLE Odgovor
(
	IdOdgovor            INTEGER NOT NULL AUTO_INCREMENT,
	Tekst                VARCHAR(40) NOT NULL,
	PRIMARY KEY (IdOdgovor)
);


CREATE TABLE Partija
(
	IdPartija            INTEGER NOT NULL AUTO_INCREMENT,
	Datum                DATE NOT NULL,
	PRIMARY KEY (IdPartija)
);



CREATE TABLE Pitanje
(
	IdPitanje            INTEGER NOT NULL AUTO_INCREMENT,
	Likes                INTEGER NOT NULL,
	Dislikes             INTEGER NOT NULL,
	Tekst                VARCHAR(45) NOT NULL,
	IdTacan              INTEGER NOT NULL,
	IdScena              INTEGER NOT NULL,
	Odobreno             VARCHAR(20) NULL CHECK ( Odobreno IN ('JESTE', 'NIJE') ),
	PRIMARY KEY (IdPitanje)
	
);


CREATE TABLE Scena
(
	IdScena              INTEGER NOT NULL AUTO_INCREMENT,
	Naziv                VARCHAR(20) NULL,
	IdFilm               INTEGER NOT NULL,
	PRIMARY KEY (IdScena)
);



CREATE TABLE Trivia
(
	IdTrivia             INTEGER NOT NULL AUTO_INCREMENT,
	Tekst                VARCHAR(50) NOT NULL,
	IdFilm               INTEGER NOT NULL,
	PRIMARY KEY (IdTrivia)
);



CREATE TABLE Vip
(
	Username             VARCHAR(8) NOT NULL
);

ALTER TABLE Vip
ADD CONSTRAINT XPKVip PRIMARY KEY (Username);

ALTER TABLE Admin
ADD CONSTRAINT R_15 FOREIGN KEY (Username) REFERENCES Korisnik (Username)
		ON DELETE CASCADE;

ALTER TABLE BiloU
ADD CONSTRAINT R_19 FOREIGN KEY (IdPartija) REFERENCES Partija (IdPartija)
		ON DELETE CASCADE;

ALTER TABLE BiloU
ADD CONSTRAINT R_20 FOREIGN KEY (IdPitanje) REFERENCES Pitanje (IdPitanje)
		ON DELETE CASCADE;

ALTER TABLE Gost
ADD CONSTRAINT R_21 FOREIGN KEY (IdPartija) REFERENCES Partija (IdPartija);

ALTER TABLE Igrac
ADD CONSTRAINT R_14 FOREIGN KEY (Username) REFERENCES Korisnik (Username)
		ON DELETE CASCADE;

ALTER TABLE Igrao
ADD CONSTRAINT R_12 FOREIGN KEY (IdPartija) REFERENCES Partija (IdPartija)
		ON DELETE CASCADE;

ALTER TABLE Igrao
ADD CONSTRAINT R_18 FOREIGN KEY (Username) REFERENCES Igrac (Username)
		ON DELETE CASCADE;

ALTER TABLE Moderator
ADD CONSTRAINT R_16 FOREIGN KEY (Username) REFERENCES Korisnik (Username)
		ON DELETE CASCADE;

ALTER TABLE NetacanOdgovorNa
ADD CONSTRAINT R_2 FOREIGN KEY (IdPitanje) REFERENCES Pitanje (IdPitanje)
		ON DELETE CASCADE;

ALTER TABLE NetacanOdgovorNa
ADD CONSTRAINT R_3 FOREIGN KEY (IdOdgovor) REFERENCES Odgovor (IdOdgovor)
		ON DELETE CASCADE;

ALTER TABLE Pitanje
ADD CONSTRAINT R_1 FOREIGN KEY (IdTacan) REFERENCES Odgovor (IdOdgovor);

ALTER TABLE Pitanje
ADD CONSTRAINT R_4 FOREIGN KEY (IdScena) REFERENCES Scena (IdScena);

ALTER TABLE Scena
ADD CONSTRAINT R_6 FOREIGN KEY (IdFilm) REFERENCES Film (IdFilm);

ALTER TABLE Trivia
ADD CONSTRAINT R_7 FOREIGN KEY (IdFilm) REFERENCES Film (IdFilm);

ALTER TABLE Vip
ADD CONSTRAINT R_17 FOREIGN KEY (Username) REFERENCES Igrac (Username)
		ON DELETE CASCADE;
