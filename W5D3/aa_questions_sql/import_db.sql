DROP TABLE IF EXISTS cattoys; /*lets us run the file multiple times and start fresh
(create table from scratch) each time we run the file*/
DROP TABLE IF EXISTS cats; /*Drop all joins table first b/c they are referencing other tables. Can't dop the other tables 
if something is refrencing them*/ 

CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    fname TEXT NOT NULL,
    lname TEXT NOT NULL
);

CREATE TABLE questions (
  id SERIAL PRIMARY KEY,
  title TEXT NOT NULL,
  body TEXT,
  user_id INTEGER NOT NUL,
  FOREIGN KEY (user_id) references (users.id)
);

CREATE TABLE question_follows (
  FOREIGN KEY
);

CREATE TABLE replies (
  body TEXT NOT NULL,
);

-- INSERT INTO 
--     cats(name, color,breed) /*specifies the order we will be supplying values in below*/
-- VALUES ('Fred','Yellow','Tabby') /*,...; <- if you want to add more make sure you separte by commas and end list with semicolon*/

-- CREATE TABLE cattoys(
--     id SERIAL PRIMARY KEY,
--     cat_id INTEGER,
--     toy_id INTEGER,

--     FOREIGN KEY (cat_id) REFERENCES cats(id),
--     FOREIGN KEY (toy_id) REFERENCES toys(id)


-- cat import_db.sql | sqlite3 plays.db