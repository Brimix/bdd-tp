CREATE VIEW frequents_beer
SELECT person_id, beer_id
  FROM frequents as f, serves as s
 WHERE f.person_id = s.person_id;


SELECT first_name
  FROM people
 WHERE id
    IN (SELECT person_id
    	  FROM likes_beer as lb
    	 INNER JOIN frequents_beer as fb
    	    ON lb.person_id = fb.person_id
    	   AND lb.beer_id = fb.beer_id);


/* Update after solving c */
/* Solution using likes_bar */

SELECT first_name
  FROM people as p
 WHERE EXISTS
       (SELECT *
          FROM likes_bar as lb
         WHERE lb.person_id = p.id);
    
