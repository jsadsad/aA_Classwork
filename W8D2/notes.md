# What is a Server?

1. Computer interface somewhere
2. apps we build run on a server
3. web-server does the communication on behalf of the rails app. _Puma_

Puma runs on _one_ computer.

# Transmission Protocol Handshake (3 Steps)

1. Synchronize - Computer A sends Computer B message
2. Synchronize-Acknowledgement - Computer B sends message back to Computer A, acknowleding that it received it
3. Acknowledge - Computer A sends message back to Computer B, acknowleding that it received it

# HTTP

- HTTP/1.1 is most common version
- HTTP/2 is used by over 50% of the top 10 million websites

# curl

sends HTTP request from terminal

`curl -v https://wwww.google.com`

# Rack Middleware
Middleware - a piece of software that sits between two other pieces of software/process and facilitates some type of data transfer between the two.

- A "Rack app" is an object that responds to the `call` method.
  - can be a class or a proc
  - takes the environment hash as a paramater
  - returns a response

# Rack Environment(env)

Contains information about the HTTP request:
- HTTP request method
- URL information
- Server information
- 300 status level is a redirect.

# RAILS LITE LEARNING GOALS
- Deeply understand the fundamentals of Rails by way of building it.
- Understand general structure of a web application framework.
- Don't work on JS yet!
- Aspiring backend engineers, take notes!
