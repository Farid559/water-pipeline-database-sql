--Water Pipeline Project ( Stage 3 )

--Farid Mammadov







Drop table owner cascade constraint;


Drop table property cascade constraint;


Drop table env_survey cascade constraint;


Drop table field_activity cascade constraint;


Drop table proper_act cascade constraint;


Drop table pipeline_package_activity cascade constraint;


Purge recyclebin;

commit;



create table owner(

  ownerid    varchar2(10),

  owner_name varchar2(60),

  phone      varchar2(15),

  address    varchar2(50),

  constraint owner_pk primary key (ownerid));

commit;

  insert into owner values ('O001', 'STATE OF COLORADO', '303-555-0101', '1300 Broadway, Denver, CO');

insert into owner values ('O002', 'DYECREST DAIRY LLC', '303-555-0102', '4521 County Road 7, Keenesburg, CO');

insert into owner values ('O003', 'DYE TERENCE W', '303-555-0103', '812 Maple St, Brighton, CO');

insert into owner values ('O004', 'KERCHENFAUT KENNETH J', '303-555-0104', '2290 Pine Ave, Fort Lupton, CO');

insert into owner values ('O005', 'SIMMONS TED V', '303-555-0105', '715 Oak Lane, Platteville, CO');

insert into owner values ('O006', 'ALLEN KATHLEEN M', '303-555-0106', '3308 Cedar Dr, Greeley, CO');

insert into owner values ('O007', 'WEATHERFORD ROBERT W', '303-555-0107', '1460 Birch Rd, Hudson, CO');

insert into owner values ('O008', 'SCHAFER JAMES H/JAMES', '303-555-0108', '925 Elm St, Brighton, CO');

insert into owner values ('O009', 'ALLEN RICHARD C/SANDRA L', '303-555-0109', '5102 Aspen Way, Longmont, CO');

insert into owner values ('O010', 'BOHEMIAN REAL ESTATE IV LLC', '303-555-0110', '77 Market St, Suite 200, Denver, CO');

insert into owner values ('O011', 'LEE PAMELA L', '303-555-0111', '2641 Willow Ct, Erie, CO');

insert into owner values ('O012', 'HALLEY LESLEY Y', '303-555-0112', '388 Spruce St, Lafayette, CO');

insert into owner values ('O013', 'SCHNEIDER MARGARET A', '303-555-0113', '1957 Walnut Ave, Frederick, CO');

insert into owner values ('O014', 'SCHWARZ JOYCE L', '303-555-0114', '640 Poplar Dr, Dacono, CO');

insert into owner values ('O015', 'CITY OF THORNTON', '303-555-0115', '9500 Civic Center Dr, Thornton, CO');

insert into owner values ('O016', 'INTLEKOFER ROBERT J', '303-555-0116', '4173 Hickory Ln, Broomfield, CO');

insert into owner values ('O017', 'SURVIVORS TRUST/DECLARATION OF TRUST/STEIDL JOHN, ZADA', '303-555-0117', '2210 Prairie View Rd, Henderson, CO');

insert into owner values ('O018', 'UNKNOWN', '303-555-0118', 'Address not available');

insert into owner values ('O019', 'SCHNORR PHILIP (.75)/JONES REBECCA (.25)', '303-555-0119', '1089 Sunset Blvd, Northglenn, CO');

insert into owner values ('O020', 'MOWERY E SUZANNE/LARRY J', '303-555-0120', '3375 Ridge Rd, Wellington, CO');

insert into owner values ('O021', 'PETTINE JOINT REVOCABLE TRUST', '303-555-0121', '560 Valley Dr, Johnstown, CO');

insert into owner values ('O022', 'BROOKLIND ESTATES HOMEOWNERS ASSOCIATION', '303-555-0122', '15 Brooklind Pkwy, Thornton, CO');

commit;




--Owner: (OWNERID, OWNER_NAME, PHONE, ADDRESS) PK= Ownerid





create table Property (

PropertyID         varchar2(10) not null,

OwnerID            varchar2(10),

Parcel_Number       varchar2(10),

Owner_Name          varchar2(60),

constraint property_ownerid_fk Foreign key(ownerid) references owner(ownerid),

constraint Property_primary_key Primary key(Propertyid));

commit;

insert into property  values ('NTP-117', 'O001', 'NTP-117', 'STATE OF COLORADO');

