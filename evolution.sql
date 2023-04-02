ALTER TABLE Segment ADD nbSalle INT;
ALTER TABLE Segment ADD nbPoste INT;

ALTER TABLE Logiciel ADD nbInstall INT;

ALTER TABLE Poste ADD nbLog INT;


 


DESCRIBE Segment;
DESCRIBE Salle;
DESCRIBE Poste;
DESCRIBE Logiciel;
DESCRIBE Installer;
DESCRIBE Types;


SELECT * FROM  Segment;
SELECT * FROM  Salle;
SELECT * FROM  Poste;
SELECT * FROM  Logiciel;
SELECT * FROM  Installer;
SELECT * FROM  Types;




ALTER TABLE Salle MODIFY nomSalle VARCHAR2(30);


ALTER TABLE Segment MODIFY nomSegement VARCHAR2(15);


ALTER TABLE Segment MODIFY nomSegement VARCHAR2(14);


DESCRIBE Segment;
DESCRIBE Salle;


SELECT * FROM Segment;
SELECT * FROM Salle;



