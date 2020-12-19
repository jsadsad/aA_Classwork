# Rails

A server side MVC web-application framework.

# Active Record - an ORM Framework (The M in MVC)

- Allows us to represent moddels and their data.

Represent associations between data.

- Validate models before they get persisted to the database.

- Perform database operations (CRUD) in OOP.

# Migrations

- Changes made to the database schema that allow it evolve over time. Incremental and reversible.

- Not just a Rails thing.

- Itself is a Ruby class. Rails allows you to use an easy Ruby domain-specific language to descrbe changes to your tables, rather than write raw SQL.

# Useful Gems to add in Development

- `gem 'annotate'`

- `gem 'better_errors'`

- `gem 'binding_of_caller'`

- `gem 'byebug'`

- `gem 'pry-rails'` # pry ENV in rails

# Starting a Project

1. bundle exec rails new

2. bundle exec rails db:create

3. bundle exec rails generate migration CreateUsers

# Primary Key

We don't define. It is given to use automatically.  The primary key will be indexed on its own.

# add_index

We want to index EVERY foreign key. We don't want to use a uniqueness constraint . Otherwise, each user can only write one chirp.

Define outside of `#change`.

Making columns like `username` into a big tree to searh easier. Index creates a binary search type datastructure for the column. Indexing speeds up lookup time. Only add to columns you will search by. If we have an index on it, we only search less because of a binary search.

Instead of 3 million operations, we just do 30 at worst.

We don't want to do it for everything because it is costly.

# Migrations

Provide full documentation of the project. We don't want to delete things from the past. We want to keep those previous records.

# Model

- The central component of the MVC pattern.

- It is a class that represents and directly manages the data, logic, and rules for a table.

  - typically contains validations, associations, and custom methods.
  - inherits from applicationrecord.
  - database constraints are the last line of defense for data-integrity.

- Model validations are best used to provide error messages to users interacting with your app.

- Writing constraints is work, but they will save you a lot of fixes in the long run.

- Don't require things in the model - don't `require_relative`.

- Use `bundle exec annotate --models`


# Common Valiidations

- `validates :some_column, presence: true`
  - similar to `null:false`

- `validates :other_column, uniqueness: true`
  similar to `unique:true`

- `#body_too_long` if body && body.length > 140. Error will be `errors[:body] << TOO LONG!`. Be sure to use this with `validate` since it is a custom validation.

- custom validations

- `.error_full_messages` only works with the `validates`

- If you fail the validation, ActiveRecord should stop things to the database. The constraint will not run.

# .save vs .save!

.save! is only for testing. Typically we only use .save.

# rails c vs pry

`rails c` has access to database while `pry` does not.

# belongs_to (class)

The primary key will always be the `:id`.

The foreign key will be the `(class)_id`. This is the column name.

`class_name: :User`

# has_many (class)

The `foreign_key` will be from the other class

The `class_name` will be a symbol or string.

# Strategy

1. Start with `belongs_to`

2. Write the corresponding `has_many` or `has_one` in other model.

3. Write `has_many` throughts using ONLY other associations in the model as the through.

# misc.

add -G so it does not automatically create a git init.

belongs_to automaticalyl validates for presence

we don't want a validates presence true for a foreign key.

`optional: true`

1. primary key always id
2. if youre looking at a model and that model has a foreign key, write a belongs_to association for that foreign key AND THEN the has_many for other key.
3. Belongs_to automatically validates the presence for the foreign key for you.
4. THROUGH and SOURCE have to take associations.
5. THROUGH ASSOCIATIONS must come below any association it uses.
