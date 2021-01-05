# Objective

- Learning how user passwords are securely stored in a database using hashing + salting

- Securely store passwords in DB using BCrypt.

- Explain how we can keep users logged in across requests / page visits(session)

- Implement sign up, login, and log out functionality using `session` and `params`


# The Process

1. Web
2. Rails Router
3. Model
4. Database
5. Model
6. Controller
6. @Users

# Securely Storing Passwords in DB

The solution is hashing. It has 4 main principles.

- One-Way: Given an output, we can easily prodct the output but not vice versa.

- Deterministic: Same input produces same output every time.

- Sensitive:  Small changes to the input results in an entirely different hash. Changing the casing causes a difference.

- Uniform Distribution:  Reduces the amount of possible hash collisions. This is a pigeon hole-problem. If we're hashing everything in the world, two thigns will hash to the same value.

# Salting

- Adds randomess to common passwords by pairing them with a random string(i.e. the salt) and generating the hash from that.

- Makes it computationally unfeasible to brute force hashed password, or use a rainbow table, even for the most common passwords.

- Needs to store the salt along with the hash in the DB.

# BCrypt

- A One-Way hashing function
- Incorportates a salt to prevent hash/rainbow table attacks
- It is a slower relative to other hashing algorithms like MD5, SHA-1
- Not exculusive to Ruby
- Changes `password` to a `password_digest`

# Usage

1. Add a `password_digest`. It just needs `null: false`. No need to be unique.
2. Add `session_token`. Allows us to give the idea of a session. Tackles the stateless issue. This needs an index and need a uniquess constraint.
3. We need a `sessions` controller. _Only `NEW`, `CREATE`, `DESTROY` are required for this_.

# Session

`session` is a hash-like object. It is created by Rails for every single request that comes in.

It is created under the hood by ActionController::Base for every request taht comes in.

It sends cookies back down to the browser with each response. The client's browser sends back the cookie with each request.

Only avaialble in controllers and views.

We assign a session token to a user and store it into the database.

# Misc.

- `helper_method` allows for the methods to be utilzed inside the views.

- `!!` returns a truthy value into an actual true. If we `!!nil`, it turns it to false.

- we choose to `params[:user][:username]` and `params[:user][:password]`  because we know we only use those two columns.

- `params.require `is to be used for anything but sessions.

- _Hashing_ is one-way, deterministic, sensitive, and uniform

- A hash _can not_ be easily reverse engineered.

- A Rainbow table can deduce hashes of commonly used passwords.

- BCrpyt is better because it is slower and that is good.

- BCrpyt is not better to roll your own algorithm.

- `password_digest` just needs a not null constraint. Does not need unique because we care about the combination of username and password. Username already hassthe uniqueness.

- Cookies solves the problem of statelessness in HTTP.

- `session` is used in Rails to manage cookies that allows a user's logged in state to persist.

- `session_token` needs BOTH not null and unique constraints.

- `session_token` should be indexed. `password_digest` should not. We find user by their username and BCrypt to compare passwords.

- Users are stupid.

# Flex

SPIRE:

1. s - self.find_by_credentials
2. p - password=
3. i - is_password?
4. r - reset_session_token!
5. e - ensure_session_token
