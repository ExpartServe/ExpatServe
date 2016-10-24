create table Product(
	PorductId bigint Primary Key,
	ProductType varchar(20),
	ProductName varchar(50),
	ProductImageName varchar(100),
	ProductDesc varchar(1000)
);

insert into Product values(
	1,
	'CAR',
	'AUDICAR'
	,'IMAGEPATH',
	'GOOD CAR'
);

insert into product values (8,'CAR','BMW i8','bmwi8.jpg','The BMW i8, first introduced as the BMW Concept Vision Efficient Dynamics, is a plug-in hybrid sports car developed by BMW. The 2015 model year BMW i8 has a 7.1 kWh lithium-ion battery pack that delivers an all-electric range of 37 km (23 mi) under the New European Driving Cycle (NEDC).')

insert into product values (7,'CAR','Audi A8','Audi-A8L-Sal-Quattro..jpg','The Audi A8 is a four-door, full-size, luxury sedan car manufactured and marketed by the German automaker Audi since 1994. Succeeding the Audi V8, and now in its third generation, the A8 has been offered with both front- or permanent all-wheel drive—and in short- and long-wheelbase variants.')

insert into product values (5,'CAR','Rolls-Royce Phantom','rrphantom.jpg','The Rolls-Royce Phantom is a luxury sedan made in the United Kingdom by Rolls-Royce Motor Cars. It was launched in 2003 and is the first model introduced during the BMW era. The Rolls-Royce Phantom Drophead Coupé, and the Rolls-Royce Phantom Coupé, are both based on the 2003 Phantom.')


insert into product values (6,'CAR','Ferrari 458','ferrari458.jpg','The Ferrari 458 Italia is a mid-engined sports car produced by the Italian sports car manufacturer Ferrari. The 458 replaced the Ferrari F430, and was first officially unveiled at the 2009 Frankfurt Motor Show.It is replaced by the Ferrari 488 GTB, which was unveiled at the Geneva Motor Show 2015.')









--creating new database for cars and its specification
create table cars(
	car_id bigint Primary Key,
	car_image varchar(100),
	car_name varchar(100),
	car_description varchar(100)
)

create table car_spec(
	car_spec_id bigint primary key,
	car_id bigint,
	car_spec_catg varchar(100),
	car_spec_name varchar(100),
	car_spec_desc varchar(100),
	constraint fk_car FOREIGN KEY (car_id) references cars (car_id) 
);

insert into cars values(
	1,'Tata Indigo eCS','Tata Indigo eCS','Tata Indigo eCS'
);
insert into cars values(
	2,'Mahindra Supro','Mahindra Supro','Mahindra Supro'
);
insert into cars values(
	3,'Hyundai Grand I10','Hyundai Grand I10','Hyundai Grand I10'
);
insert into cars values(
	4,'Maruti Swift','Maruti Swift','Maruti Swift'
);
insert into cars values(
	5,'Ford Figo','Ford Figo','Ford Figo'
);


insert into car_spec values(
	1,1,'PERFORMANCE','Top Speed','155 Kmph'
);
insert into car_spec values(
	2,1,'PERFORMANCE','Acceleration (0-100 kmph)','14 seconds'
);
insert into car_spec values(
	3,1,'PERFORMANCE','Engine Displacement(cc)','1405'
);
insert into car_spec values(
	4,1,'PERFORMANCE','Maximum Power','69.01bhp@4500rpm'
);
insert into car_spec values(
	5,1,'PERFORMANCE','Turning Radius','5.0 metres'
);




insert into car_spec values(
	6,1,'CAPACITY','Seating Capacity','5'
);
insert into car_spec values(
	7,1,'CAPACITY','No of Doors','4'
);
insert into car_spec values(
	8,1,'CAPACITY','Length','3988mm'
);
insert into car_spec values(
	9,1,'CAPACITY','Width','620mm'
);
insert into car_spec values(
	10,1,'CAPACITY','Height','1540mm'
);



