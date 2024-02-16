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
insert into products (name, description, code, brand_id, category_id, rating_id, color_id, price) values ('ballpoint pen', 'juicy pen suitable for everyone, recommended for students.', '816905633-0', 1, 1, 1, 2, 1);
insert into products (name, description, code, brand_id, category_id, rating_id, color_id, price) values ('gel pen', 'a smooth pen with fun colour variants.', '693155505-7', 1, 1, 2, 1, 2);
insert into products (name, description, code, brand_id, category_id, rating_id, color_id, price) values ('multi-colour pen', 'pen with 6 different colours, easily switchable.', '686928463-6', 1, 1, 3, 2, 2.50);
insert into products (name, description, code, brand_id, category_id, rating_id, color_id, price) values ('erasable pen', "pen that can erase it's tracks, especially usefull to those that make a LOT of mistakes." 492662523-7, 6, 1, 4, 2, 3);
insert into products (name, description, code, brand_id, category_id, rating_id, color_id, price) values ('calligraphy pen', 'for pretty letters and the artists.', '693155505-7', 1, 1, 1, 1, 3);
insert into products (name, description, code, brand_id, category_id, rating_id, color_id, price) values ('3 colour ballpoint pen', 'three colours: blue, black and red. what else does a person need.', '492662523-7', 1, 1, 2, 2, 2.50);
insert into products (name, description, code, brand_id, category_id, rating_id, color_id, price) values ('erasable pen', 'pen that can erase it tracks, especially usefull to those that make a LOT of mistakes.', '077030122-3', 11);
insert into products (name, description, code, brand_id, category_id, rating_id, color_id, price) values ('polycarbonate pen', 'a pen with advanced oil for advanced people.', '445924201-X', 1, 1, 2, 1, 2);
insert into products (name, description, code, brand_id, category_id, rating_id, color_id, price) values ('10 gel pens', 'a lot of pens FOR THE WHOLE FAMILY', '693155505-7', 1, 1, 2, 2, 13.50);

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
insert into brands (name, description, target_audience) values ('pilot', 'pilot sells stuff', 'students');

insert into ratings (title, rating_text, number_rating) values ('5 star', '5 stars i love love loveeee this', 5);
insert into ratings (title, rating_text, number_rating) values ('alright pens', 'welllll its okaokaokao', 4);
insert into ratings (title, rating_text, number_rating) values ('mid pens', 'its ok', 3);
insert into ratings (title, rating_text, number_rating) values ('bad pens', 'its bad I HATE THEM', 2);
insert into ratings (title, rating_text, number_rating) values ('terrible pens', 'its terrible i am so dissapointed', 1);
insert into ratings (title, rating_text, number_rating) values ('okay', '3 stars', 3);


insert into categories (name, description) values ('pens', 'pens are handy dandy');
insert into categories (name, description) values ('pencils', 'pencils pencils good for drawing');
insert into categories (name, description) values ('eraser', 'erasers');
insert into categories (name, description) values ('scrissors', 'sharp oh sharp scissorsssrsrs');
insert into categories (name, description) values ('rulers', 'rulers are straight');
insert into categories (name, description) values ('staplers', 'staplers are handy yippe');
insert into categories (name, description) values ('notebooks', 'notebooks are amazing');


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
