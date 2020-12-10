# Objectives

1. Why do we test?
We code the minimum amount to make sure the code works. It allows for easier collaboration.

2. What is TDD?
Software Engineering process. Test Driven Development. Red, Green, refactor.

3. What is the testing pyramid?
E2E, Integration, and Unit.

Unit test is the `initialize`, `to_s`.

Integration tests the classes working together. `Board` and `Piece` class.

End-to-End tests the _entire_ flow from start to finish. We only need less of it.

4. Be familiar with the RSpec library.

# Rspec
Is a Domain-Specific Language(DSL) written in Ruby for Ruby. It is a meta-gem that includes `rspec-core`, `rspec-expectations` and `rspec-mocks`. Rspec is not the only testing library.

# Describe
Describe is the most basic unit of information. It can be nested.

`describe Piece do

end`
`.to be` refers to object id. `.to eq` checks equality.

Any expect failure fails the whole spec. If expecting an error, remember to put in a `{}`.

# Context
Context sets up a scenario. It changes the way file is outputted in the terminal.

# Subject
One `subject` for every `describe`.

# Let
Let is just a way to declare a varible we can use anywhere in `describe`. Can have as many as we want.

# Double / Mock
A blank object which allows us to mimic another class which we plan on writing. Allows us to do unit test that might depend on another class.

# before(:all) and before(:each)
before(:each) will run the block before each test. Before lets us DRY up our code.

#.to be / .to eq
`.to eq` will compare the two strings to `==`

# etc

The amount of specs is equivalent to the amount of `it` blocks.

an `expect` statement must be nested within an `it` block

`expect {...}` to raise_errors.


https://www.betterspecs.org/
