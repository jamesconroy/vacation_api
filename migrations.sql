psql

CREATE DATABASE vacations;
\c vacations;

CREATE TABLE users(
  id SERIAL PRIMARY KEY,
  username VARCHAR(255)
);

CREATE TABLE locations(
  id SERIAL PRIMARY KEY,
  city VARCHAR(255)
);

CREATE TABLE visits(
  id SERIAL PRIMARY KEY,
  location_id INTEGER,
  user_id INTEGER
);
