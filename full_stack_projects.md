# Objective

- Pixel perfect clone - make it look good.
- Ruby on Rails backend, React / Redux frontend.
- This a major portfolio piece.

# Tips

- Recognize the limitations.
- Clean, polished, and functional is top priority.
- Do one feature at a time.

# Logistics - TAs to PMs

- Everyone is goign to be assigned one of the TAs as a project manager.
- Your PM will be like your supervisor for your fullstack.
Your PM will regularly review your progress and work and be there to offer guidance and answer questions for you.

# Requirements

1. Deployed to Heroku
2. allows new account creation, login, and guest/demo login.
3. Production README
4. 4 Features and Total of 7 MVPs
 - 3 are the same for everyone: Production README, deployed to Heroku, frontend and backend auth.
 - 4 MVPS are unique to each app and each represent a feature of the app.

# MVPS (Minimum Viable Product)

- The order you plan on implementing your features with detailed sub-points
- Include expectedx time to implement. Be generous with estimates.
- one feature must be a full CRUD cycle.
- 2 days for major features(post, comments, users, etc)
- 1 day for minor features (likes, follows, profiles, etc)
- include bonus(stretch) features that you will implement with enough time

# Schema

- tables
- name of columns and data types
- validations and indices
- standard vs joins table

# State Shape

We want a _normalized_ State. State shape is flat. State's keys are camelCased. All keys within the values in the state are accessible in the schema.

Joins tables get their own slice of state. Allows us to avoid relationship pointer issues.

- Top level keys of `entities`, `session`, `ui`, `errors`
