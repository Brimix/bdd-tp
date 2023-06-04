/* Create entities tables */

CREATE TABLE people (
	id INTEGER,
	first_name CHAR(30),
	last_name CHAR(30),
	PRIMARY KEY (id),
)

CREATE TABLE beer_types (
	id INTEGER,
	keyword CHAR(10),
	PRIMARY KEY (id),
)

CREATE TABLE bars (
	id INTEGER,
	name CHAR(20) NOT NULL,
	address CHAR(40) NOT NULL,
	PRIMARY KEY (id),
)


/* Create relations tables*/

CREATE TABLE frequents (
	person_id INTEGER,
	bar_id INTEGER,
	PRIMARY KEY (person_id, bar_id),
	FOREIGN KEY (person_id) REFERENCES people(id),
	FOREIGN KEY (bar_id) REFERENCES bars(id),
)

CREATE TABLE serves (
	bar_id INTEGER,
	beer_type_id INTEGER,
	PRIMARY KEY (bar_id, beer_type_id),
	FOREIGN KEY (bar_id) REFERENCES bars(id),
	FOREIGN KEY (beer_type_id) REFERENCES beer_types(id),
)

CREATE TABLE likes (
	person_id INTEGER,
	beer_type_id INTEGER,
	PRIMARY KEY (person_id, beer_type_id),
	FOREIGN KEY (person_id) REFERENCES people(id),
	FOREIGN KEY (beer_type_id) REFERENCES beer_types(id),
)
