SELECT first_name
  FROM people
 WHERE NOT EXISTS
       (SELECT *
          FROM frequents as f, likes_bar as l
         WHERE f.person_id = l.person_id
           AND f.bar_id = l.bar_id);
