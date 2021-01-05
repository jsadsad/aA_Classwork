# Rails Auth Continued

- Rendering Errors through `flash`
- Protect against CSRF using form authenticity tokens

# Flash

Flash is similar to session in that is a hash-like object we can add key value pairs to, but is meant for temporary cookies to flash notices to the user.

`flash` persists to the next request that the user makes. We only want to use `flash` with a redirect.

`flash.now` only lasts through the current request/response cycle. This is used with `render`

Remember redirects moves to a new request.

`flash` includes everything in both `flash` AND `flash.now`

If a `CREATE` or a verb is successful, we can:

`flash.now[:errors] = @user.errors.full_messages`

We only want to use flash with a redirect.

# Cross Site Request Forgery (CSRF)

When a request is made to a website other than the one the user is currently on (hence cross-site)

Forces user to execute unwanted actions on this other site.

We get around this by enabling CSRF protection in Rails and adding `form_authenticity_token` to forms.

Rails enables CSRF protection by default.
- add `skip_before_action :verify_authenticity_token` to `application_controller.rb` to turn it off.


# Misc

1. Why don't we need to include `password` in the schema if it is one of our params?

- We never want to store our password in the database because of sensitive information. Passwords are reusable. Instead, we use our password digest which is salted and hashed with BCrypt.

2. What is the difference between encrypton and hashing?

- The basis of an an encryption means it can be decrypted. Hashing is one way. It can only be sent through our hashing function and be hashed. Hash can't be reversed.

3. Why is `session token` unique? Why indexed?

- The session token is how we differentiate and identify users. We might mix up requests if two users have the same session token. Remember HTTP is stateless - requests don't know anything about each other. We index to search users by their session token.

4. Does password_digest need to be unique? Should it be indexed?

- It does not need to be unique. They will have different salts. Their USERNAME will be unique. We don't search users by their passwords and COMPARE their password digests.

5. Why do we need to add allow_nil: true to password validation?

- After creating an account and logging back in, we grab User by their username. We're not saving that password. Password is nil. We put `allow_nil: true` to not run into errors because every time we run save or update, every single validation runs.

6. Why do we call self.save! in reset_session_token!? What would happen if we didn't?

- We we call `save` it returns boolean. `save!` stops executing the code and throws errors. It saves debugging and FAILS LOUDLY

7. Why do we reset the user's session token in the DB instead of setting it to nil on logout?

- If we are searching for `nil` or `null`, we would get multiple.

8. Why can't we call `@user.errors.full._messages` in the `SessionController#create`?

- In the else block, `@user` will be `nil`. We can't call errors on nil and that would be a Ruby error.

9. Why do we only have one session (single resource)?

We don't have a sessions table, so for a request we are dealing with at most 1 session at a time. We give the Browser a cookie. It only has one set of cookies. We are looking for a user in the 1 session - a SINGULAR session.
