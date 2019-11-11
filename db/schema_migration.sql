-- Write your sql commands to create your db schema here.
-- It should create a table in a new table in the db/ directory.

<<<<<<< HEAD
=======
-- sqlite3 path/to/pokemon.db < Pokemon.save

-- sqlite3 path/to/database.db < source_of_sql_data
>>>>>>> f127463bd9f4b5234704a7a27dea2e9ac4c1c51d
CREATE TABLE IF NOT EXISTS pokemon(id INTEGER PRIMARY KEY, name TEXT, type TEXT);
