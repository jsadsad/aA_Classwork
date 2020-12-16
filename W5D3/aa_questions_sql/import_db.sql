DROP TABLE IF EXISTS cattoys; /*lets us run the file multiple times and start fresh
(create table from scratch) each time we run the file*/
DROP TABLE IF EXISTS cats; /*Drop all joins table first b/c they are referencing other tables. Can't dop the other tables 
if something is refrencing them*/ 

CREATE TABLE users (
    id INTEGER PRIMARY KEY,
    fname TEXT NOT NULL,
    lname TEXT NOT NULL
);

CREATE TABLE questions (
  id INTEGER PRIMARY KEY,
  title TEXT NOT NULL,
  body TEXT,
  user_id INTEGER NOT NULL,
  FOREIGN KEY (user_id) references (users.id)
);

CREATE TABLE question_follows (
  id INTEGER PRIMARY KEY,
  user_id INTEGER NOT NULL,
  question_id INTEGER NOT NULL,

  FOREIGN KEY (user_id) REFERENCES (users.id)
  FOREIGN KEY (question_id) REFERENCES (questions.id)
);

CREATE TABLE replies (
  id INTEGER PRIMARY KEY,
  parent_id INTEGER NOT NULL,
  body TEXT NOT NULL,
  question_id INTEGER NOT NULL,
  user_id INTEGER NOT NULL,
  
  FOREIGN KEY (question_id) REFERENCES (questions.id)
  FOREIGN KEY (user_id) REFERENCES (users.id)
  FOREIGN KEY (parent_id) REFERENCES (replies.id)
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