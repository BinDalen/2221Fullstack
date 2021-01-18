/* Membership */

INSERT INTO MEMBERSHIP
VALUES (
    1000030120,
    'John',
    'Doe',
    '6041112222',
    'johndoe@gmail.com'
);

INSERT INTO MEMBERSHIP
VALUES (
    1001030120,
    'Anne',
    'Hathaway',
    '6049993333',
    'annehathaway@gmail.com'
);

INSERT INTO MEMBERSHIP
VALUES (
    1000050120,
    'Albert',
    'Einstein',
    '7782223333',
    'alberteinstein@gmail.com'
);

INSERT INTO MEMBERSHIP
VALUES (
    1000040220,
    'Bill',
    'Gates',
    '7781234567',
    'billgates@gmail.com'
);

INSERT INTO MEMBERSHIP
VALUES (
    1000090320,
    'Steve',
    'Jobs',
    '7789399339',
    'stevejobs@gmail.com'
);

/* Additional Members to fill db */

INSERT INTO MEMBERSHIP
VALUES (
	1000240320,
	'Margaret',
	'Atwood',
	'7785492478',
	'marg@gmail.com'
);

INSERT INTO MEMBERSHIP
VALUES (
	1000130520,
	'Steven',
	'King',
	'6042386903',
	'skballoon@gmail.com'
);

INSERT INTO MEMBERSHIP
VALUES (
	1000150420,
	'Harry',
	'Potter',
	'7784243233',
	'wizzop@gmail.com'
);

INSERT INTO MEMBERSHIP
VALUES (
	1000261219,
	'Mohammed',
	'Ali',
	'6048800364',
	'dbestmo@gmail.com'
);

/* Instructor */

INSERT INTO INSTRUCTOR
VALUES (
    1002,
    'Bernie.S',
    '6048887777',
    'bs1002@hike.com'
);

INSERT INTO INSTRUCTOR
VALUES (
    1001,
    'Colonel.S',
    '6047778888',
    'cs1001@hike.com'
);

INSERT INTO INSTRUCTOR
VALUES (
    4001,
    'Usain.B',
    '6043337777',
    'ub4001@hike.com'
);

INSERT INTO INSTRUCTOR
VALUES (
    3001,
    'Floyd.M',
    '7782224444',
    'fm3001@hike.com'
);

INSERT INTO INSTRUCTOR
VALUES (
    2001,
    'Quentin.T',
    '6048881111',
    'qt2001@hike.com'
);

INSERT INTO INSTRUCTOR
VALUES (
    4002,
    'Bruce.L',
    '6042029009',
    'bl4002@hike.com'
);

INSERT INTO INSTRUCTOR
VALUES (
    2002,
    'Agatha.C',
    '7781012277',
    'ac2002@hike.com'
);

/* Hike Location */

INSERT INTO HIKE_LOCATION
VALUES (
    201,
    'St Marks Summit',
    '2',
    '+460',
    11000,
    5
);

INSERT INTO HIKE_LOCATION
VALUES (
    202,
    'Eagle Bluffs',
    '2',
    '+350',
    8000,
    4
);

INSERT INTO HIKE_LOCATION
VALUES (
    101,
    'Dog Moutain',
    '1',
    '+34',
    5000,
    2
);

INSERT INTO HIKE_LOCATION
VALUES (
    203,
    'Mount Seymour',
    '2',
    '+450',
    9000,
    5
);

INSERT INTO HIKE_LOCATION
VALUES (
  401,
  'Baden Powell',
  '4',
  '+1000',
  48000,
  20
);

INSERT INTO HIKE_LOCATION
VALUES (
  102,
  'Quarry Rock',
  '1',
  '+100',
  3800,
  2
);

INSERT INTO HIKE_LOCATION
VALUES (
  301,
  'The Lions',
  '3',
  '+1280',
  16000,
  7
);

INSERT INTO HIKE_LOCATION
VALUES (
  302,
  'Lynn Peak',
  '3',
  '+720',
  9000,
  5
);

/* Location Gear */

INSERT INTO LOCATION_GEAR (LOCID, EQUIP)
VALUES (
  401,
  'Emergency back up water and snacks'
);

INSERT INTO LOCATION_GEAR
VALUES (
  401,
  'GPS',
  2
);