insert into property values ('CLP-118',    'O002', 'CLP-118', 'DYECREST DAIRY LLC');

insert into property values ('CLP-119', 'O003', 'CLP-119', 'DYE TERENCE W');

insert into property values ('CLP-120', 'O004', 'CLP-120', 'KERCHENFAUT KENNETH J');

insert into   property   values ('CLP-121', 'O005', 'CLP-121', 'SIMMONS TED V');

insert into property values ('CLP-122',    'O006', 'CLP-122', 'ALLEN KATHLEEN M');

insert into property values ('CLP-123', 'O007', 'CLP-123', 'WEATHERFORD ROBERT W');

insert into property values ('CLP-124', 'O008', 'CLP-124', 'SCHAFER JAMES H/JAMES');

insert into property values ('CLP-125', 'O009', 'CLP-125', 'ALLEN RICHARD C/SANDRA L');

insert into property values ('CLP-126', 'O002', 'CLP-126',        'DYECREST DAIRY LLC');

insert into property values ('CLP-127', 'O002', 'CLP-127', 'DYECREST DAIRY LLC');

insert into property values ('CLP-128', 'O010', 'CLP-128', 'BOHEMIAN REAL ESTATE IV LLC');

insert into property values ('CLP-135', 'O011', 'CLP-135', 'LEE PAMELA L');

insert into property values ('CLP-136', 'O012', 'CLP-136', 'HALLEY LESLEY Y');

insert into property values ('CLP-638', 'O013', 'CLP-638', 'SCHNEIDER MARGARET A');

insert into property values ('NTP-106', 'O014', 'NTP-106', 'SCHWARZ JOYCE L');

insert into property values ('NTP-107', 'O015', 'NTP-107', 'CITY OF THORNTON');

insert into property values ('NTP-108', 'O016', 'NTP-108', 'INTLEKOFER ROBERT J');

