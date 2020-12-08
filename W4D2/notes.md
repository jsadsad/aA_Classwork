#Object-Oriented Programming

#Context
# The goal is control complexity. OOP gives a structured way to break down propblems.

#Purpose
1. Controlling Complexity
2. Places related code in the same place.
3. Limits inter-dependencies in code.
4. Reduces repeated code.

#Types
There is Procedural Programming.
- [] functions operating on data
- [] emphasis step-by-step instructions

#Classes vs Objects
A class is the blueprint for an object. An object is an instance of a class. In Ruby, objects are instantiated using ::new, which calls #initialize.

#UML (Unified Modeling Language)
Object Oriented Programmingh Visual map.

#Encapsulation
All the data and logic for an object to work should be _encapsulated_ in that object.

No one else should have access to these things : indirect access available through the defined interface, `public` and `private` keywords, `attr_reader`, `attr_writer`, `attr_accessor`.

#Abstraction vs Encapsulation
Complementary but not the same. Encapsulation - each class should be self contained. Abstraction: I shouldnt have to think about how a classis _implemented_ to use it.

#Private & Protected
Both methods say we're only going to use the methods within the class. Explicit receiver means it has something in front of the method call (`#{other.name}`).

`protected` allows an explicit receiver of the same class type (`#{other_person.name}`)

`private` does not allow an explicit reciever unless it has a attr_writer.

# Superclass
a class that is used as the basis for inheritance

#Subclass behavior
sub classes inherit all behavior from parent class. You can add methods to subclass without changing parent. Methods on subclass override parent.

#Super
`super` can invoke parent's overriden definition of a method.

With arguments passes the given values into the super class' version of the method.

Without arguemtns implicitly uses those passed into sub class' version of the method.

`super()` to invoke the parent method with no arguments. Pass nothing into the parent. Does not work

`super` is the same as `super(name,pos)`

#Mixins vs Inheritence
Inheritence is used for objects taht relate to each other by type - Toyota is a car.


Mixins are used to add functionaly to different kinds of things - A DRAGON (with wings) & BROOMSTICK are flyable.

#Include and Extend
`extend` makes methods class methods
`include`

#Inheritence Pitfalls
Inheritance creates implicit dependencies. Inherited methods and variables are not listed in the the subclass code.

#Null Object Pattern
Standin for a null value that maintains a required interface. Avoids NoMethodErrors. Ruby's `nil` itself is an example #everythingisanobject

#Singleton Pattern
Reuse references to a stateless object. It saves space.
