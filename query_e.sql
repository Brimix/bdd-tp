SELECT name
  FROM people as p
 WHERE NOT EXISTS
       (SELECT *
          FROM bars as b
         WHERE NOT EXISTS
               (SELECT *
                  FROM frequents as f
                 WHERE f.person_id = p.id
                   AND f.bar_id = b.id));
