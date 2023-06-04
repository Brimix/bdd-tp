/* Populate entities */
INSERT INTO people(id, first_name, last_name)
VALUES
	(1, 'Brian', 'Morris'),
	(2, 'Tomas', 'Gonzalez'),
	(3, 'Seba', 'Vazdi'),
	(4, 'Fede', 'Obrist'),
	(5, 'Vicky', 'Huber'),
	(6, 'Martin', 'Pissia'),
	(7, 'Pau', 'Schlaien'),
	(8, 'Waly', 'Wagner');

INSERT INTO bars(id, name, address)
VALUES 
	(1, 'Kuhstall', 'Pellegrini 998'),
	(2, 'Patagonia Centro', ''),
	(3, 'Patagonia Rio', ''),
	(4, 'Mil85', ''),
	(5, 'World Beer', ''),
	(6, 'Matria', ''),
	(7, 'Antares', ''),
	(8, 'Cletos', ''),
	(9, 'Penion del Aguila', ''),
	(10, 'Cervario', ''),
	(11, 'Mons Beer Garden', ''),
	(12, 'Beer Bros', '');

INSERT INTO beer_types(id, keyword)
VALUES	
	(1, 'Porter'),
	(2, 'Stout'),
	(3, 'Cream Stout'),
	(4, 'Honey'),
	(5, 'Rubia clasica'),
	(6, 'IPA'),
	(7, 'APA'),
	(8, 'Barley Wine'),
	(9, 'Porter'),
	(10, 'Weise');

/* Populate relations - Will be done with randomizer */

INSERT INTO frequents(person_id, bar_id)
VALUES (2, 3);

INSERT INTO serves(bar_id, beer_type_id)
VALUES (2, 3);

INSERT INTO likes(person_id, beer_type_id)
VALUES (2, 3);
	
	
