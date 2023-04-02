ALTER TABLE Poste
ADD CONSTRAINT FK_Salle
FOREIGN KEY (nSalle)
REFERENCES Salle(nSalle); 

ALTER TABLE Poste
ADD CONSTRAINT FK_Types
FOREIGN KEY (typePoste)
REFERENCES Types(tyoeLp);

ALTER TABLE Poste
ADD CONSTRAINT FK_Segment
FOREIGN KEY (aIP)
REFERENCES Segment(aIP);

ALTER TABLE Installer
ADD CONSTRAINT FK_Poste
FOREIGN KEY (nPoste)
REFERENCES Poste(nPoste);

ALTER TABLE Installer 
ADD CONSTRAINT FK_Logiciel
FOREIGN KEY (nLog)
REFERENCES Logiciel (nLog);