insert into car_spec values(
	11,1,'COMFORT','Air Conditioner','yes'
);
insert into car_spec values(
	12,1,'COMFORT','Power Steering','yes'
);
insert into car_spec values(
	13,1,'COMFORT','Rear A/C Vents','no'
);
insert into car_spec values(
	14,1,'COMFORT','Engine Start/Stop Button','no'
);
insert into car_spec values(
	15,1,'COMFORT','Remote Trunk Opener','yes'
);

insert into car_spec values(
	11,1,'COMFORT','Air Conditioner','yes'
);
insert into car_spec values(
	12,1,'COMFORT','Power Steering','yes'
);
insert into car_spec values(
	13,1,'COMFORT','Rear A/C Vents','no'
);
insert into car_spec values(
	14,1,'COMFORT','Engine Start/Stop Button','no'
);
insert into car_spec values(
	15,1,'COMFORT','Remote Trunk Opener','yes'
);

insert into car_spec values(
	16,1,'SAFETY','Anti-Lock Braking System','NO'
);
insert into car_spec values(
	17,1,'SAFETY','Parking Sensors','no'
);
insert into car_spec values(
	18,1,'SAFETY','Central Locking','yes'
);
insert into car_spec values(
	19,1,'SAFETY','Driver Airbag','no'
);
insert into car_spec values(
	20,1,'SAFETY','Passenger Airbag','no'
);



insert into car_spec values(
	21,1,'OTHERS','Emission Norm Compliance','BS III'
);
insert into car_spec values(
	22,1,'OTHERS','Country of AssemblY','India'
);
insert into car_spec values(
	23,1,'OTHERS','Country of Manufacture','India'
);
insert into car_spec values(
	24,1,'OTHERS','Warranty Time','2 Years'
);
insert into car_spec values(
	25,1,'OTHERS','Warranty Distance','75000 Kms'
);






insert into car_spec values(
	26,2,'PERFORMANCE','Top Speed','95 Kmph'
);

insert into car_spec values(
	27,2,'PERFORMANCE','Engine Displacement(cc)','909'
);
insert into car_spec values(
	28,2,'PERFORMANCE','Maximum Power','45bhp@3750rpm'
);
insert into car_spec values(
	29,2,'PERFORMANCE','Turning Radius','5.9 metres'
);




insert into car_spec values(
	30,2,'CAPACITY','Seating Capacity','8'
);
insert into car_spec values(
	31,2,'CAPACITY','No of Doors','5'
);
insert into car_spec values(
	32,2,'CAPACITY','Length','3798mm'
);
insert into car_spec values(
33,2,'CAPACITY','Width','1540mm'
);
insert into car_spec values(
	34,2,'CAPACITY','Height','1922mm'
);



insert into car_spec values(
	35,2,'COMFORT','Air Conditioner','no'
);
insert into car_spec values(
	36,2,'COMFORT','Power Steering','no'
);
insert into car_spec values(
	37,2,'COMFORT','Rear A/C Vents','no'
);
insert into car_spec values(
	38,2,'COMFORT','Engine Start/Stop Button','no'
);
insert into car_spec values(
	39,2,'COMFORT','Remote Trunk Opener','no'
);


insert into car_spec values(
	40,2,'SAFETY','Anti-Lock Braking System','no'
);
insert into car_spec values(
	41,2,'SAFETY','Parking Sensors','no'
);
insert into car_spec values(
	42,2,'SAFETY','Central Locking','no'
);
insert into car_spec values(
	43,2,'SAFETY','Driver Airbag','no'
);
insert into car_spec values(
	44,2,'SAFETY','Passenger Airbag','no'
);



insert into car_spec values(
	45,2,'OTHERS','Emission Norm Compliance','BS III'
);
insert into car_spec values(
	46,2,'OTHERS','Country of AssemblY','India'
);
insert into car_spec values(
	47,2,'OTHERS','Country of Manufacture','India'
);
insert into car_spec values(
	48,2,'OTHERS','Warranty Time','2 Years'
);
insert into car_spec values(
	49,2,'OTHERS','Warranty Distance','60000 Kms'
);






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


