# Capybara

What is a Capybara? An animal.

It is _end-to-end feature testing_.

# Why do we Test?

- Make sure our code works
- We don't want to have false positives.
- Prevent regressions
- Easier collaboration
- Built in documentation.

# Basic Setup: Adding Testing Gems

- Add Rspec and other testing gems to Gemfile and run `bundle install`

`group :development, :test do
  gem 'rspec-rails'
  gem 'rails-controller-testing'
  gem 'capybara'
  gem 'shoulda-matchers' #makes simple syntax for model tests
  gem 'factory_bot_rails' #easily create test objects. We just have to create column once.
  gem 'faker' #generate random data for testing. Multiple instances
  gem 'launchy' #enable save_and_open_page - spec file wil pause, and pop up new page
end
  `

- Set up a test database, if necessary then `rails db:create` to create a development and test databases. then `rails db:test:load` to sync test DB after migrations
- Auto-Generate Test files: change the `config/application.rb` file

# Unit Testing: Models

- Small in scope. Tests only touch model code and can touch the database.

- Things to test: validations/error messages, associations, class AND instance methods(not private)

# Shoulda Matchers syntax

validations:

`it { should validate_presence_of(:usernaeme)}`
`it { should validate_presence_of(:password_digest)}`
`it { should validate_length of(:password).is_at_least(6)}`

associations:

`it {should have_many(:chirps)}`
`it {should belong_to(:user)}`

# Misc

1. How do we write a test for validating the presence of a username?

- `it { should validate_presence_of(:usernaeme)}`
- Also with an RSPEC unit test using an `it` block

2. Integration tests are Controllers. Unit testing are for Models. Features are End-to-End.

3. What is Regression?

- Breaking existing code by introducing a new feature.

4. #feature is to Rspec's #describe as  #scenario is to Rspec's #it.

5. The Capybara testing library lets us stage user input. It lets us test Views, Controllers, and Models
