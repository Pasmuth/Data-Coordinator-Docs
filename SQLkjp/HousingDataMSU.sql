select c.EntityID,c.FirstName,c.LastName, c.HomePhone, c.WorkPhone, c.CellPhone, c.Email, c.BirthDate, c.Gender, c.Race,hud.EduHighestGrade,fin.Amount,fin.Interval, s.CreatedDate as CreatedDateService,
s.ServiceTypeID, s.ServiceID,st.Description as ServiceDescription, s.AccountID from Service s
inner join client c
on s.ProvidedToEntityID=c.EntityID
inner join ServiceType st
on st.ServiceTypeID=s.ServiceTypeID
inner join Assessment a 
on s.ProvidedToEntityID=a.ClientID
inner join AssessHUDProgram hud
on hud.AssessmentID=a.AssessmentID
inner join AssessFinancialItem fin
on fin.AssessmentID=a.AssessmentID


where  (s.BeginDate Between '2022-03-15' and '2023-03-15') 
and (s.AccountID in (178, 163, 137, 196))
and (c.EntityID in (
5978,
6369,
6562,
6758,
6759,
6832,
7180,
7373,
7675,
7961,
8054,
8312,
8765,
8977,
9076,
9335,
9479,
9578,
9763,
9767,
9847,
10059,
10093,
10213,
10269,
10301,
10316,
10424,
10441,
10576,
10766,
10827,
10936,
10988,
11029,
11194,
11206,
11213,
11325,
11608,
11879,
12065,
12075,
12088,
12329,
12337,
12443,
12834,
13039,
13112,
13197,
13202,
13410,
13464,
13492,
13562,
13641,
13665,
13784,
13936,
14137,
14220,
14246,
14336,
14368,
14485,
14582,
14624,
14654,
14662,
14817,
14932,
15034,
15150,
15177,
15565,
15846,
15861,
15927,
16182,
16183,
16445,
16540,
16541,
16713,
16939,
17102,
17326,
17638,
17778,
17882,
17925,
17964,
18063,
18134,
18143,
18265,
18479,
18520,
18930,
18953,
18992,
19054,
19122,
19195,
19197,
19344,
19593,
20314,
20569,
20754,
20807,
20831,
20970,
21017,
21146,
21156,
21164,
21372,
21439,
21854,
21949,
21975,
21980,
22358,
22449,
22572,
22628,
22708,
22937,
23145,
23150,
23161,
23456,
23525,
23576,
23710,
23862,
23873,
23979,
24115,
24150,
24195,
24633,
24811,
24919,
25006,
25113,
25157,
25364,
25505,
25606,
25642,
25681,
25743,
25771,
25886,
26011,
26165,
26254,
26375,
26396,
26409,
26501,
26627,
26678,
26766,
26904,
26998,
27022,
27116,
27409,
27441,
27811,
27956,
27992,
28289,
28448,
28682,
28687,
28724,
29015,
29022,
29088,
29173,
29297,
29301,
29338,
30327,
30355,
30481,
30527,
30778,
30836,
30844,
30910,
31089,
31166,
31499,
31602,
31663,
32095,
32682,
32798,
33015,
33028,
33167,
34515,
35054,
35056,
35151,
35160,
35168,
35434,
35439,
35574,
35798,
35922,
35985,
37052,
37060,
37168,
37375,
41289,
41381,
41716,
43342,
43348,
43841,
43980,
44305,
44972,
45075,
46323,
46406,
48015,
48078,
48207,
48255,
48343,
48472,
49000,
49322,
49524,
49622,
50751,
50883,
51073,
51188,
51600,
51643,
51804,
52178,
52612,
52701,
52783,
54629,
55170,
55339,
55816,
56019,
56317,
56541,
57124,
57441,
57661,
57765,
57829,
57934,
58197,
58485,
58859,
59462,
59724,
59750,
59793,
60035,
60109,
60137,
60140,
60197,
60235,
60255,
60279,
60420,
63321,
63380,
63394,
63519,
63540,
63545,
63578,
63810,
65143,
65165,
65191,
65353,
65404,
65406,
65465,
65813,
66678,
66864,
67150,
67244,
67412,
67458,
67648,
68227,
68349,
68420,
68752,
68813,
68825,
68827,
68830,
68914,
68953,
69109,
69302,
69303,
69397,
69420,
69489,
69603,
69698,
69705,
69767,
69793,
70862,
70870,
70908,
70919,
70959,
70963,
71058,
71401,
71428,
71451,
71662,
71749,
71900,
71990,
72182,
72203,
72210,
72440,
72552,
72642,
72686,
72834,
72956,
72962,
73091,
73130,
73155,
73176,
73236,
73283,
73430,
74511,
74569,
74595,
74706,
74806,
74909,
74912,
74930,
75020,
75061,
75067,
75083,
75162,
75271,
75284,
75300,
75330,
75344,
75381,
75393,
75405,
75431,
75471,
75482,
75524,
75531,
75552,
75562,
75567,
75582,
75587,
75601,
75605,
75644,
75646,
75665,
75666,
75706,
75712,
75713,
75723,
75738,
75747,
75749,
75763,
75848,
75863,
75880,
75884,
75901,
75909,
75910,
75953,
75968,
78044,
78075,
78078,
78096,
78125,
78177,
78178,
78183,
78213,
78394,
78405,
78427,
78538,
78569,
78598,
78641,
78663,
78684,
78685,
78752,
78803,
78834,
78836,
78841,
78842,
78846,
78896,
78900,
78923,
78949,
78961,
79004,
79028,
79044,
79054,
79078,
79095,
79123,
79150,
79155,
79165,
79300,
79332,
79343,
79357,
79400,
79587,
79588,
79600,
79747,
79778,
79846,
79869,
79899,
80065,
80362,
80494,
80569,
80570,
80589,
80701,
80718,
80719,
80748,
80966,
80967,
80973,
80974,
81021,
81046,
81054,
81090,
81140,
81313,
81314,
81462,
81643,
81677,
82057,
82642,
82643))
