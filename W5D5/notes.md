# ActiveRecord::Relation

- Most queries don't return Ruby objects. Instead they return instances.

- They are allow but allow for chaining.

# ActiveRecord Finder Methods

- Method allows you tyo find one instance of things.

- Do not return relations, instead they return Ruby objeccts.

- examples include: `#find`, `#find_by` `#first`. These return model instances.

# Chaining ActiveRecord Queriees

- `#group` returns distinct records
- `#having` filters grouped records
- `#order` returns records
- `#offset`
- `#limit`

# Calculations / Aggregations

- `#count`
- `#sum`
- `#average`
- `#minimum`
- `#maximum`

# Examples

`User.where("age >= (?) AND age <= (?)", 10, 20)`

`User.where(age: 10..20)`

`User.where(username: instructors).order(:username)`

`Chirp.joins(:likers).where("users.political_affiliation = (?) ", "JavaScript").group(:id)`

`Chirp.left_outer_joins(:likes).where(likes: {liker_id: nil})` is the same as : `Chirp.joins(:likes).where(likes: {liker_id: nil})`

Find the LIKE count:

`Chirp.select(:id,:body,"COUNT (*) as num_likes").joins(:likes).group(:id)`

Find all the chirps with atleast three likes

`Chirp.joins(:likes).group(:id).having("num_likes >= 3").select(:body,:id,"COUNT(*) as num_likes")`

Find all the chirps created by someone that is 11 BUT also like by someone that is 11

`Chirp.joins(:likers,:author).where(users: {age: 11}).where(authors_chirps: {age: 11})`

# Using Select

Use `#select` to select column names you want returned in your result.

When using joins, you must include the joined table's column in select.

# Using Pluck

Must be at the end of the query. It does NOT return an ActiveRecord relation; it returns an array. It will end a query so you can not chain on. This is the only way to convert a relation to an array.

Pluck accepts column names as arguments. This triggers an immediate query. Other scores must be constructed earlier.

# Joins

Calls an ASSOCIATION. In our WHERE, we have to specify what table we want to filter. Users is the table and username is a column in the users table.

`Chirp.joins(:author).where(username: "charlos_gets_buckets")`

# Having

# N + 1 Queries

When you execute a query and then you try to run queries for each member of the collection.

`posts = user.posts.includes(:comments)
 res = {}
 posts.each do |post|
  res[post] = post.comments.length
 end
`

`#includes` takes our association names as parameters

Allows us to chain onto our queries and pre-fetch associations.

Generates a 2nd query to pre-fetch association data.

# Joins for N+1 queries

Creates a single query fetching all data into a single table

Ideally used when using aggregation on the associate data like `count`.

When you call joins, it will call out that table. Include pre fetches that information so we don't have to continually do it.

`def self.see_chirp_authors_n_plus_1
    #this is + 1
    chirps = Chirp.all

    chirps.each do |chirp| # this is our N
        p chirp.author.username
    end
end`

`def self.see_chirp_authors_optimized

    # chirps = Chirp.includes(:author).all
    chirps = Chirp.all.includes(:author) # all is lazy and includes is also lazy

    chirps.each do |chirp|
        p chirp.author.username
    end
end`

`def self.see_chirps_likes_n_plus_1
    chirps = Chirp.all

    chirps.each do |chirp|
        p chirp.likes.length
    end
end`

`def self.see_chirps_likes_optimized
    chirps = Chirp.select("chirps.*, COUNT(*) as num_likes").joins(:likes).group(:id)

    chirps.each do |chirp|
        p chirp.num_likes
    end
end`



# Misc.

Find user with id 2: `User.find(2)`

This is incorrect: `User.find_by('age<20')`

Array of all users with their name and polical affiliation: `User.pluck(:username, :political_affiliation)`

Chirp.joins(:authors, :likers).where(username).pluck(age) returns an array of nums

Chirp.joins(:authors, :likers).where(username).pluck(:body, "age") returns an array of arrays

ActiveRecords are lazy and will wait until we use them to fetch

`left_outer_joins` to  find `nil` values.
