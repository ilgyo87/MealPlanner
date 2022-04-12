USE master;
GO

DROP DATABASE IF EXISTS mealPlanner;

CREATE DATABASE mealPlanner;
GO

USE mealPlanner
GO

BEGIN TRANSACTION;

CREATE TABLE users
(
	user_id int identity(1,1),
	username varchar(50) not null,
	password_hash varchar(200) not null,
	salt varchar(200) not null,
	CONSTRAINT PK_users PRIMARY KEY (user_id)
);

CREATE TABLE accounts 
(
	account_id int identity(1,1),
	user_id int not null,
	first_name varchar(100),
	last_name varchar(100),
	address varchar(200),
	zipcode int,
	state char(2),
	phone_number int,
	email varchar(100),
	CONSTRAINT PK_accounts PRIMARY KEY (account_id),
	CONSTRAINT FK_accounts_users FOREIGN KEY (user_id) REFERENCES users(user_id)
);

CREATE TABLE cuisine
(
	cuisine_id int identity(1,1),
	name varchar(50) not null,
	CONSTRAINT PK_cuisine PRIMARY KEY (cuisine_id),
);

CREATE TABLE recipes
(
	recipe_id int identity(1,1),
	recipe_name varchar(100) not null,
	description varchar(500),
	prep_time time,
	cook_time time,
	date_created date,
	user_id int not null,
	cuisine_id int not null,
	CONSTRAINT PK_recipes PRIMARY KEY (recipe_id),
	CONSTRAINT FK_recipes_users FOREIGN KEY (user_id) REFERENCES users(user_id),
	CONSTRAINT FK_recipes_cuisine FOREIGN KEY (cuisine_id) REFERENCES cuisine(cuisine_id),
);

CREATE TABLE food_type
(
	type_id int identity(1,1),
	name varchar(50) not null,
	isFresh bit not null,
	CONSTRAINT PK_food_type PRIMARY KEY (type_id),
);

CREATE TABLE ingredient
(
	ingred_id int identity(1,1),
	name varchar(100) not null,
	cost money not null,
	type_id int not null,
	CONSTRAINT PK_ingredient PRIMARY KEY (ingred_id),
	CONSTRAINT FK_ingredient_food_type FOREIGN KEY (type_id) REFERENCES food_type (type_id),
);

CREATE TABLE recipes_ingredients
(
	recipe_id int not null,
	ingred_id int not null,
	CONSTRAINT PK_recipes_ingredients PRIMARY KEY (recipe_id, ingred_id),
	CONSTRAINT FK_recipes_ingredients_recipes FOREIGN KEY (recipe_id) REFERENCES recipes(recipe_id),
	CONSTRAINT FK_recipes_ingredients_ingredient FOREIGN KEY (ingred_id) REFERENCES ingredient(ingred_id),
);


CREATE TABLE directions
(
	steps_id int not null,
	description varchar(500),
	step_number int,
	recipe_id int not null,
	CONSTRAINT PK_directions PRIMARY KEY(steps_id),
	CONSTRAINT FK_directions_recipes FOREIGN KEY (recipe_id) REFERENCES recipes(recipe_id)
);

CREATE TABLE planner
(
	planner_id int not null,
	name varchar(50),
	recipe_id int,
	user_id int,
	day varchar(20),
	week int,
	isSharable bit not null,
	CONSTRAINT PK_planner PRIMARY KEY(planner_id),
	CONSTRAINT FK_planner_recipes FOREIGN KEY(recipe_id) REFERENCES recipes(recipe_id),
	CONSTRAINT FK_planner_users FOREIGN KEY(user_id) REFERENCES users(user_id),
	CONSTRAINT CHK_day CHECK (day IN ('sunday', 'monday', 'tuesday', 'wednesday', 'thursday', 'friday', 'saturday')),
);

