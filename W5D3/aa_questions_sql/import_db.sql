PRAGMA foreign_keys = ON;

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
  FOREIGN KEY (user_id) references users(id)
);

CREATE TABLE question_follows (
  id INTEGER PRIMARY KEY,
  user_id INTEGER NOT NULL,
  question_id INTEGER NOT NULL,

  FOREIGN KEY (user_id) REFERENCES users(id),
  FOREIGN KEY (question_id) REFERENCES questions(id)
);

CREATE TABLE replies (
  id INTEGER PRIMARY KEY,
  parent_id INTEGER NOT NULL,
  body TEXT NOT NULL,
  question_id INTEGER NOT NULL,
  user_id INTEGER NOT NULL,
  FOREIGN KEY (question_id) REFERENCES questions(id),
  FOREIGN KEY (user_id) REFERENCES users(id),
  FOREIGN KEY (parent_id) REFERENCES replies(id)
);

CREATE TABLE question_likes (
  id INTEGER PRIMARY KEY,
  user_id INTEGER NOT NULL,
  question_id INTEGER NOT NULL,

  FOREIGN KEY (user_id) REFERENCES users(id),
  FOREIGN KEY (question_id) REFERENCES questions(id)
);

INSERT INTO
  users(fname, lname)
VALUES ("John", "Doe"), ("Arthur", "Miller"); -- this is user 1


INSERT INTO
  questions(title, body, user_id)
VALUES ("help, I am lost!", "i don't understand the lecture", 1); -- this is question id 1

INSERT INTO
  questions(title, body, user_id)
VALUES ("chapter 3??", "what is going to be on the test :(", 2); -- this is question id 2

INSERT INTO
  question_follows(user_id, question_id)
VALUES (2, 1);

INSERT INTO
  question_follows(user_id, question_id)
VALUES (1, 2);

INSERT INTO
  question_likes(user_id, question_id) -- arthur miller likes "help, I am lost!"
VALUES (2, 1);


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