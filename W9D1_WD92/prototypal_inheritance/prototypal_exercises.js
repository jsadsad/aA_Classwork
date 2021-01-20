// Inheritance Exercises

Function.prototype.inherits = function(Base) {
    // Define a Surrogate class
    function Surrogate() {} // this is an empty function
    Surrogate.prototype = Base.prototype // Set the prototype of the Surrogate (Surrogate.prototype = SuperClass.prototype)
    this.prototype = new Surrogate() // Set Subclass.prototype = new Surrogate()
    this.prototype.constructor = this
}

// After you have written Function.prototype.inherits using the surrogate trick, refactor your solution using Object.create. Make sure to test that your updated solution works.

Function.prototype.otherInherits = function (Base) {
    this.prototype = Object.create(Base.prototype);
    this.prototype.constructor = this;
};

// Write a Function.prototype.inherits method that will do this for you. Do not use Object.create right now; you should deeply understand what the new keyword does and how the __proto__ chain is constructed. This will help you in the upcoming Asteroids project:

function MovingObject () {}

function Ship () {}
Ship.inherits(MovingObject);

function Asteroid () {}
Asteroid.inherits(MovingObject);

// How would you test Function.prototype.inherits? A few specs to consider:

MovingObject.prototype.move = function() {
    console.log(`I fly.`);
}

let ship = new Ship();
let astroid = new Asteroid();

ship.move();
astroid.move();

// You should be able to define methods/attributes on MovingObject that ship and asteroid instances can use.
// Defining a method on Asteroid's prototype should not mean that a ship can call it.
// Adding to Ship or Asteroid's prototypes should not change MovingObject's prototype.
// The Ship and Asteroid prototypes should not be instances of MovingObject.

// You'll be writing an inherits method again for Asteroids.