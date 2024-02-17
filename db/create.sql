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
--products
--pens
insert into products (name, description, code, brand_id, category_id, rating_id, color_id, price) values ('ballpoint pen', 'juicy pen suitable for everyone, recommended for students.', '816905633-0', 1, 1, 1, 2, 1);
insert into products (name, description, code, brand_id, category_id, rating_id, color_id, price) values ('gel pen', 'a smooth pen with fun colour variants.', '693155505-7', 1, 1, 2, 1, 2);
insert into products (name, description, code, brand_id, category_id, rating_id, color_id, price) values ('multi-colour pen', 'pen with 6 different colours, easily switchable.', '686928463-6', 1, 1, 3, 2, 2.50);
insert into products (name, description, code, brand_id, category_id, rating_id, color_id, price) values ('erasable pen', 'pen that can erase its tracks, especially usefull to those that make a LOT of mistakes.', '492662523-7', 5, 1, 4, 2, 3);
insert into products (name, description, code, brand_id, category_id, rating_id, color_id, price) values ('calligraphy pen', 'for pretty letters and the artists.', '693155505-7', 1, 1, 1, 1, 3);
insert into products (name, description, code, brand_id, category_id, rating_id, color_id, price) values ('3 colour ballpoint pen', 'three colours: blue, black and red. what else does a person need.', '492662523-7', 1, 1, 2, 2, 2.50);
insert into products (name, description, code, brand_id, category_id, rating_id, color_id, price) values ('polycarbonate pen', 'a pen with advanced oil for advanced people.', '445924201-X', 1, 1, 2, 1, 2);
insert into products (name, description, code, brand_id, category_id, rating_id, color_id, price) values ('10 gel pens', 'a lot of pens FOR THE WHOLE FAMILY', '693155505-7', 1, 1, 2, 2, 13.50);

--pencils
insert into products (name, description, code, brand_id, category_id, rating_id, color_id, price) values ('40 mechanical pencils', 'a LOT of pencils, pastel edition!', '492662523-7', 2, 2, 1, 4, 20);
insert into products (name, description, code, brand_id, category_id, rating_id, color_id, price) values ('mechanical pencil', 'a pencil with a mechanical tip, for those who like to draw.', '445924201-X', 7, 2, 2, 1, 5);
insert into products (name, description, code, brand_id, category_id, rating_id, color_id, price) values ('ergonomic pencil', 'a pencil with ergonomic grip, good for kids that are learning to write', '816905633-0', 4, 2, 1, 4, 1.50);
insert into products (name, description, code, brand_id, category_id, rating_id, color_id, price) values ('graphite pencil', 'a pencil with the level H', '816905633-0', 7, 2, 1, 5, 1);

--erasers
insert into products (name, description, code, brand_id, category_id, rating_id, color_id, price) values ('electric eraser', 'an electric eraser that can erase anything.', '071695235-0', 3, 3, 1, 1, 12);
insert into products (name, description, code, brand_id, category_id, rating_id, color_id, price) values ('sumo grip eraser', 'EXTREMELY strong eraser. recommended for those who are not good at erasing.', '071695235-0', 3, 3, 1, 2, 3);
insert into products (name, description, code, brand_id, category_id, rating_id, color_id, price) values ('4 erasers', '4 erasers should be enough to last a schoolyear, right?', '071695235-0', 6, 3, 2, 2, 5);
insert into products (name, description, code, brand_id, category_id, rating_id, color_id, price) values ('kneaded eraser', 'an eraser you can knead to fit any form.', '071695235-0', 7, 3, 3, 11, 2);
insert into products (name, description, code, brand_id, category_id, rating_id, color_id, price) values ('eraser with grip', 'a good eraser if you need extra grip', '071695235-0', 2, 3, 2, 9, 2);

