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
	beer_id INTEGER,
	PRIMARY KEY (bar_id, beer_id),
	FOREIGN KEY (bar_id) REFERENCES bars(id),
	FOREIGN KEY (beer_type_id) REFERENCES beer_types(id),
)

CREATE TABLE likes (
	person_id INTEGER,
	beer_id INTEGER,
	PRIMARY KEY (person_id, beer_id),
	FOREIGN KEY (person_id) REFERENCES people(id),
	FOREIGN KEY (beer_type_id) REFERENCES beer_types(id),
)