INSERT INTO LOCATION_GEAR
VALUES (
  401,
  'First-aid Kit',
  1
);

INSERT INTO LOCATION_GEAR
VALUES (
  401,
  'Insect Repellant',
  1
);

INSERT INTO LOCATION_GEAR
VALUES (
  401,
  'Flashlight',
  1
);

INSERT INTO LOCATION_GEAR
VALUES (
  401,
  'Interpretive Field Guide',
  1
);

INSERT INTO LOCATION_GEAR
VALUES (
  302,
  'First-aid Kit',
  1
);

INSERT INTO LOCATION_GEAR (LOCID, EQUIP)
VALUES (
  301,
  'Emergency back up water and snacks'
);

INSERT INTO LOCATION_GEAR
VALUES (
  301,
  'First-aid Kit',
  1
);

INSERT INTO LOCATION_GEAR
VALUES (
  203,
  'First-aid Kit',
  1
);

/* Purchase */

INSERT INTO PURCHASE
VALUES (
  11030120,
  '2020-01-03',
  1000030120,
  75,
  'Month Plan'
);

INSERT INTO PURCHASE
VALUES (
  12030120,
  '2020-01-03',
  1001030120,
  720,
  'Year Plan'
);

INSERT INTO PURCHASE
VALUES (
  11050120,
  '2020-01-05',
  1000050120,
  400,
  '6mo Plan'
);

INSERT INTO PURCHASE
VALUES (
  11040220,
  '2020-02-04',
  1000040220,
  75,
  'Month Plan'
);

INSERT INTO PURCHASE
VALUES (
  11090320,
  '2020-03-09',
  1000090320,
  720,
  'Year Plan'
);

/* Purchase records to match additional members */

INSERT INTO PURCHASE
VALUES (
	10240320,
	'2020-03-24',
	1000240320,
	720,
	'Year Plan'
);


INSERT INTO PURCHASE
VALUES (
	10130520,
	'2020-05-13',
	1000130520,
	400,
	'6mo Plan'
);


INSERT INTO PURCHASE
VALUES (
	10150420,
	'2020-04-15',
	1000150420,
	400,
	'6mo Plan'
);


INSERT INTO PURCHASE
VALUES (
	10261219,
	'2019-12-26',
	1000261219,
	720,
	'Year Plan'
);

/* Hike */

INSERT INTO HIKE
VALUES (
	302010802,
	'2020-08-02',
	3001,
	302,
	7
);

INSERT INTO HIKE
VALUES (
	102010805,
	'2020-08-05',
	1001,
	102,
	12
);

INSERT INTO HIKE
VALUES (
	203010817,
	'2020-08-17',
	2001,
	203,
	10
);

INSERT INTO HIKE
VALUES (
	201020824,
	'2020-08-24',
	2002,
	201,
	9
);

INSERT INTO HIKE
VALUES (
	401020629,
	'2020-06-29',
	4002,
	401,
	5
);

INSERT INTO HIKE
VALUES (
	101020910,
	'2020-09-10',
	1002,
	101,
	12
);

INSERT INTO HIKE
VALUES (
	302010914,
	'2020-09-14',
	4001,
	302,
	7
);

/* Registration_Table */

INSERT INTO REGISTRATION_TABLE
VALUES (
	'2020-07-02',
	102010805,
	1000030120
);


INSERT INTO REGISTRATION_TABLE
VALUES (
	'2020-06-30',
	203010817,
	100030120
);

INSERT INTO REGISTRATION_TABLE
VALUES (
	'2020-07-01',
	203010817,
	1000240320
);

INSERT INTO REGISTRATION_TABLE
VALUES (
	'2020-07-08',
	101020910,
	1000130520
);

INSERT INTO REGISTRATION_TABLE
VALUES (
	'2020-05-27',
	302010802,
	1000261219
);

INSERT INTO REGISTRATION_TABLE
VALUES (
	'2020-07-04',
	203010817,
	1001030120
);

/* Test Hike Incident */

INSERT INTO HIKE_INCIDENT
VALUES (
	401020629,
	'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer ornare aliquam rutrum. Nulla nec eros hendrerit, ultrices leo sit amet, ultrices massa.'
);
