# Rails and Routes

The Router takes in HTTP requests and decides where to _send_ them.

The Controllers take in HTTP requests and decides what to do with them and how to respond.

## What is a server?

It serves data back to the client. When you go to Google and search, it is a GET request.

## HTTP

- HyperText: HTML
- Transfer: Transfering the package
- Protocol: _http_ and _https_

HTTP is comprised of: Request Line(method, path, query string), headers(host like google.com), and body(_optional_ username = johndoe)

The methods are POST(create), GET(read), PATCH(update), DELETE(delete)

# REST

Principles of requesting information across the internet.

Parts of URL contain: Protocol, Domain, Resource PATH.

You match HTTP VERB with a PATH, to go to an ACTION in which we do something.

ex. `GET` + '/new' will NEW. This will create.

ex. `POST` + '/photos' will CREATE. This uploads.

- `GET /users` query all users
- `GET /users/1` query for user with ID 1
- `POST /users` creates a new user
- `PATCH /users/1` updates users with ID 1
- `DELETE /users/1` deletes users with ID 1.

Can `GET /users/:id` and `GET /users/:username` co-exist? Yes, but there will a conflict because it's tedious to see which on is which. `GET /users/:id` is more practical.

# Website vs Web Service (API)

- Website is meant for a human to interface with like read information that ins rendered.

- Web Service is meant for a machine to interface with. This needs data that can be used manipualated(JSON, XML, YAML, etc.)

# HTTP Response

- Components: Status(eg 200, 302, 404), Headers(HTML), Body.

- Common Response Codes

# Params

Hash-like Ruby Object which contains information about the HTTP request.

Three ways to pass params in an HTTP request as follows:

- Using _wildcards_ inside a route: `users/:id`
- Via a query string
- Inside a request body(information that a user puts in). This is usually inside a form. Avoid for `GET`.
