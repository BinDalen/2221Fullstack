/*MYSQL PORTION OF 20 Queries*/

/* 1. Retrieve employee information for customers (Custome-ver employee list) */

SELECT ENAME, EPHONE
FROM INSTRUCTOR;

/* 2. Retrieve EID, EEMAIL for work communication (Company in-house contact list) */

SELECT EID, EEMAIL
FROM INSTRUCTOR;

/* 3. Delete all hikes that are expired */

DELETE FROM HIKE
WHERE EVENT_DATE<CURDATE();

/* 4. Retrieve ENAME, EVENT_DATE, LOCNAME to show which instructor is scheduled for each hike (for customers) */

SELECT H.EVENT_DATE, I.ENAME, L.LOCNAME
FROM HIKE H
INNER JOIN (
	SELECT EID, ENAME
	FROM INSTRUCTOR
) I ON I.EID=H.EID
INNER JOIN (
	SELECT LOCID, LOCNAME
	FROM HIKE_LOCATION
) L ON L.LOCID=H.LOCID;

/* 5. Retrieve membership type of members (REMARKS) and names (Reg date is implied in MID) */

SELECT M.MID, M.MFNAME, M.MLNAME, P.REMARK
FROM MEMBERSHIP M
LEFT JOIN (
	SELECT MID, REMARK
	FROM PURCHASE
	WHERE REMARK='Month Plan' || REMARK='6mo Plan' || REMARK='Year Plan'
) P ON M.MID=P.MID;

/* 6. Retrieve LOCNAME, EQUIP, QUANTITY for instructors to prepare for a specific hike based on LOCNAME */

SELECT L.LOCNAME, G.EQUIP, G.QUANTITY
FROM HIKE_LOCATION L
RIGHT JOIN (
	SELECT LOCID, EQUIP, QUANTITY
	FROM LOCATION_GEAR
) G ON G.LOCID=L.LOCID
WHERE LOCNAME='Mount Seymour';

/* 7. Retrieve all purchases by a certain member based on MID and MPHONE */

SELECT P.PURCHASEID, P.AMOUNT
FROM MEMBERSHIP M
RIGHT JOIN (
	SELECT PURCHASEID, AMOUNT, MID
	FROM PURCHASE
) P ON P.MID=M.MID
WHERE M.MID=1000030120 AND M.MPHONE='6041112222';

/* 8. Retrieve the number of hikes the instructurs are scheduled to */

SELECT I.ENAME, H.HIKECOUNT
FROM INSTRUCTOR I
INNER JOIN (
	SELECT EID, COUNT(EVENT_CODE) AS HIKECOUNT
	FROM HIKE
	GROUP BY EID
) H ON H.EID=I.EID;


