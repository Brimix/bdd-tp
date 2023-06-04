SELECT first_name, name as bar_name
  FROM people as p, frequents as f, bars as b
 WHERE p.id = f.person_id
   AND b.id = f.bar_id;
