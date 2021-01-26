# React

React is a frontend libary for building / managing UI. As the user interfaces with the app, components _react_ and update if they need to.

_Changing what the user sees in a single page application_

Each component we create should be independent, reusable, and an isolate piece of UI.

# Why do we like React

- React abstracts away low-level DOM manipulation allowing developer to focus on how app should look and behave.
- `JSX` - easily incorporate JS into HTML (like `html.erb`)
- Virtual DOM - we don't need jQuery or vanilla JS. _We do want jQuery ajax function_

# JSX

- Syntax extension to JavaScript.
- Uses camelCase naming convention
- Uses {} to embed and interpolate JS expressions.

# NPM

World's largest software registry. _Node Packagae Manager_ is very similar to the gemfile in Ruby (`packagae.json`) as it holds dependencies.

# GitIgnore

- node_modules/
- bundle.js
- bundle.js.map

# Setting Up Your Project

1. `npm init -y` to create package.json. Change the name.
2. `npm install webpack@4.46.0` creates node_modules.
3. `npm install -D webpack-cli`
4. create a `webpack.config.js` in the root. Copy AA's webpack.
5. Change the entry.
6. Add one line to output - `path: path.resolve(__dirname)`
7. `npm install @babel/core @babel/preset-env @babel/preset-react babel-loader react react-dom`
8. Create a `frontend/entry.jsx`
9. `npx webpack`
10. create a .gitignore
11. add a `<script src="bundle.js">` inside `index.html`
12. `npx webpack --watch --mode=development`
13. add `"start": "webpack --watch --mode=development"` inside script inside packagage.json
14. `npm start`

# Babel

Changes JSX to plain old javascript as well as ES6 into older versions.

# Components

- Should be pure functions - deterministic. Same input => same input always.
- Accepts a single "props" object and returns a React element.
- Create via either clases or functions.
- must have a `render()`
- `super(props)` makes sure the value of this.props defined.
- Components will re-render when their state or props change.

# State and Props

- _Props_ refer to information that the component receives from a parent component.
- _State_ refers to information that the component itself manages.

# setState

This is asynchrounous. The first paramet is an object that will be merged into the new state. An optional callback to execute after the new State is set.

State is local and is initialized inside the constructor function of a class component.

Constructor is the _only_ time you say `this.state =`

# props

Passed to the component when it is created.

We have access to those props either by `this.props` or props(class vs functional)

_Do not_ tie parts of props to a component's state.

Component should never directly modify its props.
