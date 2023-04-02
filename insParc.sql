

INSERT INTO Segment VALUES('130.120.80','Brain',0);
INSERT INTO Segment VALUES('130.120.81','Brain 1',1);
INSERT INTO Segment VALUES('130.120.82','Brain 2',2);

INSERT INTO Salle VALUES(1,'Salle 1',3,'130.120.80');
INSERT INTO Salle VALUES(2,'Salle 2',2,'130.120.80');
INSERT INTO Salle VALUES(3,'Salle 3',2,'130.120.80');
INSERT INTO Salle VALUES(11,'Salle 11',2,'130.120.81');
INSERT INTO Salle VALUES(12'Salle 21',1,'130.120.81');
INSERT INTO Salle VALUES(21,'Salle 21',2,'130.120.82');
INSERT INTO Salle VALUES(22,'Salle 22',0,'130.120.83');
INSERT INTO Salle VALUES(23,'Salle 23',0,'130.120.83');



INSERT INTO Types VALUES('TX','Terminal X-Windows');
INSERT INTO Types VALUES('UNIX','Systeme UNIX');
INSERT INTO Types VALUES('PCNT','PC Windows NT');
INSERT INTO Types VALUES('PCWS','PC Windows');
INSERT INTO Types VALUES('NC','Network Computer');




INSERT INTO Poste VALUES(1, 'Poste 1','130.120.80',01,'TX',01);
INSERT INTO Poste VALUES(2, 'Poste 2','130.120.80',02,'UNIX',01);
INSERT INTO Poste VALUES(3, 'Poste 3','130.120.80',03,'TX',01);
INSERT INTO Poste VALUES(4, 'Poste 4','130.120.80',04,'PCWS',02);
INSERT INTO Poste VALUES(5, 'Poste 5','130.120.80',05,'PCWS',02);
INSERT INTO Poste VALUES(6, 'Poste 6','130.120.80',06,'UNIX',03);
INSERT INTO Poste VALUES(7, 'Poste 7','130.120.80',07,'TX',03);
INSERT INTO Poste VALUES(8, 'Poste 8','130.120.81',01,'UNIX',11);
INSERT INTO Poste VALUES(9, 'Poste 9','130.120.81',02,'TX',11);
INSERT INTO Poste VALUES(10, 'Poste 10','130.120.81',03,'UNIX',12);
INSERT INTO Poste VALUES(11, 'Poste 11','130.120.82',01,'PCNT',21);
INSERT INTO Poste VALUES(12, 'Poste 12','130.120.82',02,'PCWS',21);


INSERT INTO Logiciel VALUES(1 , 'Oracle 6',TO_DATE('1995-05-13', 'YYYY-MM-DD'),'6.2','UNIX',3000);
INSERT INTO Logiciel VALUES(2 , 'Oracle 8',TO_DATE('1999-09-15', 'YYYY-MM-DD'),'8i','UNIX',5600); 
INSERT INTO Logiciel VALUES(3 , 'SQL Server',TO_DATE('1998-04-12', 'YYYY-MM-DD'),'7','PCNT',2700);
INSERT INTO Logiciel VALUES(4 , 'Front Page',TO_DATE('1997-06-03', 'YYYY-MM-DD'),'5','PCWS',500);
INSERT INTO Logiciel VALUES(5 , 'WinDev',TO_DATE('1997-05-12', 'YYYY-MM-DD'),'5','PCWS',750);
INSERT INTO Logiciel (nLog,nomLog,version,typeLog,prix) VALUES(6 , 'SQL*Net ','2.0','UNIX',500);
INSERT INTO Logiciel  VALUES(7 , 'I.I.S',TO_DATE('2002-04-12', 'YYYY-MM-DD'),'2','PCNT',810);
INSERT INTO Logiciel VALUES(8 , 'DreamWeaver',TO_DATE('2003-09-21', 'YYYY-MM-DD'),'2.0','BeOS',1400);




INSERT INTO Installer VALUES(2,1,1,TO_DATE('2003-05-15', 'YYYY-MM-DD'), NULL);
INSERT INTO Installer VALUES(2,2,2,TO_DATE('2003-09-17', 'YYYY-MM-DD'), NULL);
INSERT INTO Installer (nPoste,nLog,numIns) VALUES(4,5,3);
INSERT INTO Installer VALUES(6,6,4,TO_DATE('2003-05-20', 'YYYY-MM-DD'), NULL);
INSERT INTO Installer VALUES(6,1,5,TO_DATE('2003-05-20', 'YYYY-MM-DD'), NULL);
INSERT INTO Installer VALUES(8,2,6,TO_DATE('2003-05-19', 'YYYY-MM-DD'), NULL);
INSERT INTO Installer VALUES(8,6,7,TO_DATE('2003-05-20', 'YYYY-MM-DD'), NULL);
INSERT INTO Installer VALUES(11,3,8,TO_DATE('2003-04-20', 'YYYY-MM-DD'), NULL);
INSERT INTO Installer VALUES(12,4,9,TO_DATE('2003-04-20', 'YYYY-MM-DD'), NULL);
INSERT INTO Installer VALUES(11,7,10,TO_DATE('2003-04-20', 'YYYY-MM-DD'), NULL);
INSERT INTO Installer VALUES(7,7,11,TO_DATE('2002-04-01', 'YYYY-MM-DD'), NULL);