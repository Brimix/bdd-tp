/* Lists pairs person-bar where the bar serves at least one beer the person likes */
CREATE VIEW likes_bar AS
SELECT DISTINCT person_id, bar_id
  FROM likes as l, serves as s
 WHERE l.beer_id = s.beer_id;
