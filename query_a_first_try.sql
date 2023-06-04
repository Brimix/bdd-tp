SELECT *
  FROM bars
 WHERE id IN
       -- bars that serve beers that Jorge likes
       (SELECT bar_id
          FROM serves
         WHERE beer_id IN
               -- beers that Jorge likes
               (SELECT beer_id
                  FROM likes_beer
                 WHERE person_id IN
                       (SELECT id
                          FROM people
                         WHERE name = 'Jorge'
                       )
               )
       
       );

