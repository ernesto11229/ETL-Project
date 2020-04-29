drop table gun_deaths;

CREATE TABLE gun_deaths (
 	county VARCHAR NOT NULL,
 	state VARCHAR NOT NULL,
 	deaths INT,
 	population int,
	crude_rate decimal

);

CREATE TABLE police_deaths (
 	cause VARCHAR NOT NULL,
 	date DATE,
 	canine boolean,
 	state varchar
	
);