--scissors
insert into products (name, description, code, brand_id, category_id, rating_id, color_id, price) values ('small scissors with a ruler', 'some small scissors with a ruler, good for kids', '071695235-0', 8, 4, 2, 9, 4);
insert into products (name, description, code, brand_id, category_id, rating_id, color_id, price) values ('all purpose scissors', 'scissors suitable for everyone', '071695235-0', 8, 4, 1, 4, 5);
insert into products (name, description, code, brand_id, category_id, rating_id, color_id, price) values ('small scissors', 'small scissors, good to fit in a pencilcase.', '071695235-0', 1, 4, 3, 2, 4);
insert into products (name, description, code, brand_id, category_id, rating_id, color_id, price) values ('portable scissors', 'even smaller scissors that are easily transportable.', '071695235-0', 1, 4, 3, 2, 6);

--rulers
insert into products (name, description, code, brand_id, category_id, rating_id, color_id, price) values ('acrylic ruler', 'a nice good acrylic ruler.', '071695235-0', 1, 5, 1, 2, 3);
insert into products (name, description, code, brand_id, category_id, rating_id, color_id, price) values ('shatterproof rulers', 'a 4 pack of colourfull shatterproof rulers.', '071695235-0', 2, 5, 2, 2, 13);
insert into products (name, description, code, brand_id, category_id, rating_id, color_id, price) values ('wooden ruler', 'a wooden ruler made from hardwood finished with a nice finish.', '071695235-0', 8, 5, 1, 10, 5);

--notebooks
insert into products (name, description, code, brand_id, category_id, rating_id, color_id, price) values ('a4 notebook', 'a notebook for taking notebooks.', '071695235-0', 8, 6, 1, 1, 10);
insert into products (name, description, code, brand_id, category_id, rating_id, color_id, price) values ('5 multicoloured notebooks', '5 notebooks, each with a different colour.', '071695235-0', 1, 6, 2, 2, 15);
insert into products (name, description, code, brand_id, category_id, rating_id, color_id, price) values ('a4 notepad', 'a notepad suitable for taking quick notes.', '071695235-0', 6, 6, 1, 2, 4);
insert into products (name, description, code, brand_id, category_id, rating_id, color_id, price) values ('a5 notebook', 'great for mathematicians because of the square grid.', '071695235-0', 7, 6, 1, 2, 10);


insert into brands (name, description, target_audience) values ('muij', 'muij sells stationery', 'students');
insert into brands (name, description, target_audience) values ('bic', 'bic sells pencils', 'teachers');
insert into brands (name, description, target_audience) values ('sakura', 'sakura sells stationery', 'students');
insert into brands (name, description, target_audience) values ('stabilo', 'stabilo sells pens', 'children');
insert into brands (name, description, target_audience) values ('pilot', 'pilot sells stuff', 'students');
insert into brands (name, description, target_audience) values ('office essentials', 'cheap but good', 'everyone');
insert into brands (name, description, target_audience) values ('faber-castell', 'great for artistic folk', 'artists');
insert into brands (name, description, target_audience) values ('westcott', 'great for kids', 'children');


insert into categories (name, description) values ('pens', 'pens are handy dandy');
insert into categories (name, description) values ('pencils', 'pencils pencils good for drawing');
insert into categories (name, description) values ('erasers', 'erasers to erase');
insert into categories (name, description) values ('scrissors', 'sharp oh sharp scissorsssrsrs');
insert into categories (name, description) values ('rulers', 'rulers are straight');
insert into categories (name, description) values ('notebooks', 'notebooks are amazing');


insert into ratings (title, rating_text, number_rating) values ('great!!!', '5 stars, this product is absolutely great!', 5);
insert into ratings (title, rating_text, number_rating) values ('good product', '4 stars, product works as advertised', 4);
insert into ratings (title, rating_text, number_rating) values ('okay', '3 stars, product works but could be better', 3);
insert into ratings (title, rating_text, number_rating) values ('bad product', '2 stars, didnt like it', 2);
insert into ratings (title, rating_text, number_rating) values ('terrible', '1 star i HATED this product', 1);


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