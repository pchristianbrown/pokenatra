DROP TABLE IF EXISTS trainers  CASCADE;
DROP TABLE IF EXISTS pokemons  CASCADE;
DROP TABLE IF EXISTS teams     CASCADE;

CREATE TABLE trainers(
  id SERIAL PRIMARY KEY,
  name VARCHAR,
  level VARCHAR,
  img_url VARCHAR
);

CREATE TABLE pokemons(
  id SERIAL PRIMARY KEY,
  name VARCHAR,
  cp INT,
  poke_type VARCHAR,
  img_url VARCHAR
);

CREATE TABLE teams(
  name VARCHAR,
);
