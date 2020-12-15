# SQL

The way we communicate with our database.

For our purposes, there are two parts to storing and accessing data:

1. DataBase Management System
2.

# Relational DataBase Management System (RDBMS)

We will be using PostgresSQL (open source)

# What SQL do?

1. Create new databases
2. Create new table
3. Insert records.
4. update records.
5. delete records.
6. can retrieve data.

# Columns

Every column must have a data type specified.

# PostgresSQL Shell Commands

# Basics of SQL queries

- `SELECT`
- `FROM`
- `WHERE / WHERE NOT`
  - `=`, `>=`, `<=`, `>`, `<`, `<>/!=`
  - `IN`, `BETWEEN`, `LIKE`

# GROUP BY

Any columns we `SELECT` must be in our `GROUP BY`

Yo u can SELECT columns not in GROUP BY using agg functions.

# HAVING

Similar to `WHERE` Filters results used with `GROUP BY`

# WHERE vs HAVING

Since the `where` clause gets executed before the `group by` clause, grouped entries cannot be filtered by `where`.

`having` is the same as `where` clause but is applied on grouped entries.

aggregate functions are not allowed in`where`. You must use aggregate functions in `having`.

# Subqueries

Can also be used in the `from` statement.

You _MUST_ alias the subquery.

You have to name your subquery so you will be able to add further constraints.

# When do we join tables rather than using a subquery?

Often times, you can accomplish the same goal with 1 or another.

- When you have lots od data across many tables.
- Subqueries use less memory than joins.
- Subqueries use more CPU than joins.(CPU is usually the bottleneck)
- In practice, this can differ between SQL engines.

# joins

- combine data from multiple tables into one _relation_ using a `join`

- types of relationships:
  - one-to-many(hierarchical)
  - many-to-many(horizontal)

# join types

1. `inner join`: returns only rows from table1 and table2 that match each other. this is the default. everything will have a matching value meaning no _null_ values.

2. `left outer join (left join)`: returns all rows in table1, whether or not they match table2. not supported by all engines. allows null.

3. `full outer join`: returns all rows in table1 and table2, whether or not their data matches up. if theres any null values, we'll bring both tables together.

# primary and foreign keys

- the primary key is the id in a table
- a foreign key is reference to a primary key in another table.
- a table will only have one primary key, but may have many foreign keys.
- foreign keys are denoted by having an `_id` at the end.
- we use primary and foreign keys to join table.

# self joins

joins a table back against itself. you must alias the table names

MISC.

FROM-JOIN-WHERE-GROUP BY-HAVING-SELECT
SELECT and HAVING can use aggregate functions
