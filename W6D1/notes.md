# What is metaprogramming?

The essence of programming is defining behaviour.
metaprogramming is d defining behavior that will define future behaviour.

Metaprogramming is often used to dynamically define a suite of similar methods based on undetermined future input to reduce duplicate code.

# examples

 `attr_reader`
 `attr_writer`
 `belongs_to`

# Send

`receiver.send(:method_name, *args)` sends a method call to a receiver without an explicit (dot operator) call. This bypasses private

`define_method(:method_name) {|arg| 'do this stuff'}` is a method that needs arguments. It creates instance methods for that class.

# Review

- class variables(@@) vs class instance variables.
  class variables  can be inherted.
- When in doubt, trace what self refers to.

# How would you define attr_reader

Creates a public instance method that returns the value of the instance var of the same name.
