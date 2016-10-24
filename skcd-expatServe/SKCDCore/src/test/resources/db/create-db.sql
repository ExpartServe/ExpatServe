create table ES_Person(
	Person_Id varchar(100) primary key,
	Person_Name varchar(100),
	contact_no bigint,
	email varchar(100),
	created_dt timestamp default LOCALTIMESTAMP,
	created_by varchar(20)

);

create table ES_HousePost(
	House_Id varchar(100) primary Key,
	Person_Id varchar(100),
	AddrsLine1 varchar(100),
	AddrsLine2 varchar(100),
	PostCode varchar(20),
	City varchar(50),
	HouseDesc   varchar(200),
	NoOfVacancies   bigint,
	AvailableRooms bigint,
	rent_amnt decimal,
	created_dt timestamp default LOCALTIMESTAMP,
	created_by varchar(20),
	FOREIGN KEY (Person_Id) REFERENCES ES_Person (Person_Id)
);



alter table ES_HousePost
add column image varchar(100);








create table ES_Person_1(
	Person_Id varchar(100) primary key,
	Person_Name varchar(100),
	contact_no bigint,
	email varchar(100),
	created_dt timestamp default LOCALTIMESTAMP,
	created_by varchar(20)

);

create table ES_HousePost_1(
	House_Id varchar(100) primary Key,
	Person_Id varchar(100),
	hsNumber varchar(50),
	PostCode varchar(20),
	City varchar(50),
	houseType varchar(50),
	furnishedState varchar(20),
	rent_amnt decimal,
	inclusiveFlag varchar(20),
	duration varchar(20),
	image text,
	HouseDesc   varchar(200),
	created_dt timestamp default LOCALTIMESTAMP,
	created_by varchar(20),
	FOREIGN KEY (Person_Id) REFERENCES ES_Person_1 (Person_Id)
);
