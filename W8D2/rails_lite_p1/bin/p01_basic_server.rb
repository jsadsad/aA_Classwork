require 'rack'

# Rack is a middleware that sits between a web server and a web application framework to make writing frameworks and web servers that work with existing software easier. We can make a functional server with only a few lines of code from the Rack module.

# Rack::Server.start(
#   app: Proc.new do |env|
#     ['200', {'Content-Type' => 'text/html'}, ['hello world']]
#   end
# )

# This is using Rack to start a web server and telling it that the app we are going use is the Proc we are making. Since Proc objects respond to the call method this constitutes a totally valid, if simple Rack application!

app = Proc.new do |env|
  req = Rack::Request.new(env)
  res = Rack::Response.new
  res['Content-Type'] = 'text/html' # Setting the Content-Type header tells the browser what the server has given to it in response.
  res.write(req.path)
  res.finish
end

Rack::Server.start(
  app: app,
  Port: 3000 # You can specify whatever port you want here, but 3000 is a common choice.
)

# This is creating an app that we could give to Rack that would simply return the text "Hello world!" Notice here we are creating req and res objects to make our lives easier.

# class MyController
#   def execute(req, res)
#     if req.path == '/cats'
#       res.write('cats are the best!!!!!')
#     elsif req.path == '/dogs'
#       res.status = 302
#       res.location = '/cats'
#     else
#       res.write("mom's spaghetti")
#     end
#   end
# end
