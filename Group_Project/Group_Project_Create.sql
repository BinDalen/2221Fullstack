CREATE TABLE MEMBERSHIP (
    MID INT NOT NULL,
    MFNAME VARCHAR(15) NOT NULL,
    MLNAME VARCHAR(15) NOT NULL,
    MPHONE VARCHAR(10) NOT NULL,
    MEMAIL VARCHAR(30) NOT NULL,
    PRIMARY KEY(MID)
);

/* Notes:
+ The format of the MID is 1000 dd mm yy 
    + 1000 incrementing by 1 if there are more than one registee in one day
*/

CREATE TABLE HIKE_LOCATION (
    LOCID INT NOT NULL,
    LOCNAME VARCHAR(20) NOT NULL,
    DIFF_LVL VARCHAR(15) NOT NULL,
    ELEVATION VARCHAR(10),
    TOTAL_DISTANCE INTEGER,
    EST_HRS SMALLINT,
    PRIMARY KEY(LOCID)
);

/* Notes:
+ Elevation specifies the overall elevation gain.
+ Information based on `https://www.explore-mag.com/20-of-the-Best-Hiking-Trails-near-Vancouver`
*/

CREATE TABLE INSTRUCTOR (
    EID INT NOT NULL,
    ENAME VARCHAR(15) NOT NULL,
    EPHONE VARCHAR(10) NOT NULL,
    EEMAIL VARCHAR(30) NOT NULL,
    PRIMARY KEY(EID)
);

/* Notes:
+ EID is organized in tiers of experience, which could indicate the locations that they could supervise.
    + 1 being the most inexperienced and 4 being the most senior
    + the tracing 3 digits indicate the instructor's number within the tier
i.e. 3002, 1004
*/

CREATE TABLE HIKE (
    EVENT_CODE INT NOT NULL,
    EVENT_DATE DATE NOT NULL,
    EID INT REFERENCES INSTRUCTOR(EID),
    LOCID INT REFERENCES HIKE_LOCATION(LOCID),
    OPEN_SEATS INT NOT NULL,
    PRIMARY KEY(EVENT_CODE)
);

CREATE TABLE HIKE_INCIDENT (
    EVENT_CODE INT REFERENCES HIKE(EVENT_CODE),
    INCIDENT VARCHAR(200)
);

CREATE TABLE LOCATION_GEAR (
    LOCID INT REFERENCES HIKE_LOCATION(LOCID),
    EQUIP VARCHAR(50) NOT NULL,
    QUANTITY INT
);

/* Notes:
+ Most of the hiking equipments listed here are sampled from `https://www.rei.com/learn/expert-advice/day-hiking-checklist.html`
    + Quantities are made nullable due to normalization of data,
    since not every type of gear could be accurately quanticized.
+ This table only contains data of additional location-specific gear for more challenging hikes.
    + This means that regular gear for every hike are not recorded.
+ This is an inventory list for instructors to check before departure.
    + This table is to be maintained by the instructors as a checklist, 
    with the approval of the most experienced instructor.
*/

CREATE TABLE REGISTRATION_TABLE (
    REG_DATE DATE NOT NULL,
    EVENT_CODE INT REFERENCES HIKE(EVENT_CODE),
    MID INT REFERENCES MEMBERSHIP(MID),
    PRIMARY KEY(MID, EVENT_CODE)
);

CREATE TABLE PURCHASE (
    PURCHASEID INT,
    TRANSAC_DATE DATE NOT NULL,
    MID INT REFERENCES MEMBERSHIP(MID),
    AMOUNT INT,
    REMARK VARCHAR(50),
    PRIMARY KEY(PURCHASEID)
);

/* Notes:
+ Since customers must be a member to register in hikes,
every member's first purchase indicates the membership type.
    + Upon renewal of membership,
    the member is given a new member id and the previous records are merged to the new id.

    + $720 for full year membership

    + $400 for 6 months of membership

    + $75 for a monthly membership

+ The purchase ID is constructed as follows:
    
    + 1 - to avoid a leading 0
    + n - incrementing count of number of purchases during the day
    + Date - ddmmyyyy

+ This would make the membership type easily queriable by matching the last 5 digits.
*/


