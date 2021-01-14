# JavaScript

- The language of the internet

# Style & Syntax

- Explicit returns
- DECLARE your variables
- use semicolons
- `camelCase` instead of `snake_case`
- `==` and `===` (use the latter)
- No negative indexing
- 7 Falsey values

# The Falsy-7

- null
- undefined
- 0, -0
- NaN
- "
- false

# Variables

- Don't use `var`. Use `let` or `const`

- declaration means that the variable exists.

- `const` can be declared once.

- a Block is anything that starts with {}

# Scoping

- With each scope, const can be declared once.

- _Scope Chaining_ : checking once scope level for the variable that is being looked for.

- Outscope does not have access to inner scope const variables;; it will be undefined

- Const are non-reassignable. It is block scope

- Let is reassignable. It is block scope.

- Hoisting: all variables that are declared are _hoisted_ up to the top. `cannot access before declaration` is the Temporal Deadzone (TDD).

# Data Types

1. Primatives: can't mutate in memory.
  - Boolean
  - null
  - undefined
  - number
  - string
  - BigInt
  - Symbols

2. Objects
  - Essentially just a big hash-map
  - Can have functiosn as values(called methods)

# Functions

- _Constructor_: used to create objects similar to class definitions in Ruby. Instance methods are added to the prototype of an object.

- _Named_: variable assignment / anonymous function.

# this

- like Ruby's `self`
- never implicit
- value of this is a functions's Context or Receiver

# Implicit return

- => without {}
- can't play debuggers

# Callbacks

- functions that is passed as an argument to another function
- like a `proc`

# Closures

- An inner "function" that uses and/or changes variables in an outer function.

# Misc.

_POJO_: can have functions as values and can access attributes.]

_Scope_: avaailablity of variables while running.

_Context_: object within which the function runs

`[] + []` = nothing
`[] + {}` = object

- You can not use `=>` when defining a function on the prototype.
