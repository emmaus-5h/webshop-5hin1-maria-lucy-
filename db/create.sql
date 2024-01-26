--
-- create tables
--

CREATE TABLE products (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  code VARCHAR(15),
  name VARCHAR(255),
  description TEXT,
  brand_id INTEGER,
  category_id INTEGER,
  rating_id INTEGER,
  price NUMERIC(10, 2)
);

CREATE TABLE brands (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT,
  description TEXT,
  target_audience TEXT  
);

CREATE TABLE ratings (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT,
  description TEXT,
  number_rating INTEGER  
);

CREATE TABLE category (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT,
  description TEXT
);



--
-- populate with data
--
-- generared using
-- curl "https://api.mockaroo.com/api/910b6c20?count=100&key=90eac760" > seed.sql
--
-- want different data? check: https://www.mockaroo.com/910b6c20
--

-- insert into products (name, description, code, price, rating) values ('ballpoint pen', 'juicy pen suitable for everyone, recommended for students.', '816905633-0', 1, 5);
-- insert into products (name, description, code, price, rating) values ('ink pen', 'a fancy pen fancied by professors, however commoners can also use it.', '077030122-3', 2, 4.5);
-- insert into products (name, description, code, price, rating) values ('gel pen', 'a smooth pen with fun colour variants, great for kids or people with nostalgia.', '693155505-7', 1.50, 4);
-- insert into products (name, description, code, price, rating) values ('multi-colour pen', 'pen with 6 different colours, easily switchable.', '686928463-6', 6, 3.5);
-- insert into products (name, description, code, price, rating) values ('erasable pen', "pen that can erase it's tracks, especially usefull to those that make a LOT of mistakes." 492662523-7, 4, 5);

