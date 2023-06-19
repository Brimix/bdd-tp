CREATE VIEW frequents_beer
SELECT person_id, beer_id
  FROM frequents as f, serves as s
 WHERE f.person_id = s.person_id;

SELECT first_name
  FROM people as p where id IN(
      SELECT person_id FROM frequents as f 
          WHERE EXISTS
          (SELECT *
           FROM likes_bar as lb
           WHERE lb.person_id = p.id AND lb.bar_id=f.bar_id));