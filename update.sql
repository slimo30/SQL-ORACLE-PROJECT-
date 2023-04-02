UPDATE DateDiff
SET day_diff =
  TRUNC(MONTHS_BETWEEN(Installer.dateIns, (SELECT dateAch FROM Logiciel WHERE Logiciel.nLog = Installer.nLog)) / 12) || ' years, ' ||
  TRUNC(MOD(MONTHS_BETWEEN(Installer.dateIns, (SELECT dateAch FROM Logiciel WHERE Logiciel.nLog = Installer.nLog)), 12)) || ' months, ' ||
  TRUNC((Installer.dateIns - (SELECT dateAch FROM Logiciel WHERE Logiciel.nLog = Installer.nLog))- (TRUNC(MONTHS_BETWEEN(Installer.dateIns, (SELECT dateAch FROM Logiciel WHERE Logiciel.nLog = Installer.nLog)) / 12) * 365) - (MOD(MONTHS_BETWEEN(Installer.dateIns, (SELECT dateAch FROM Logiciel WHERE Logiciel.nLog = Installer.nLog)), 12) * 30) )  || ' days';




 /*  /* CREATE TABLE DateDiff (
  id NUMBER,
  date1 DATE,
  date2 DATE,
  date_diff DATE
);

INSERT INTO DateDiff (id, date1, date2)
VALUES (1, TO_DATE('2022-01-10', 'YYYY-MM-DD'), TO_DATE('2023-01-10', 'YYYY-MM-DD'));

INSERT INTO DateDiff (id, date1, date2)
VALUES (2, TO_DATE('2021-03-15', 'YYYY-MM-DD'), TO_DATE('2022-08-25', 'YYYY-MM-DD'));

INSERT INTO DateDiff (id, date1, date2)
VALUES (3, TO_DATE('2019-11-01', 'YYYY-MM-DD'), TO_DATE('2023-02-01', 'YYYY-MM-DD'));

UPDATE DateDiff
SET date_diff = date2 - date1;

ALTER TABLE DateDiff MODIFY date1 DATE;
ALTER TABLE DateDiff MODIFY date2 DATE;

UPDATE DateDiff SET date_diff = TO_DATE(date2,'YYYY-MM-DD') - TO_DATE(date1, 'YYYY-MM-DD'); 


CREATE TABLE DateDiff (
  id NUMBER,
  date1 DATE,
  date2 DATE,
  day_diff VARCHAR2(300)
);

INSERT INTO DateDiff (id, date1, date2)
VALUES (1, TO_DATE('2022-01-10', 'YYYY-MM-DD'), TO_DATE('2023-01-10', 'YYYY-MM-DD'));

INSERT INTO DateDiff (id, date1, date2)
VALUES (2, TO_DATE('2021-03-15', 'YYYY-MM-DD'), TO_DATE('2022-08-25', 'YYYY-MM-DD'));

INSERT INTO DateDiff (id, date1, date2)
VALUES (3, TO_DATE('2019-11-01', 'YYYY-MM-DD'), TO_DATE('2023-02-01', 'YYYY-MM-DD'));

UPDATE DateDiff
SET day_diff = (date2 - date1) ;

UPDATE DateDiff
SET date_diff = 
  TRUNC(MONTHS_BETWEEN(date2, date1) / 12) || ' years, ' ||
  MOD(MONTHS_BETWEEN(date2, date1), 12) || ' months, ' ||
  (date2 - ADD_MONTHS(date1, TRUNC(MONTHS_BETWEEN(date2, date1)))) || ' days';


  UPDATE DateDiff
SET day_diff =
  TRUNC(MONTHS_BETWEEN(date2, date1) / 12) || ' years, ' ||
  TRUNC(MOD(MONTHS_BETWEEN(date2, date1), 12)) || ' months, ' ||
  TRUNC((date2 - date1)- (TRUNC(MONTHS_BETWEEN(date2, date1) / 12) * 365) - (MOD(MONTHS_BETWEEN(date2, date1), 12) * 30) )  || ' days';

- (TRUNC(MONTHS_BETWEEN(date2, date1) / 12) * 365) -  (MOD(MONTHS_BETWEEN(date2, date1), 12)) )
 */


 /* UPDATE Installer
SET delai = 
(
    SELECT dateAch 
    FROM Logiciel
    JOIN Installer
    ON Logiciel.nLog = Installer.nLog   
) - Installer.dateIns;


SELECT dateAch 
    FROM Logiciel
    JOIN Installer
    ON Logiciel.nLog = Installer.nLog ;


    UPDATE Installer
SET delai = INTERVAL '1' YEAR * MONTHS_BETWEEN(
                 (SELECT dateAch FROM Logiciel WHERE Logiciel.nLog = Installer.nLog),
                 Installer.dateIns
             )
WHERE EXISTS (SELECT 1 FROM Logiciel WHERE Logiciel.nLog = Installer.nLog);



UPDATE Installer
SET delai = INTERVAL 
(MONTHS_BETWEEN( SELECT dateAch  FROM Logiciel JOIN Installer ON Logiciel.nLog = Installer.nLog  , Installer.dateIns) / 12) || '-'
       || MOD((SELECT dateAch  FROM Logiciel JOIN Installer ON Logiciel.nLog = Installer.nLog, Installer.dateIns), 12) YEAR TO MONTH;



UPDATE Installer
SET delai = 
INTERVAL 
(
  (MONTHS_BETWEEN((SELECT dateAch FROM Logiciel WHERE Logiciel.nLog = Installer.nLog), Installer.dateIns) / 12) || '-'
  || MOD(MONTHS_BETWEEN((SELECT dateAch FROM Logiciel WHERE Logiciel.nLog = Installer.nLog), Installer.dateIns), 12)
) YEAR TO MONTH;


UPDATE Installer
SET delai = INTERVAL
(
  TO_CHAR ((MONTHS_BETWEEN(TO_DATE('2003-05-15', 'YYYY-MM-DD'),TO_DATE('2023-05-02', 'YYYY-MM-DD')) / 12)) || '-'
  || TO_CHAR (MOD((TO_DATE('2003-05-15', 'YYYY-MM-DD')), (TO_DATE('2003-05-15', 'YYYY-MM-DD')), 12)
)) YEAR TO MONTH;

UPDATE Installer
SET delai =
NUMTOYMINTERVAL(MONTHS_BETWEEN((SELECT dateAch FROM Logiciel WHERE Logiciel.nLog = Installer.nLog), Installer.nLog), 'MONTH');
 */

