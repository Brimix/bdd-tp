CREATE TABLE bars (
	id INTEGER,
	name CHAR(20) NOT NULL,
	address CHAR(40) NOT NULL,
	PRIMARY KEY (id)
);

INSERT INTO bars(id, name, address)
VALUES 
	(1, 'Kuhstall', 'Pellegrini 998'),
	(2, 'Patagonia Centro', 'Italia 849'),
	(3, 'Patagonia Rio', 'Wheelwright 1683'),
	(4, 'Mil85', 'Pellegrini 1085'),
	(5, 'World Beer', 'Pellegrini 1647'),
	(6, 'Matria', 'Pellegrini 1644'),
	(7, 'Antares', 'Pellegrini 1149'),
	(8, 'Cleto', 'Callao 15'),
	(9, 'Penon del Aguila', 'Alvear 105'),
	(10, 'Cervario', 'Brown 2888'),
	(11, 'Mons Beer Garden', 'Francia 59 bis'),
	(12, 'Beer Bros', 'Pellegrini 388');


