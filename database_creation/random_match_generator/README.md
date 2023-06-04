## Random match generator
This is a C++ script to randomly fill a relationship table in a database.

It generates an SQL query that adds a list of randomly chosen pairs of indices.



### How to use
Open the `table_constants` file and change the values of the constants according to the table you're filling and how many matches you want.

Then you need to compile and run `random_population_generator.cpp`, upon doing so the resulting query will overwrite the file `table_matches.sql`

You can copy the content on the file and paste/run it in your DBMS.
