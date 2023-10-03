--select fm.FamilyID,EntityID,FirstName,LastName,BirthDate,ca.County,ca.City from client c

--inner join clientaddress ca
--on ca.clientID=c.entityID

--inner join FamilyMember fm
--on fm.ClientID=c.EntityID

--where (c.BirthDate Between '2018-09-10' and '2020-09-10')




--select * from family

select fm.FamilyID,fm.ClientID,c.FirstName,c.LastName,c.BirthDate,c.CellPhone,c.HomePhone,c.WorkPhone,c.email, ca.County,ca.City from FamilyMember fm
inner join client c
on c.EntityID=fm.ClientID
inner join ClientAddress ca
on ca.ClientID=c.EntityID
where fm.FamilyID in(
34111,
36545,
36777,
8539,
15151,
16249,
36556,
37057,
4134,
37241,
16419,
13397,
37366,
37086,
36611,
37425,
37432,
14155,
35292,
37477,
28395,
5521,
37060,
35930,
7727,
28581,
4565,
37618,
19246,
28832,
7336,
36823,
34263,
11771,
37781,
13030,
10943,
38044,
36167,
38060,
38076,
26237,
32394,
14116,
38197,
38197,
38197,
38198,
4669,
38234,
7926,
30327,
15824,
38286,
32648,
25916,
28173,
38413,
14298,
4637,
24762,
36366,
20754,
15222,
7885,
38559,
5843,
33407,
8428,
43618,
38624,
13078,
3794,
10973,
36883,
36790,
38696,
36782,
28461,
38708,
38719,
38714,
38751,
38766,
14373,
36467,
35435,
32447,
31797,
40880,
14532,
35478,
36291,
40893,
28270,
40944,
8185,
40985,
36866,
35905,
40999,
33264,
41006,
41007,
36140,
41018,
6713,
41027,
41035,
41056,
5880,
11090,
14376,
32084,
28723,
38087,
2900,
16017,
5076,
41171,
41173,
41174,
41177,
4831,
20626,
41202,
8240,
41228,
35863,
38150,
41257,
41277,
34011,
40873,
13909,
12715,
10437,
41317,
38553,
33688,
42376,
42380,
10104,
42392,
37499,
28213,
42447,
8234,
12730,
26697,
41145,
11494,
16908,
42647,
20475,
37034,
6655,
41356,
37876,
38362,
38451,
9119,
33056,
37459,
15114,
9877,
42894,
42903,
28826,
42909,
42738,
36732,
21237,
42950,
42623,
42970,
42974,
42976,
37682,
42995,
35595,
6194,
19382,
43045,
43047,
43048,
9312,
43059,
43071,
7147,
37601,
43094,
4241,
36608,
43101,
25986,
4620,
5922,
16088,
27990,
43214,
37014,
13135,
8172,
43503,
43511,
2731,
43669,
43699,
43722,
43734,
43751,
2770,
43930,
17036,
35324,
44009,
44016,
4688,
44028,
32324,
44056,
44062,
44093,
44102,
44117,
44127,
44144,
4642,
44175,
44215,
44215,
44220,
44347,
44379,
44395,
44406,
44341,
40914,
9748,
26711,
44431,
44436,
44436,
43820,
14016,
41253,
13146,
21452,
13182,
37473,
16989,
44472,
16908,
43606,
6445,
31883,
44510,
33121,
35758,
35289,
28147,
44539,
10810,
44498,
44187,
2775,
44345,
40985,
20620,
44559,
44559,
44708,
37499,
44574,
44574,
44238,
44579,
3187,
44596,
3391,
35292,
44631,
44635,
44651,
26676,
17063,
29076,
5876,
42669,
44715,
26701,
44744,
44768,
44796,
44803,
19120,
41366,
45054,
13041,
40826,
45159,
45161,
28856,
41316,
45181,
45183,
25802,
45211,
45278,
45293,
12817,
19430,
26710,
45324,
46354,
46354,
46398,
46398,
44081,
36910,
46356,
46501,
46515,
46515,
46522,
15255,
46594,
46597,
46598,
7554,
38418,
46655,
38159,
38778,
46689,
32187,
46719,
46731,
12471,
46761,
12735,
10879,
46801,
9888,
46782,
4698,
4877,
28717,
46897,
28738,
46938,
34163,
46952,
14472,
35354,
46968,
27996,
46974,
46980,
47006,
47034,
47036,
47072,
20871,
36266,
47102,
47107,
37726,
36061,
37745,
8736,
21271,
47173,
47183,
47197,
47197,
32014,
47244,
47252,
44850,
47273,
4542,
47333,
47340,
13194,
15299,
47473,
47473,
47480,
47507,
10641,
10641,
19269,
8961,
8961,
47572,
47617,
20705,
47624,
47633,
47634,
47643,
47644,
47656,
47711,
47716,
47717,
44050,
47730,
47784,
47786,
47795,
19425,
2881,
47856,
38765,
47935,
28146,
4742,
10429,
7776,
26127,
30368,
43495,
49157,
49158,
44462,
10590,
10172,
47509,
49197,
49216,
49266,
49268,
49291,
12517,
49347,
49347,
49365,
49364,
49364,
5935,
12528,
11247,
49508,
49527,
42423,
40994,
49569,
14900,
49625,
13798,
49531,
36976,
8471,
49762,
49776,
16447,
49788,
33483,
49828,
12797,
50987,
51045,
30220,
47185,
19344,
51275,
51278,
51283,
51292,
48991,
51328,
51351,
51354,
51401,
28749,
51402,
16608,
51423,
51434,
51445,
51496,
51497,
17068,
51530,
51555,
51585,
33918,
51681,
51738,
51739,
36355,
51757,
51778,
51808,
51818,
51826,
12452,
49476,
51856,
3834,
51895,
51940,
51942,
17034,
33585,
33585,
51997,
52016,
5395,
52027,
28545,
51464,
51464,
52125,
52159,
36104,
52332,
52341,
47255,
52409,
5912,
52413,
52511,
20874,
52515,
43373,
13661,
52800,
7379,
32216,
52946,
52963,
52967,
52991,
43605,
53026,
53158,
53158,
53168,
53256,
53282,
5803,
52268,
53340,
36037,
53417,
53479,
53520,
53535,
35801,
53025,
53620,
52922,
32435,
5876,
5876,
53692,
9816,
53809,
53818,
53818,
53620,
15316,
53885,
53928,
47199,
54016,
54043,
54085,
15420,
54103,
54105,
54107,
54107,
54096,
9776,
25857,
46822,
54135,
54168)
