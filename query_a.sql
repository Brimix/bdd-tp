SELECT *
  FROM bars
 WHERE id
    IN (SELECT bar_id
          FROM likes_bar as lb
         WHERE person_id
            IN (SELECT id
                  FROM people
                 WHERE name = "Brian"));
