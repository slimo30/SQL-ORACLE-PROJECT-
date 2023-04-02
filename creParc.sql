CREATE TABLE Segment 
(
    aIP VARCHAR2(20),
    nomSegement VARCHAR2(20) NOT NULL,
    etage INT,
    CONSTRAINT PK_Segment PRIMARY KEY (aIP)
);

CREATE TABLE Salle
(
    nSalle INT ,
    nomSalle VARCHAR2(20) NOT NULL,
    nbPoste INT,
    aIP VARCHAR2(20),
    CONSTRAINT PK_Salle PRIMARY KEY (nSalle)
);

CREATE TABLE Poste
(
    nPoste INT ,
    nomPoste VARCHAR2 (20) NOT NULL,
    aIP VARCHAR2(20),
    ad INT CHECK (ad >= 0 AND ad <= 255),
    typePoste VARCHAR2(20) CHECK (typePoste IN ('UNIX', 'TX', 'PONS', 'PCNT')),
    nSalle INT,
    CONSTRAINT PK_Poste PRIMARY KEY (nPoste)
);

CREATE TABLE Logiciel
(
    nLog INT,
    nomLog VARCHAR2(20),
    dateAch DATE,
    version VARCHAR2(5),
    typeLog VARCHAR2(10) CHECK (typeLog IN ('UNIX', 'TX', 'PCWS', 'PCNT','BeOS')),
    prix INT CHECK (prix >= 0),
    CONSTRAINT PK_Logiciel PRIMARY KEY (nLog)
);

CREATE TABLE Installer
(
    nPoste INT ,
    nLog INT ,
    numIns INT,
    dateIns DATE DEFAULT CURRENT_TIMESTAMP,
    delai INTERVAL YEAR TO MONTH,
    CONSTRAINT PK_Installer PRIMARY KEY (nPoste,nLog)
);

CREATE TABLE Types
(
    typeLp  VARCHAR2(20) ,
    nomType VARCHAR2(30),
    CONSTRAINT PK_Types PRIMARY KEY (typeLp)
);