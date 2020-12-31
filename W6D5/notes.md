# Rails Views

# Obj

- Explain what the views are responsible for in the MVC framework.
- Why do we need hidden input types?
- Explain what the views are responsible for in the MVC framework.

# Recap

REST is the connection between HTTP verb and a controller action.

# Views

- Views are the client facing portion of Rails.

- Views comprises the multiple types of responses from the controller.

- Web Page or `Template` Composition

- `yield` pulls anything we are trying to render in our controller.]

# Embedded Ruby (ERB)

- HTML templates augmented with Ruby Code
- Non-returning tags are: `<% Ruby code here %>` to execute Ruby code WITHOUT a return value.
- Returning tags: `<%= Ruby code here %>` executes Ruby code WITH a return value.

# Debugging

- Use byebug!

- `binding_of_caller` and `better_errors` gem

# _method

Looks at the method above and overwrite it with the value. `method="POST"` will be overwritten as `value="PATCH"`

# Partials

Partials are primarily used for refactoring / DRYing up HTML code.

# Things to Remember

- returning ERB tags vs non-returning

- instance variables are need ed to supply data to your views.

- no intance variables in partials!

- you can not `render` and `redirect_to` at the same time.

- `<%= render 'user', user: @user %>'`

- `<input type = "hidden", name="_method" value="patch">`

- partials are used to dry up our code

- `user_url(@url)` to invoke users#show

- `users#update` is the controller action to modify a user in the database.
