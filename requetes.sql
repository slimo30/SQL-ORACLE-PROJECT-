--01
SELECT typePoste FROM Poste WHERE nPost = 8;
--02
SELECT nomLog FROM Logiciel WHERE typeLog = 'Unix';
--03
SELECT nomPoste, aIP, nSalle 
FROM Poste 
WHERE typePoste = 'Unix' OR typePoste = 'PCWS';
--04
SELECT nomPoste, aIP, nSalle 
FROM Poste 
WHERE (typePoste = 'Unix' OR typePoste = 'PCWS') AND aIP = '130.120.80'
ORDER BY nSalle DESC;
--05
SELECT nLog 
FROM Installer 
WHERE nPoste = 6;
--06
SELECT nPoste 
FROM Installer 
WHERE nLog = 1;
--07
SELECT nomPoste, aIP || '.0' || ad as adresseComplete
FROM Poste
WHERE typePoste = 'TX';

--08
SELECT nPoste, COUNT(nLog) AS nb_logiciels_installes
FROM Installer
GROUP BY nPoste;

--09
SELECT nSalle , COUNT(nPoste) AS nb_Poste_pour_Salle
FROM Poste
GROUP BY nSalle;
--10
SELECT nLog, COUNT(DISTINCT nPoste) AS nb_installations_diff_postes
FROM Installer
GROUP BY nLog;
--11
SELECT AVG(prix) AS moyenne_prix
FROM Logiciel
WHERE typeLog = 'UNIX';
--12
SELECT MAX(dateIns) AS Plus_recente
FROM Installer;
--13
SELECT nPoste
FROM Installer
GROUP BY nPoste
HAVING COUNT(nLog) = 2;
--14
SELECT COUNT(nPoste) AS nb_postes_2_logiciels
FROM (
  SELECT nPoste
  FROM Installer
  GROUP BY nPoste
  HAVING COUNT(nLog) = 2
) ;
--15
SELECT typeLp
FROM Types
WHERE typeLp NOT IN ('UNIX', 'TX', 'PCWS', 'PCNT');
--16
SELECT typeLp
FROM Types
WHERE typeLp  IN ('UNIX', 'TX', 'PONS', 'PCNT') AND typeLp IN ('UNIX', 'TX', 'PCWS', 'PCNT','BeOS');
--17
SELECT typeLp
FROM Types
WHERE typeLp  IN ('UNIX', 'TX', 'PONS', 'PCNT') AND typeLp NOT IN ('UNIX', 'TX', 'PCWS', 'PCNT','BeOS');
--18
SELECT Poste.aIP 
FROM Poste
JOIN Installer
ON Poste.nPoste = Installer.nPoste
WHERE Installer.nLog = 6;
--19
SELECT Poste.aIP 
FROM Poste
JOIN Installer ON Poste.nPoste = Installer.nPoste
JOIN Logiciel ON Installer.nLog = Logiciel.nLog
WHERE Logiciel.nomLog = 'Oracle 8';
--20
SELECT nomSegement
FROM Segment
WHERE aIP IN (
    SELECT aIP
    FROM Poste
    WHERE typePoste = 'TX'
    GROUP BY aIP
    HAVING COUNT(nPoste) = 3
);



--21
SELECT DISTINCT Salle.nomSalle
FROM Salle
JOIN Poste ON Salle.nSalle = Poste.nSalle
JOIN Installer ON Poste.nPoste = Installer.nPoste
JOIN Logiciel ON Installer.nLog = Logiciel.nLog
WHERE Logiciel.nomLog = 'Oracle 6';


--22
SELECT nomLog
FROM Logiciel
WHERE dateAch = (SELECT MAX(dateAch) FROM Logiciel);





