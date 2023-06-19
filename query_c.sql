CREATE VIEW likes_bar
SELECT UNIQUE person_id, bar_id
  FROM likes_beer as lbeer, serves as s
 WHERE lbeer.beer_id = s.beer_id



SELECT first_name
  FROM people as p
 WHERE NOT EXISTS
       (
       -- bars they frequent and they not like
       SELECT bar_id
         FROM frequents as f
        WHERE f.person_id = p.id
          AND bar_id NOT IN
              (
              -- bars they like
              SELECT bar_id
                FROM likes_bar as lb
               WHERE lb.person_id = p.id
              )
       )