insert into property values ('NTP-553', 'O017', 'NTP-553', 'SURVIVORS TRUST/DECLARATION 
OF TRUST/STEIDL JOHN, ZADA');

insert into property values ('NTP-554', 'O018', 'NTP-554', 'UNKNOWN');

insert into property values ('NTP-109', 'O017', 'NTP-109', 'SURVIVORS TRUST/DECLARATION OF TRUST/STEIDL JOHN, ZADA');

insert into property values ('NTP-110', 'O017', 'NTP-110', 'SURVIVORS TRUST/DECLARATION OF TRUST/STEIDL JOHN, ZADA');

insert into property values ('NTP-111', 'O019', 'NTP-111', 'SCHNORR PHILIP (.75)/JONES REBECCA (.25)');

insert into property values ('NTP-112', 'O020', 'NTP-112', 'MOWERY E SUZANNE/LARRY J');

insert into property values ('NTP-113', 'O021', 'NTP-113', 'PETTINE JOINT REVOCABLE TRUST');

insert into property values ('NTP-114', 'O022', 'NTP-114', 'BROOKLIND ESTATES HOMEOWNERS ASSOCIATION');


commit;



--Property:(Propertyid, ownerid, parcel_number, owner_name) PK=Propertyid, FK=Ownerid






Create table Env_Survey(

Propertyid          varchar2(10) not null, 

Surveyid            number(6),

SurveyDate          date,

Years_remaining     number(2),

constraint env_survey_pk Primary key(propertyid,surveyid),

constraint env_survey_fk Foreign key(propertyid)

references property(propertyid));

insert into env_survey values      ('NTP-117', 10500, to_date('07/09/2020','mm/dd/yyyy'), 1);

insert into     env_survey values ('CLP-118', 10501, to_date('06/02/2023','mm/dd/yyyy'), 2);

insert into env_survey values ('CLP-119',      10502, to_date('06/02/2023','mm/dd/yyyy'), 1);

insert into env_survey values ('CLP-120',      10503, null, 3);

    insert into env_survey values ('CLP-121', 10504, to_date('06/02/2023','mm/dd/yyyy'), 2);

insert into env_survey values ('CLP-122', 10505, to_date('06/02/2023','mm/dd/yyyy'), 1);

insert into  env_surveY values ('CLP-123', 10506, to_date('06/02/2023','mm/dd/yyyy'), 2);

insert into  ENV_survey values ('CLP-124', 10507, to_date('06/02/2023','mm/dd/yyyy'), 3);

insert into env_survey values    ('CLP-125', 10508, to_date('06/02/2023','mm/dd/yyyy'), 3);

insert into env_survey values ('CLP-126', 10509, to_date('06/02/2023','mm/dd/yyyy'), 3);

insert into env_survey     values ('CLP-127', 10510, to_date('06/02/2023','mm/dd/yyyy'), 2);

insert into env_survey values ('CLP-128', 10511, to_date('09/08/2023','mm/dd/yyyy'), 1);

insert into env_survey values ('CLP-135', 10512, to_date('06/02/2023','mm/dd/yyyy'), 1);

insert into env_survey values ('CLP-136', 10513, null, 3);

insert into env_survey values  ('CLP-638', 10514, to_date('06/03/2024','mm/dd/yyyy'), 2);

 insert into env_survey values ('NTP-106', 10515, to_date('12/01/2024','mm/dd/yyyy'), 3);

insert into env_survey values ('NTP-107', 10516, to_date('12/01/2024','mm/dd/yyyy'), 3);

insert into  env_survey values ('NTP-108', 10517, to_date('12/01/2024','mm/dd/yyyy'), 2);

insert into env_survey values ('NTP-554', 10519, to_date('01/23/2024','mm/dd/yyyy'), 1);

insert into env_survey values ('NTP-112', 10523, to_date('03/01/2025','mm/dd/yyyy'), 3);

insert into env_survey values ('NTP-113', 10524, to_date('03/01/2025','mm/dd/yyyy'), 2);

insert into env_survey values ('NTP-117', 10526, to_date('11/10/2021','mm/dd/yyyy'), 1);


commit;


--Env_Survey:(Propertyid, Surveyid, Surveydate, Years_remaining) PK = Propertyid, Surveyid FK = Propertyid






create table field_activity(

Field_act_id    number(3) not null,

Descrip      varchar2(60),

constraint field_activity_pk primary key(field_act_id));


 insert into field_activity values   ('101', 'Land survey and staking');

insert into field_activity  values  (  '102',  'Utility locate before digging');

insert into field_activity  values ('103', 'Right-of-way clearing');

insert  into field_activity  values ('104', 'Topsoil removal and storage');

insert into field_activity  values ('105', 'Trench excavation');

insert into field_activity   values ('106', 'Pipe delivery and stringing');

insert into  field_activity  values ('107', 'Pipe bedding installation');

insert into field_activity  values ('108', 'Pipe welding and joining');

insert into  field_activity  values ('109', 'Pipe laying in trench');

insert into field_activity  values ('110', 'Pressure testing');

insert into field_activity  values ('111', 'Disinfection and flushing');

insert into field_activity  values ('112', 'Valve installation');

insert into field_activity  values ('113', 'Fire hydrant installation');

insert into field_activity  values ('114', 'Vault and manhole installation');

insert into field_activity  values ('115', 'Road crossing boring');

 insert    into field_activity  values ('116', 'Creek crossing installation');

insert into   field_activity  values ('117', 'Trench backfill and compaction');

insert    into field_activity  values ('118',    'Topsoil replacement and reseeding');

insert into field_activity  values (    '119', 'Fence removal and replacement');

     insert into field_activity  values ('120', 'Erosion control installation');

insert into field_activity  values ('121', 'Environmental inspection');

insert into field_activity values ('122', 'Cultural resource monitoring');

   insert into field_activity  values ('123', 'Landowner notification');

insert into field_activity  values ('124', 'Final site restoration');

insert into field_activity  values ('125', 'As-built survey');


commit;


--Field_activity: (Field_act_id, descrip)  PK=Field_act_id 




create table proper_act(

Propertyid        varchar2(10) not null,

Field_act_id      number(3),

Parcel_Number     varchar2(10),

Owner_Name        varchar2(60),

Act_Date          date,

Status            varchar2(30),

constraint proper_act_propertyid_pk primary key(propertyid,field_act_id),

constraint proper_act_fk foreign key(propertyid) references property
(propertyid));

insert into  proper_act values ('NTP-117', 101, 'NTP-117', 'STATE OF COLORADO', to_date('01/08/2024','mm/dd/yyyy'), 'Completed');

insert into proper_act  values ('CLP-118', 102, 'CLP-118', 'DYECREST DAIRY LLC', to_date('01/15/2024','mm/dd/yyyy'), 'Completed');

insert into proper_act values  ('CLP-119', 103, 'CLP-119', 'DYE TERENCE W', to_date('01/22/2024','mm/dd/yyyy'), 'Completed');

insert into proper_act values ('CLP-120',  104, 'CLP-120', 'KERCHENFAUT KENNETH J', to_date('02/05/2024','mm/dd/yyyy'), 'Need ground survey');

 insert into proper_act values ('CLP-121',  105, 'CLP-121', 'SIMMONS TED V', to_date('02/12/2024','mm/dd/yyyy'), 'Completed');

insert into proper_act values ('CLP-122', 106, 'CLP-122', 'ALLEN KATHLEEN M', to_date('02/20/2024','mm/dd/yyyy'), 'Completed');

 insert into proper_act values ('CLP-123', 107, 'CLP-123', 'WEATHERFORD ROBERT W', to_date('03/04/2024','mm/dd/yyyy'), 'Completed');

insert into proper_act values ('CLP-124', 108, 'CLP-124', 'SCHAFER JAMES H/JAMES', to_date('03/11/2024','mm/dd/yyyy'), 'Completed');

 insert into proper_act values ('CLP-125', 109, 'CLP-125', 'ALLEN RICHARD C/SANDRA L', to_date('03/18/2024','mm/dd/yyyy'), 'Completed');

insert into proper_act values ('CLP-126', 110, 'CLP-126',  'DYECREST DAIRY LLC', to_date('04/02/2024','mm/dd/yyyy'), 'Completed');

 insert into proper_act values ('CLP-127', 111, 'CLP-127', 'DYECREST DAIRY LLC',   to_date('04/09/2024','mm/dd/yyyy'), 'Completed');

insert into proper_act values ('CLP-128', 112, 'CLP-128', 'BOHEMIAN REAL ESTATE IV LLC', to_date('04/16/2024','mm/dd/yyyy'), 'Completed');

insert into proper_act values ('CLP-135', 113, 'CLP-135', 'LEE PAMELA L',   to_date('05/06/2024','mm/dd/yyyy'), 'Completed');

insert into proper_act values ('CLP-136', 114, 'CLP-136', 'HALLEY LESLEY Y', to_date('05/13/2024','mm/dd/yyyy'), 'Need ground survey');

insert  into proper_act values ('CLP-638', 115, 'CLP-638', 'SCHNEIDER MARGARET A', to_date('05/20/2024','mm/dd/yyyy'), 'Completed');

insert  into proper_act values ('NTP-106', 116, 'NTP-106', 'SCHWARZ JOYCE L',  to_date('06/03/2024','mm/dd/yyyy'), 'Completed');

insert into proper_act values ('NTP-107', 117, 'NTP-107', 'CITY OF THORNTON', to_date('06/10/2024','mm/dd/yyyy'), 'Completed');

insert into proper_act values ('NTP-108', 118, 'NTP-108', 'INTLEKOFER ROBERT J', to_date('06/17/2024','mm/dd/yyyy'), 'Completed');

insert into proper_act values ('NTP-554', 120, 'NTP-554', 'UNKNOWN', to_date('07/08/2024','mm/dd/yyyy'), 'Completed');

insert into proper_act values ('NTP-112', 124, 'NTP-112', 'MOWERY E SUZANNE/LARRY J', to_date('08/19/2024','mm/dd/yyyy'), 'Completed');

insert into proper_act values ('NTP-113', 125, 'NTP-113', 'PETTINE JOINT REVOCABLE TRUST', to_date('09/03/2024','mm/dd/yyyy'), 'Completed');

commit;



--Proper_act: (Propertyid, field_act_id, parcel_number, owner_name, Act_date, Status) PK= Propertyid, field_act_id FK= propertyid





create table Pipeline_package_activity(

Package_name                    varchar2(40)Not null,


Activityid                      number(3),

Planned_Start_Date              date, 

Planned_Completion_Date         date,

Actual_Start_Date               date,

Actual_Completion_Date          date,

constraint pipeline_package_activity_pk primary key(package_name),

constraint pipeline_package_activity_fk foreign key(activityid)

references Field_activity(field_act_id));

insert into Pipeline_package_activity values('County Line Pipeline Middle Package',102 


,to_date('07-06-2024',  'dd-mm-yyyy'),to_date('07-09-2024', 'dd-mm-yyyy'),


to_date('17-06-2024', 'dd-mm-yyyy'),to_date('20-09-2024', 'dd-mm-yyyy'));


insert into Pipeline_package_activity values ('County Line Pipeline South Package', 102, 


to_date('14-06-2024', 'dd-mm-yyyy'), to_date('14-09-2024', 'dd-mm-yyyy'), 


to_date('24-06-2024', 'dd-mm-yyyy'), to_date('25-09-2024','dd-mm-yyyy'));


insert into Pipeline_package_activity values ('Galeton Pipeline Package', 102, 


to_date('01-07-2024',  'dd-mm-yyyy'), to_date('30-09-2024',  'dd-mm-yyyy'), 


to_date('08-07-2024', 'dd-mm-yyyy'), to_date('05-10-2024',   'dd-mm-yyyy'));


insert into Pipeline_package_activity values ('Larimer Weld Pipeline Package', 102, 


to_date('15-07-2024',' dd-mm-yyyy'), to_date('15-10-2024', 'dd-mm-yyyy'), 


to_date('22-07-2024',   'dd-mm-yyyy'), to_date('21-10-2024',   'dd-mm-yyyy'));


insert into Pipeline_package_activity values   ('New Cache Pipeline Package', 104,


to_date('01-08-2024', 'dd-mm-yyyy'),  to_date('31-10-2024', 'dd-mm-yyyy'), 


to_date('12-08-2024', 'dd-mm-yyyy'),   to_date('08-11-2024', 'dd-mm-yyyy'));


insert into Pipeline_package_activity values ('North East Pipeline Package',


104, to_date('12-08-2024','dd-mm-yyyy'), to_date('12-11-2024','dd-mm-yyyy'),


to_date('19-08-2024','dd-mm-yyyy'), to_date('15-11-2024','dd-mm-yyyy'));


insert into Pipeline_package_activity values ('Northern Tier Pipeline West Package', 


107, to_date('19-08-2024','dd-mm-yyyy'), to_date('19-11-2024','dd-mm-yyyy'),


to_date('28-08-2024','dd-mm-yyyy'), to_date('25-11-2024','dd-mm-yyyy'));


insert into Pipeline_package_activity values ('South Platte Pipeline Package',


107, to_date('26-08-2024','dd-mm-yyyy'), to_date('26-11-2024','dd-mm-yyyy'), 


to_date('02-09-2024','dd-mm-yyyy'), to_date('02-12-2024','dd-mm-yyyy'));


insert into Pipeline_package_activity values ('Highway 287 Package', 110,


to_date('02-09-2024','dd-mm-yyyy'), to_date('02-12-2024','dd-mm-yyyy'), 


to_date('10-09-2024','dd-mm-yyyy'), to_date('09-12-2024','dd-mm-yyyy'));


insert into Pipeline_package_activity values ('Galeton Reservoir Package',
 

110, to_date('09-09-2024','dd-mm-yyyy'), to_date('09-12-2024','dd-mm-yyyy'), 


to_date('16-09-2024','dd-mm-yyyy'), to_date('16-12-2024','dd-mm-yyyy'));


insert into Pipeline_package_activity values ('Glade Reservoir Package', 110,

to_date('16-09-2024','dd-mm-yyyy'), to_date('16-12-2024','dd-mm-yyyy'), 


to_date('25-09-2024','dd-mm-yyyy'), to_date('20-12-2024','dd-mm-yyyy'));


insert into Pipeline_package_activity values ('Northern Tier Pipeline East Package',


110, to_date('23-09-2024','dd-mm-yyyy'), to_date('23-12-2024','dd-mm-yyyy'), 


to_date('30-09-2024','dd-mm-yyyy'), to_date('03-01-2025','dd-mm-yyyy'));


insert into Pipeline_package_activity values ('County Line Pipeline North Package',


114, to_date('01-10-2024',  'dd-mm-yyyy'), to_date('31-12-2024','dd-mm-yyyy'), 


to_date('09-10-2024' , 'dd-mm-yyyy'), to_date('10-01-2025', 'dd-mm-yyyy'));


insert into Pipeline_package_activity values ('Poudre River Pipeline Package', 


115, to_date('07-10-2024', 'dd-mm-yyyy'), to_date('07-01-2025', 'dd-mm-yyyy'), 


to_date('15-10-2024', 'dd-mm-yyyy'), to_date('14-01-2025' ,'dd-mm-yyyy'));


insert into Pipeline_package_activity values ('Boyd Lake Pipeline Package', 


116, to_date('14-10-2024', 'dd-mm-yyyy'), to_date('14-01-2025', 'dd-mm-yyyy'),


to_date('21-10-2024',  'dd-mm-yyyy'), to_date('20-01-2025', 'dd-mm-yyyy'));


insert into Pipeline_package_activity values ('Windsor Pipeline Package',
 

118, to_date('04-11-2024', 'dd-mm-yyyy'), to_date('04-02-2025', 'dd-mm-yyyy'),


to_date('12-11-2024', 'dd-mm-yyyy'), to_date('10-02-2025', 'dd-mm-yyyy'));


insert into Pipeline_package_activity values ('Fort Collins Pipeline Package',


119, to_date('11-11-2024', 'dd-mm-yyyy'),  to_date('11-02-2025', 'dd-mm-yyyy'),
 

to_date('18-11-2024', 'dd-mm-yyyy'),   to_date('17-02-2025', 'dd-mm-yyyy'));


insert into   Pipeline_package_activity values ('Horsetooth Reservoir Package', 


120,  to_date('18-11-2024',  'dd-mm-yyyy'),    to_date('18-02-2025', 'dd-mm-yyyy'),
 

to_date('26-11-2024', 'dd-mm-yyyy'),  to_date('24-02-2025', 'dd-mm-yyyy'));


insert into Pipeline_package_activity values ('Eaton Pipeline Package', 121, 


to_date('02-12-2024', 'dd-mm-yyyy'), to_date('02-03-2025',  'dd-mm-yyyy'), to_date('09-12-2024', 'dd-mm-yyyy'), to_date( '07-03-2025',  'dd-mm-yyyy'));


commit;



/*Pipeline_package_activity: ( Package_name, Activityid, Planned_Start_Date, Planned_Completion_Date, Actual_Start_Date, Actual_Completion_Date */







--Select queries

/*1)Show ownerid, owner_name and phone for owners whose name does not contain LLC
and whose address contains CO. Keep only owners whose ownerid is O005 or higher.
Sort by owner_name in reverse alphabetical order*/


select ownerid,owner_name,phone



from owner


where owner_name not like ('%LLC%') and address like ('%CO%') and ownerid>='O005'


order by owner_name desc;



/*2) Show properties whose propertyid starts with NTP. 
Show each ownerid and the number of properties they own. 
Keep only owners with 2 or more of these properties. */


select ownerid,count(propertyid)


from property


where propertyid like 'NTP%'


group by ownerid


having count(propertyid)>=2;



/*3) Show each status and the number of activities with that status. 
Use only activities done between 1 January 2024 and 30 June 2024. 
Keep only statuses with 2 or more activities. 
Sort by the number of activities, highest first*/


select status,count(field_act_id)


from proper_act


where act_date>to_date('01-01-2024','dd-mm-yyyy') and act_date<to_date('30-06-2024','dd-mm-yyyy')


group by status


having count(field_act_id)>=2


order by count(field_act_id) desc;



/*4) For each status, show the number of activities, the earliest act_date and 
the latest act_date. Use only activities with field_act_id between 101 and 115. 
Sort by the earliest date.*/


select status,count(field_act_id),min(act_date),max(act_date)


from proper_act


where field_act_id between 101 and 115


group by status


order by min(act_date);


/*5) For each years_remaining value, show the number of surveys,
the earliest surveydate and the latest surveydate. 
Ignore surveys with no date. Keep only values with 2 or more surveys. 
Sort by years_remaining.*/


select years_remaining,count(surveyid),min(surveydate),max(surveydate)


from env_survey


where surveydate is not null


group by years_remaining


having count(surveyid)>=2


order by years_remaining;



/*6) Show field_act_id and descrip for activities with field_act_id between
101 and 120, where the description does not contain inspection in any capital 
letters. Sort by field_act_id, highest first.*/

select field_act_id,descrip


from field_activity


where field_act_id between 101 and 120 and upper(descrip) not like  '%INSPECTION%'


order by field_act_id desc;




/*7) Show only  packages where actual_completion_date is later than
planned_completion_date, and leave out packages with Reservoir in the name. 
Use only packages with activityid between 105 and 120. For each activityid,
show the number of packages, the earliest planned_completion_date and the latest actual_completion_date. 
Keep only activities whose latest actual_completion_date is after 31 December 2024. 
Sort by the latest actual_completion_date, latest first.*/




Select        activityid,count(package_name),min(planned_completion_date),

max(actual_completion_date) 

from pipeline_package_activity

where to_date(actual_completion_date) > to_date(planned_completion_date) and 

upper(package_name) not like '%RESERVOIR%' and activityid between 105 and 120

group by package_name,planned_completion_date, actual_completion_date,activityid

having max(actual_completion_date)>to_date('31-Dec-2024','dd-Mon-yyyy')

order by max(actual_completion_date) desc;




/*8) Take the first 3 letters of propertyid  and call it prefix.
Show each prefix and the number of properties, called property_count.
Keep only prefixes with more than 5 properties. Sort by property_count, highest first.*/


select substr(propertyid,1,3)  prefix, count(propertyid) property_count


from property



group by substr(propertyid,1,3)


having count(propertyid)>5


order by count(propertyid) desc;



--INNER JOIN


--Query01


/*Show each owner's owner_name and phone, and the number of properties they own,
called property_count. Use only properties whose propertyid starts with CLP. 
Keep only owners with 2 or more of these properties. Sort by property_count,
highest first.*/


select owner.owner_name,owner.phone,count(propertyid) property_count


from owner inner join property on(owner.ownerid=property.ownerid)


where upper(propertyid) like 'CLP%'


group by owner.owner_name,owner.phone


having count(propertyid)>=2


order by property_count desc;



--OUTER JOIN


--Query02


/*Show every activity's field_act_id and descrip, and the number of properties 

where it was done, called property_count. Activities with no work must still show, with a count of 0. 

Keep only activities with fewer than 2 properties. Sort by property_count, then by field_act_id (highest first)..*/



select field_activity.field_act_id, descrip, count(proper_act.propertyid) property_count


from field_activity   left join proper_act on (field_activity.field_act_id = proper_act.field_act_id)


group by field_activity.field_act_id, descrip


having count(proper_act.propertyid) < 2


order by property_count, field_activity.field_act_id desc;



--SELF JOIN


--Query03


/*Show pairs of different properties that have the same owner. 
For each pair, show the ownerid, the first propertyid (call it property_1) and 
the second propertyid (call it property_2). Show each pair only once. 
Sort by ownerid, then by property_1, then by property_2. */


select  a.ownerid,a.propertyid  property_1, b.propertyid property_2


from property a inner join property b on(a.ownerid=b.ownerid)


where a.propertyid>b.propertyid


order by a.ownerid,property_1,property_2;





--SET OPERATIONS



--Query04


/*Show the propertyid of every property that has a survey,
and also has an activity. Sort by propertyid.*/

select propertyid from env_survey


intersect


select propertyid from proper_act


order by propertyid;




--WHERE, GROUP BY, and HAVING  


--Query05


/*Show each status, the number of activities, and the latest act_date. 

Use only activities from 2024 with field_act_id between 101 and 120. 

Keep only statuses with 2 or more activities.*/


select status,count(field_act_id),max(act_date)


from proper_act


where act_date between to_date('01-01-2024','dd-mm-yyyy') and 


to_date('31-12-2024','dd-mm-yyyy') and field_act_id between 101 and 120


group by status


having count(field_act_id)>=2;



--Query06

/*Take the first 5 letters of package_name and call it short_name. 

Show each short_name, the number of packages,
Use only packages where actual_start_date is not null. Keep only groups 
with 2 or more packages.*/


select substr(package_name,1,5) short_name,count(package_name)


from pipeline_package_activity


where actual_start_date is not null


group by substr(package_name,1,5)


having count(package_name)>=2;



--SUBQUERY


--Query07


/*Show the propertyid, surveyid and years_remaining of surveys that have more 
years remaining than the average of all surveys. 
Sort by years_remaining (highest first).*/


select propertyid,surveyid,years_remaining


from env_survey


where years_remaining>(select avg(years_remaining) from env_survey)


group by propertyid,surveyid,years_remaining 

order by years_remaining desc;


