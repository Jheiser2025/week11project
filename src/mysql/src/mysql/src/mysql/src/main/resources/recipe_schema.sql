DROP TABLE IF EXISTS ingredient;
DROP TABLE IF EXISTS step;
DROP TABLE IF EXISTS recipe_category;
DROP TABLE IF EXISTS unit;
DROP TABLE IF EXISTS category;
DROP TABLE IF EXISTS recipe;

CREATE TABLE recipe (
	recipe_id int /*auto_increment*/ not null,
	recipe_name VARCHAR(128) not null,
	notes TEXT,
	num_servings int,
	prep_time TIME,
	cook_time TIME,
	create_ae TIMESTAMP not null default current_timestamp
);

CREATE TABLE category (
	category_id int /*auto_increment*/not null,
	category_name VARCHAR(64) not null
);

CREATE TABLE unit (
	unit_id int /*auto_increment*/not null,
	unit_name_singular VARCHAR (32) not null,
	unit_name_plural VARCHAR (34) not null
);

CREATE TABLE recipe_category (
	recipe_id int not null,
	category_id int not null
);

CREATE TABLE step (
	step_id int /*auto_increment*/ not null,
	recipe_id int not null,
	step_order int not null,
	step_text TEXT not null
);

CREATE TABLE ingredient (
	ingredient_id int/*auto_increment*/ not null,
	reciepe_id int not null,
	unit_id int not null,
	ingredient_name VARCHAR(64) not null,
	instruction VARCHAR(64),
	ingredient_order int not null,
	amount DECIMAL(7, 2)
);
