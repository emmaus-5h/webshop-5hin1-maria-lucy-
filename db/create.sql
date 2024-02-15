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
  color_id INTEGER,
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
  title TEXT,
  rating_text TEXT,
  number_rating INTEGER  
);

CREATE TABLE categories (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT,
  description TEXT
);

CREATE TABLE colors (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name_color TEXT,
  hex_color TEXT
);

--
-- populate with data
--
-- generared using
-- curl "https://api.mockaroo.com/api/910b6c20?count=100&key=90eac760" > seed.sql
--
-- want different data? check: https://www.mockaroo.com/910b6c20
--

--pens and pencils
insert into products (name, description, code, price) values ('ballpoint pen', 'juicy pen suitable for everyone, recommended for students.', '816905633-0', 1);
insert into products (name, description, code, price) values ('ink pen', 'a fancy pen fancied by professors, however commoners can also use it.', '077030122-3', 2);
insert into products (name, description, code, price) values ('gel pen', 'a smooth pen with fun colour variants, great for kids or people with nostalgia.', '693155505-7', 1.50);
insert into products (name, description, code, price) values ('multi-colour pen', 'pen with 6 different colours, easily switchable.', '686928463-6', 6);
insert into products (name, description, code, price) values ('erasable pen', "pen that can erase it's tracks, especially usefull to those that make a LOT of mistakes." 492662523-7, 4);
insert into products (name, description, code, price) values ('gel ink retractable ballpoint pen‐ 0.5mm', 'Nulla ut erat id mauris vulputate elementum. Nullam varius.', '077030122-3', 11);
insert into products (name, description, code, price) values ('gel ink ballpoint pen 0.7mm', 'Pellentesque at nulla. Suspendisse potenti.', '445924201-X', 13.5);
insert into products (name, description, code, price) values ('calligraphy pen', 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa.', '693155505-7', 13.5);
insert into products (name, description, code, price) values ('6‐in‐1 colour pen', 'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.', '686928463-6', 14);
insert into products (name, description, code, price) values ('triangular 3 colour ballpoint pen', 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla.', '492662523-7', 14);
insert into products (name, description, code, price) values ('erasable pen', 'pen that can erase it tracks, especially usefull to those that make a LOT of mistakes.', '077030122-3', 11);
insert into products (name, description, code, price) values ('polycarbonate pen 0.7', 'Pellentesque at nulla. Suspendisse potenti.', '445924201-X', 13.5);
insert into products (name, description, code, price) values ('gel ink retractable ballpoint pen ‐ set of 10 (0.5mm)', 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa.', '693155505-7', 13.5);
insert into products (name, description, code, price) values ('0.5M mechanical Pencil', '.', '077030122-3', 1.50);
--notebooks
--erasers
--scissors
--rulers
--staplers

insert into brands (name, description, target_audience) values ('muij', 'muij sells stationery', 'students');
insert into brands (name, description, target_audience) values ('pentel', 'pentel sells pens', 'everyone');
insert into brands (name, description, target_audience) values ('bic', 'bic sells pencils', 'teachers');
insert into brands (name, description, target_audience) values ('sakura', 'sakura sells stationery', 'students');
insert into brands (name, description, target_audience) values ('hema', 'hema sells stationery', 'children');
insert into brands (name, description, target_audience) values ('stabilo', 'stabilo sells pens', 'children');


insert into ratings (title, rating_text, number_rating) values ('5 star', '5 stars i love love loveeee this', 5);
insert into ratings (title, rating_text, number_rating) values ('alright pens', 'welllll its okaokaokao', 4);
insert into ratings (title, rating_text, number_rating) values ('mid pens', 'its ok', 3);
insert into ratings (title, rating_text, number_rating) values ('bad pens', 'its bad I HATE THEM', 2);
insert into ratings (title, rating_text, number_rating) values ('terrible pens', 'its terrible i am so dissapointed', 1);
insert into ratings (title, rating_text, number_rating) values ('okay', '3 stars', 3);


insert into categories (name, description) values ('notebooks', 'notebooks are amazing');
insert into categories (name, description) values ('pens', 'pens are handy dandy');
insert into categories (name, description) values ('pencils', 'pencils pencils good for drawing');
insert into categories (name, description) values ('eraser', 'erasers');
insert into categories (name, description) values ('scrissors', 'sharp oh sharp scissorsssrsrs');
insert into categories (name, description) values ('rulers', 'rulers are straight');
insert into categories (name, description) values ('staplers', 'staplers are handy yippe');


insert into colors (name_color, hex_color) values ('black', '#000000');
insert into colors (name_color, hex_color) values ('white', '#FFFFFF');
insert into colors (name_color, hex_color) values ('red', '#FF0000');
insert into colors (name_color, hex_color) values ('blue', '#0000FF');
insert into colors (name_color, hex_color) values ('green', '#00FF00');
insert into colors (name_color, hex_color) values ('yellow', '#FFFF00');
insert into colors (name_color, hex_color) values ('orange', '#FFA500');
insert into colors (name_color, hex_color) values ('purple', '#800080');
insert into colors (name_color, hex_color) values ('pink', '#FFC0CB');
insert into colors (name_color, hex_color) values ('brown', '#A52A2A');
insert into colors (name_color, hex_color) values ('gray', '#808080');
