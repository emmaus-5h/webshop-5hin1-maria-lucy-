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


insert into products (name, description, code, price) values ('gel ink retractable ballpoint pen‐ 0.5mm', 'Nulla ut erat id mauris vulputate elementum. Nullam varius.', '077030122-3', 11);
insert into products (name, description, code, price) values ('gel ink ballpoint pen 0.7mm', 'Pellentesque at nulla. Suspendisse potenti.', '445924201-X', 13.5);
insert into products (name, description, code, price) values ('calligraphy pen', 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa.', '693155505-7', 13.5);
insert into products (name, description, code, price) values ('6‐in‐1 colour pen', 'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.', '686928463-6', 14);
insert into products (name, description, code, price) values ('triangular 3 colour ballpoint pen', 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla.', '492662523-7', 14);
insert into products (name, description, code, price) values ('erasable pen', 'pen that can erase it tracks, especially usefull to those that make a LOT of mistakes.', '077030122-3', 11);
insert into products (name, description, code, price) values ('polycarbonate pen 0.7', 'Pellentesque at nulla. Suspendisse potenti.', '445924201-X', 13.5);
insert into products (name, description, code, price) values ('gel ink retractable ballpoint pen ‐ set of 10 (0.5mm)', 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa.', '693155505-7', 13.5);