/* 
 UPDATE Installer
SET delai = INTERVAL   convert(VARCHAR(10),12) || '-' ||  convert(VARCHAR(10),12) YEAR TO MONTH;

SELECT TO_DATE('2023-05-15', 'YYYY-MM-DD') -  TO_DATE('2003-05-15', 'YYYY-MM-DD'); */

/* INSERT INTO Installer (delai)
VALUES (INTERVAL '1' YEAR * DATEDIFF(year, '2020-05-06', '2021-05-06') 
        + INTERVAL '1' MONTH * DATEDIFF(month, '2020-05-06', '2021-05-06'));

        INSERT INTO Installer (delai)
VALUES (DATEDIFF('2021-05-06','2020-05-06'));


SELECT (TO_DATE('2023-01-10', 'YYYY-MM-DD') - TO_DATE('2022-01-10', 'YYYY-MM-DD')) AS days_diff
FROM dual;

SELECT TRUNC(MONTHS_BETWEEN(TO_DATE('2023-01-10', 'YYYY-MM-DD'), TO_DATE('2022-01-10', 'YYYY-MM-DD')) / 12) AS years_diff,
       MOD(MONTHS_BETWEEN(TO_DATE('2023-01-10', 'YYYY-MM-DD'), TO_DATE('2022-01-10', 'YYYY-MM-DD')), 12) AS months_diff
FROM dual;


CREATE TABLE DateDiff (
  id NUMBER,
  date1 DATE,
  date2 DATE,
  date_diff VARCHAR2(300)
);

INSERT INTO DateDiff (id, date1, date2)
VALUES (1, TO_DATE('2022-01-10', 'YYYY-MM-DD'), TO_DATE('2023-01-10', 'YYYY-MM-DD'));

INSERT INTO DateDiff (id, date1, date2)
VALUES (2, TO_DATE('2021-03-15', 'YYYY-MM-DD'), TO_DATE('2022-08-25', 'YYYY-MM-DD'));

INSERT INTO DateDiff (id, date1, date2)
VALUES (3, TO_DATE('2019-11-01', 'YYYY-MM-DD'), TO_DATE('2023-02-01', 'YYYY-MM-DD')); */

/* UPDATE Installer
SET dalai = 
                  TRUNC(MONTHS_BETWEEN(SELECT dateAch FROM Logiciel WHERE Logiciel.nLog = Installer.nLog, Insatller.dateIns) / 12)
                  || ' years, ' ||
                  MOD(MONTHS_BETWEEN(SELECT dateAch FROM Logiciel WHERE Logiciel.nLog = Installer.nLog, Insatller.dateIns), 12)
                  || ' months, '
                  || EXTRACT(DAY FROM ((SELECT dateAch FROM Logiciel WHERE Logiciel.nLog = Installer.nLog) - (Insatller.dateIns) )) || ' days'
                ; */
